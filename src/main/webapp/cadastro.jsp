<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Cadastro</title>
</head>

<body id="cadastro">
    <div>

        <h1 class="cor">Formulario de Cadastro do pet</h1>
        <div>
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

        </div>


        <br>
        <br>
        <form id="form" name="formCadastro" action="addCadastro" method="GET">
            <label>Nome do pet: <input id="input" type="text" name="namePet"></label>
            <p></p>
            <label>Raça: <input  id="input" type="text" name="raca"></label>
            <p></p>
            <label>Nome do Propretario: <input id="input" type="text" name="namePropretario"></label>
            <p></p>
            <label>Email: <input id="input" type="email" name="email"></label>
            <p></p>
            <label>Telefone: <input  id="input" type="text" name="Telefone"></label>
            <p></p>
            <input id="input" type="submit" name="Cadastrar">
            


        </form>
    </div>

</body>

</html>