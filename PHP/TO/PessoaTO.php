<?php

class PessoaTO {

    protected $email;
    protected $senha;
    protected $telefone;
    protected $tipoUsuario;

    function __construct($email, $senha, $telefone, $tipoUsuario) {
        $this->setEmail($email);
        $this->setSenha($senha);
        $this->setTelefone($telefone);
        $this->setTipoUsuario($tipoUsuario);
    }

        function getEmail() {
        return $this->email;
    }

    function getSenha() {
        return $this->senha;
    }

    function getTelefone() {
        return $this->telefone;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setSenha($senha) {
        $this->senha = $senha;
    }

    function setTelefone($telefone) {
        $this->telefone = $telefone;
    }

    function getTipoUsuario() {
        return $this->tipoUsuario;
    }

    function setTipoUsuario($tipoUsuario) {
        $this->tipoUsuario = $tipoUsuario;
    }

}

class PessoaFisicaTO extends PessoaTO {

    
    private $nome;
    private $cpf;
    private $rg;

    function __construct($email, $senha, $telefone, $nome, $cpf, $rg) {
        $this->setNome($nome);
        $this->setCpf($cpf);
        $this->setRg($rg);
        }

        function getNome() {
        return $this->nome;
    }

    function getCpf() {
        return $this->cpf;
    }

    function getRg() {
        return $this->rg;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setCpf($cpf) {
        $this->cpf = $cpf;
    }

    function setRg($rg) {
        $this->rg = $rg;
    }

}

class PessoaJuridicaTO extends PessoaTO {

    private $razaoSocial;
    private $nomeFantasia;
    private $cnpj;

    function __construct($razaoSocial, $nomeFantasia, $cnpj, $email, $senha, $telefone) {
        $this->setRazaoSocial($razaoSocial);
        $this->setNomeFantasia($nomeFantasia);
        $this->setCnpj($cnpj);
        
    }

        function getRazaoSocial() {
        return $this->razaoSocial;
    }

    function getNomeFantasia() {
        return $this->nomeFantasia;
    }

    function getCnpj() {
        return $this->cnpj;
    }

    function setRazaoSocial($razaoSocial) {
        $this->razaoSocial = $razaoSocial;
    }

    function setNomeFantasia($nomeFantasia) {
        $this->nomeFantasia = $nomeFantasia;
    }

    function setCnpj($cnpj) {
        $this->cnpj = $cnpj;
    }

}
