<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="funcionario" class="Classes.Funcionario"
	scope="session" />

<jsp:useBean id="atendente" class="Classes.Atendente" scope="session" />

<jsp:useBean id="sindico" class="Classes.Sindico" scope="session" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="css/style_login.css">
<c:import url="head.jsp" />
<title>Catraca</title>
</head>
<body>

	<!-- Barra superior com os menus de navegação -->
	<!-- Container Principal -->
	<%
		System.out.printf("Síndico: " + session.getAttribute("sindico") + " Atendente: "
				+ session.getAttribute("atendente") + " Funcionário: " + session.getAttribute("funcionario"));
	%>
	<div class="container">
		<div class="login-page">
			<div class="form">
				<h3 class="page-header">Informações do usuário logado
					#${sindico.id}</h3>
				<p>
					Nome: ${sindico.nome}<br> Tipo: ${sindico.tipo}<br> Cpf:
					${sindico.cpf}<br>
				</p>
				<center>
					<b>Ações disponíveis</b>
				</center>
				<ul class="nav navbar-nav navbar-left">
					<left> <b>Controle de Funcionários</b> <br>
					<a href="controller.do?command=TelaCadastrarFuncionario">Cadastrar
						Funcionário</a> <br>
					<a href="controller.do?command=TelaVerificarFuncionario">Verificar
						Funcionário</a> <br>
					<a href="controller.do?command=TelaAtualizarFuncionario">Atualizar
						Funcionário</a> <br>
					<a href="controller.do?command=TelaExcluirFuncionário">Excluir
						Funcionário</a> </left>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<right> <b>Controle de Atendentes</b> <br>
					<a href="controller.do?command=TelaCadastrarAtendente">Cadastrar
						Atendente</a> <br>
					<a href="controller.do?command=TelaVerificarAtendente">Verificar
						Atendente</a> <br>
					<a href="controller.do?command=TelaAtualizarAtendente">Atualizar
						Atendente</a> <br>
					<a href="controller.do?command=TelaExcluirAtendente">Excluir
						Atendente</a> <br>
					</right>
				</ul>
				
					<button href="controller.do?command=Logoff">Deslogar</button>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
</body>
</html>