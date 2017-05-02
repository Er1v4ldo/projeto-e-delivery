<?php

require_once '../../controller/conexao.php';

function listaVendas($conexao) {
    $vendas = array();

    $resultado = mysqli_query($conexao, "SELECT
     PF2.NOME ,
     P.TITULO,
     V.DATA_VENDA ,
     V.QUANTIDADE_PRODUTO,
     V.TOTAL_COMPRA,
     PG.STATUS_PAGAMENTO
FROM VENDA V
     INNER JOIN PESSOA PF2
          ON (V.ID_PESSOA = PF2.ID_PESSOA)
     INNER JOIN PRODUTO P
          ON (V.ID_PRODUTO = P.ID_PRODUTO)
     INNER JOIN PAGAMENTO PG
          ON (V.ID_VENDA = PG.ID_PAGAMENTO)
WHERE V.ID_VENDA IN
    (SELECT V2.ID_VENDA
     FROM VENDA V2
          INNER JOIN PRODUTO P2
               ON (P2.ID_PRODUTO = V2.ID_PRODUTO)
          INNER JOIN LOJA L
               ON (L.ID_LOJA = P2.ID_LOJA)
          INNER JOIN PESSOA PS
               ON (PS.ID_PESSOA = L.ID_PESSOA)
     WHERE PS.ID_PESSOA = 5
    );");
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
