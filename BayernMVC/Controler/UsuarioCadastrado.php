<?php
    include ('protected.php');

    if(isset($_POST) && !empty($_POST)){

        if(empty($_POST["nome"])){
            header('Location: ../View/HTML/erro.html'); 
            /*?>
            
            <div>
                <span>O campo nome não pode estar vazio!!!</span>
            </div>
            
            <?php*/
        }else if(empty($_POST["idade"])){
            header('Location: ../View/HTML/erro.html');
            /*?>
            
            <div>
                <span>O campo idade não pode estar vazio!!!</span>
            </div>
            
            <?php*/
        }else if(empty($_POST["funcao"])){
            header('Location: ../View/HTML/erro.html');
            /*?>
            
            <div>
                <span>O campo de função não pode estar vazio!!!</span>
            </div>
            
            <?php*/
        }else if(empty($_POST["cpf"])){
            header('Location: ../View/HTML/erro.html');
            /*?>
            
            <div>
                <span>O campo cpf não pode estar vazio!!!</span>
            </div>
            
            <?php*/
        }

        include "conexao.php";
        include "classe.php";

        $funcionario = new Funcionario();

        $funcionario->Nome = $_POST["nome"];
        $funcionario->Idade = $_POST["idade"];
        $funcionario->Funcao = $_POST["funcao"];
        $funcionario->Cpf = $_POST["cpf"];
        $funcionario->Pais = $_POST["pais"];
        $funcionario->Contrato = $_POST["contrato"];

        $nome = $funcionario->Nome;
        $idade = $funcionario->Idade;
        $funcao = $funcionario->Funcao;
        $cpf = $funcionario->Cpf;
        $pais = $funcionario->Pais;
        $contrato = $funcionario->Contrato;

        $query = "insert into cadastro_bayern(nome,idade,funcao,cpf,pais,contrato) values('$nome',$idade,'$funcao','$cpf','$pais','$contrato')";

        $result = mysqli_query($conm, $query);

        if($result == 1){
            include '../View/HTML/UsuarioCadastrado.html';
        }
    }
?>