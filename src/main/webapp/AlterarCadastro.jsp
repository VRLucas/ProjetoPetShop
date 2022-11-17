<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.CadastroControlle" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alterar Contato</title>
</head>
<body>

	<h1>Alterar Contato</h1>
	<form name="formAlterarContato" method="GET" action="alterarContato">
		<label>Código: <input type="text" name="codContato" value="<%=request.getParameter("codContato") %>"></label><p>
		<label>Nome do pet: <input type="text" name="Nomepet" value="<%=request.getParameter("nomePet") %>"></label><p>
		<label>raca: <input type="text" name="raca" value="<%=request.getParameter("raca") %>"></label><p>
		<label>Nome do Propretario: <input type="text" name="nomePropreatatio" value="<%=request.getParameter("nomePropretario") %>"></label><p>
		<label>Telefone: <input type="text" name="telefone" value="<%=request.getParameter("telefone") %>"></label><p>
		<label>Email: <input type="email" name="email" value="<%=request.getParameter("email") %>"></label><p>
		<input type="submit" value="Alterar">
	</form>
</body>
</html>