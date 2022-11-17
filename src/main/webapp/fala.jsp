<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Fala conosco</title>
</head>

<body id="fala">
    <div>
        <h1 class="cor">Fale Conosco</h1>
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
        

    </div><br>
    <div>
        <form id="formComentario">
            <label>
                Deixe Seu Comentario:<br>
                <textarea name="Comentario" cols="100" rows="10"></textarea>
            </label>
            <input type="submit" name="Enviar">
            <input type="reset" name="Limpar">
        </form>
    </div>
    <div>
        <h2>Contato</h2>
        <nav id="navFala">
            <ul id="falaUlLi">
                <li id="falaUlLi">Email:carlosloser@outlook.com</li>
                <li id="falaUlLi">Telefone:+55(61)33930320</li>
                <li id="falaUlLi">Whatsapp:+55(61)992425830</li>
            </ul>
        </nav>
    </div>

</body>

</html>