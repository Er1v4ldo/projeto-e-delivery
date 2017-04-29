<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Pessoa
 *
 * @author eri_v
 */
class Pessoa {
    PRIVATE $ID_PESSOA;
    PRIVATE $PERFIL;
    PRIVATE $EMAIL;
    PRIVATE $SENHA;
    PRIVATE $DATA_CADASTRO;
    PRIVATE $NOME;
    PRIVATE $SOBRENOME;
    PRIVATE $CPF;
    PRIVATE $SEXO;
    PRIVATE $DATA_NASCIMENTO;
    PRIVATE $CELULAR;
    PRIVATE $TELEFONE;
    PRIVATE $CONTATO;
    
    function __construct(PERFIL $PERFIL,$EMAIL, $SENHA, $DATA_CADASTRO, 
            $NOME, $SOBRENOME, $CPF, $SEXO, $DATA_NASCIMENTO, $CELULAR, $TELEFONE, $CONTATO) {
        $this->PERFIL = $PERFIL;
        $this->EMAIL = $EMAIL;
        $this->SENHA = $SENHA;
        $this->DATA_CADASTRO = $DATA_CADASTRO;
        $this->NOME = $NOME;
        $this->SOBRENOME = $SOBRENOME;
        $this->CPF = $CPF;
        $this->SEXO= $SEXO;
        $this->DATA_NASCIMENTO = $DATA_NASCIMENTO;
        $this->CELULAR = $CELULAR;
        $this->TELEFONE = $TELEFONE;
        $this->CONTATO = $CONTATO;
    }
    
    public function getId_pessoa() {
        $this->ID_PESSOA;
    }
}
