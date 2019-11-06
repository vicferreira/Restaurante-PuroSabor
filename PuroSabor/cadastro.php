
<meta charset="utf-8" >
<?php 
 
$CPF = $_POST['CPF'];
$Nome = $_POST['Nome'];
$Mesa = $_POST['Mesa'];
$senha = MD5($_POST['senha']);
$cone=mysqli_connect("localhost","root","","loginn")or die("Impossivel se conectar ao MySQL");
$query_select="SELECT CPF FROM usuarios WHERE CPF,Mesa = '$CPF'";
$select=mysqli_query($cone,$query_select);
$array=mysqli_fetch_array($select);
$logarray=$array['CPF'];
$logarray=$array['Mesa'];
 
  if($CPF == "" || $CPF == null){
    echo"<script language='javascript' type='text/javascript'>
    alert('O campo CPF deve ser preenchido');window.location.href='cadastro.html';</script>";
  }
  if($Mesa == "" || $Mesa == null){
    echo"<script language='javascript' type='text/javascript'>
    alert('O campo Mesa deve ser preenchido');window.location.href='cadastro.html';</script>";
  }
  if($Nome == "" || $Nome == null){
      echo"<script language='javascript' type='text/javascript'>
      alert('O campo Nome deve ser preenchido');window.location.href='cadastro.html';</script>";
 
    }
      else{
      if($logarray == $CPF){
 
        echo"<script language='javascript' type='text/javascript'>
        alert('Esse CPF já existe');window.location.href='cadastro.html';</script>";
        die();
      
       }else{
          if($logarray == $Mesa){
     
            echo"<script language='javascript' type='text/javascript'>
            alert('Essa Mesa já está ocupada por outro cliente');window.location.href='cadastro.html';</script>";
            die();
 
      }else{
        $query = "INSERT INTO usuarios (Nome,CPF,senha,Mesa) VALUES ('$Nome','$CPF','$senha','$Mesa')";
        $insert = mysqli_query($cone,$query);
         
        if($insert){
          echo"<script language='javascript' type='text/javascript'>
          alert('Cliente cadastrado com sucesso!');window.location.href='index.html'</script>";
          
         }else{
          echo"<script language='javascript' type='text/javascript'>
          alert('Não foi possível cadastrar esse cliente');window.location.href='cadastro.html'</script>";
          }
        }
        }
      }
?>
