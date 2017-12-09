<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style_login.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Funcionario - Logado como: ${sindico.nome} </title>
</head>
<body>
	<div class="login-page">
		<div class="form">
			<form class="login-form" action="controller.do?command=CadastrarFuncionario" method="post">
				<input type="text" name="nome" required placeholder="Nome" maxlength=45 />  
				<input type="text" name="cpf" required placeholder="CPF" onBlur="is_cpf(this.value)" onKeyPress="mascara(this,mcpf)" maxlength=14 />
				<input type="text" name="horEntrada" required placeholder="Horário de Entrada" maxlength=5 />
				<input type="text" name="horSaida" required placeholder="Horário de Saída" maxlength=5 />
				<input type="submit">
			</form>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/formata.js"></script>
<script type="text/javascript" src="js.verificarCpf.js"></script>
</html>