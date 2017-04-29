<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Venda
 *
 * @author eri_v
 */
class Venda {
    private $ID_VENDA;
    private $PRODUTO;
    private $PESSOA;
    private $DATA_VENDA;
    private $DATA_ENTREGA;
    private $QUANTIDADE_PRODUTO;
    private $TOTAL_COMPRA;
    
    function __construct(Produto $PRODUTO, Pessoa $PESSOA, $DATA_VENDA, $DATA_ENTREGA, 
            $QUANTIDADE_PRODUTO, $TOTAL_COMPRA) {
        $this->PRODUTO = $PRODUTO;
        $this->PESSOA = $PESSOA;
        $this->DATA_VENDA = $DATA_VENDA;
        $this->DATA_ENTREGA = $DATA_ENTREGA;
        $this->QUANTIDADE_PRODUTO = $QUANTIDADE_PRODUTO;
        $this->TOTAL_COMPRA = $TOTAL_COMPRA;
    }

        public function listarVendas() {
        
    }
}
