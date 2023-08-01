<?php
    include('conexaoLogin.php');
    include ('../View/HTML/entrarBayern.html');

    if(isset($_POST['email']) || isset($_POST['senha'])){
        
        if(strlen($_POST['email']) == 0){
            ?>
            <html>
            <script>
                alert('Preencha seu e-mail!');
            </script>
            </html>
            <?php
        } else if(strlen($_POST['senha']) == 0){
            //echo "Preencha sua senha!";
            ?>
            <html>
            <script>
                alert('Preencha sua senha!');
            </script>
            </html>
            <?php
        } else{

            $email = $mysqli->real_escape_string($_POST['email']);
            $senha = $mysqli->real_escape_string($_POST['senha']);

            $sql_code = "SELECT * FROM users WHERE email = '$email' AND senha = '$senha'";
            $sql_query = $mysqli->query($sql_code) or die("Falha na execução do código SQL: " . $mysqli->error);

            $quantidade = $sql_query->num_rows;

            if($quantidade == 1){

                $usuario = $sql_query->fetch_assoc();

                if(!isset($_SESSION)){
                    session_start();
                }

                $_SESSION['id'] = $usuario['id'];
                $_SESSION['nome'] = $usuario['nome'];

                header("Location: escolherBayern.php");

            } else{
                //echo "Falha ao logar! E-mail ou senha incorreta";
                ?>
                <html>
                <script>
                    alert('Falha ao logar! E-mail ou senha incorreta');
                </script>
                </html>
                <?php
            }
        }
    }
?>