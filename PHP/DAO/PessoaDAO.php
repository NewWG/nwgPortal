<?php


class PessoaDAO{
    
    public function __construct(){}
    
    public function salvarPessoaFisica($obj){
        
        include '../CONEXAO/conectaBanco.php';
        
        $str = 'INSERT INTO pessoa (email, senha, telefone, nome, cpf, rg) VALUES ('
                .'"' .$obj->getEmail().'",'
                .'"' . $obj->getSenha().'",'
                .'"' . $obj->getTelefone().'",'
                .'"' .$obj->getNome().'",'
                .'"' .$obj->getCpf().'",'
                .'"' .$obj->getRg().'")';
        
        $query = mysqli_query($conecta, $str);
        
        if($query){
            return true;
        }else{
            return false;
        }
    }
    
    public function salvarPessoaJuridica($obj){
        
        require '../CONEXAO/conectaBanco.php';
        
        $str = 'INSERT INTO pessoa (email, senha, telefone, razaoSocial, nomeFantasia, cnpj) VALUES ('
                .'"' .$obj->setEmail().'",'
                .'"' .$obj->setSenha().'",'
                .'"' .$obj->setTelefone().'",'
                .'"' .$obj->setRazaoSocial.'",'
                .'"' .$obj->setNomeFantasia.'",'
                .'"' .$obj->setCnpj.'")';
                
        $query = mysqli_query($conecta, $str);
        
        if($query){
            return true;
        }else{
            return false;
        }
                
        
    }
    
    public function efetuarLogin($email, $senha){
        
        $str = 'SELECT * FROM pessoa WHERE email = "$email" AND senha = "$senha"';
        
        $query = mysqli_query($conecta, $str);
        
        $x = mysqli_affected_rows($query);
        
        if($x > 0){
            return $query;
        }else{
            return false;
        }
        
        
    }
    
    
    
}