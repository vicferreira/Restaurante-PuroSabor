
<meta charset="utf-8" >
<?php 
$CPF = $_POST['CPF'];
$entrar = $_POST['entrar'];
$senha = md5($_POST['senha']);
$cone=mysqli_connect("localhost","root","","loginn")or die("Impossivel se conectar ao MySQL");
  if (isset($entrar)) {
           
    $executa="SELECT * FROM usuarios WHERE CPF = '$CPF' AND senha = '$senha'" or die("erro ao selecionar");
    $verifica=mysqli_query($cone,$executa);
      if (mysqli_num_rows($verifica)<=0){
        echo"<script language='javascript' type='text/javascript'>
        alert('CPF e/ou senha incorretos ou não existente');window.location.href='index.html';</script>";
        die();
      }else{
        setcookie("login",$login);
        session_start();
        header("Location:restaurante.html");

      }
  }
?>