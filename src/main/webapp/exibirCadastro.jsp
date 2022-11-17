<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@  page import="model.Cadastro"%>
   <%@ page import="java.util.ArrayList" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./style.css">
<title>Cadastro</title>
</head>
<body>
	<h1>Cadastros</h1>
	<% 
		try{
			Cadastro cadastro = new Cadastro();
			ArrayList<Cadastro> lista = cadastro.exibirCadastro();
		}catch (Exception e) {
			System.out.println(e);
		}
	%>
	
	
	
	<nav id="menuNav">
			<ul id="navUlLi">
				<li id="navUlLi"><a href="./index.jsp">Página Pricinpal</a></li>
				<li id="navUlLi"><a href="./cadastro.jsp">Cadastro</a></li>
				<li id="navUlLi"><a href="./servico.jsp">Serviço</a></li>
				<li id="navUlLi"><a href="./produtos.jsp">Produtos</a></li>
				<li id="navUlLi"><a href="./fala.jsp">Fale conosco</a></li>
				<li id="navUlLi"><a href="./exibirCadastro.jsp">Login</a></li>

			</ul>
		</nav>
	
	
	<p></p>
	<table id= "tabela">
		<tr>
			<td id="tabela">Código Cadastro</td>
			<td id="tabela">Nome do Pet</td>
			<td id="tabela">Raça</td>
			<td id="tabela">Nome Propretario</td>
			<td id="tabela">Email</td>
			<td id="tabela">Telefone</td>
			<td>
			<td>
		</tr>
			<% 
				try{
					Cadastro cadastro = new Cadastro();
					ArrayList<Cadastro> lista = cadastro.exibirCadastro();
					
					for(int i = 0; i < lista.size(); i++){
			%>
				<tr>
					<td id="tabela"><%=lista.get(i).getCodCadastro() %></td>
					<td id="tabela"><%=lista.get(i).getNomePet() %></td>
					<td id="tabela"><%=lista.get(i).getRaca() %></td>
					<td id="tabela"><%=lista.get(i).getNomePropretario()%></td>
					<td id="tabela"><%=lista.get(i).getEmail()%></td>
					<td id="tabela"><%=lista.get(i).getTelefone()%></td>
					<td id="tabela"><a href="./AlterarCadastro.jsp?codCadastro=<%=lista.get(i).getCodCadastro()%>&nomedoPet=<%=lista.get(i).getNomePet()%>&raca=<%=lista.get(i).getRaca()%>
					&nomePropretario=<%=lista.get(i).getNomePropretario()%>&email=<%=lista.get(i).getEmail()%>&telefone=<%=lista.get(i).getTelefone()%>">Alterar</a></td>
					<td id="tabela">
					<a href="javascript: confirmar(<%=lista.get(i).getCodCadastro() %>,
						'<%=lista.get(i).getCodCadastro() %>')">Excluir Contato</a>
					</td>
				</tr>
			<%
					}
				}catch (Exception e) {
					System.out.println(e);
				}
			%>
	</table>
<script src="js/confirmar.js"></script>
</body>
</html>