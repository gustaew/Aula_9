<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="funcionario" class="Classes.Funcionario" scope="session"/>

<jsp:useBean id="atendente" class="Classes.Atendente" scope="session"/>

<jsp:useBean id="sindico" class="Classes.Sindico" scope="session"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Nome: ${funcionario.nome}<br>
			Tipo: ${funcionario.tipo}<br>
			Cpf:  ${funcionario.cpf}<br>
			Data de Cadastro: ${funcionario.data} <br>
			Data de entrada: ${funcionario.horarioEntrada} <br>
			Data de saída: ${funcionario.horarioSaida} <br>
			<form action="controller.do?command=VoltarMenuSindico" method="post">
			<input type="submit" value="Voltar"></form>
</body>
</html>