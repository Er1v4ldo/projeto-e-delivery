<?php

require_once '../../controller/conexao.php';

function listaVendas($conexao) {
    $vendas = array();

    $resultado = mysqli_query($conexao, "select 
                                pf2.NOME , 
                                p.TITULO,
                                v.DATA_VENDA ,
                                v.QUANTIDADE_PRODUTO,
                                v.TOTAL_COMPRA
                                from venda v
                                inner join pessoa pf2
                                        on	(v.id_pessoa = pf2.ID_PESSOA)
                                inner join produto p
                                        on (v.ID_PRODUTO = p.ID_PRODUTO)
                                where v.ID_VENDA in
                                        (select v2.ID_VENDA 
                                                from venda v2
                                                        inner join produto p2
                                                                on (p2.ID_PRODUTO = v2.ID_PRODUTO)
                                                        inner join loja l
                                                                on (l.ID_LOJA = p2.ID_LOJA)
                                                        inner join pessoa ps
                                                                on (ps.ID_PESSOA = l.ID_PESSOA)
                                                where ps.ID_PESSOA = 5);");
    while($produto_array = mysqli_fetch_assoc($resultado)) {
		
//		$vendas['NOME'] =$produto_array['NOME'];
//		$vendas['TITULO'] = $produto_array['TITULO'];
//		$vendas['DATA_VENDA'] = $produto_array['DATA_VENDA'];
//		$vendas['QUANTIDADE_PRODUTO'] = $produto_array['QUANTIDADE_PRODUTO'];
//		$vendas['TOTAL_COMPRA'] = $produto_array['TOTAL_COMPRA'];
                array_push($vendas, $produto_array);
	}

	return $vendas;
}
