<?php
    session_start();
    echo"<script language='javascript' type='text/javascript'>
    alert('Você fez logout com sucesso!');</script";
    session_destroy();
    header("Location:index.html");
?>