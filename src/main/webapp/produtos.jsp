<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Produtos</title>
</head>
<body id="produtos">
    <div>
        <h1 class="cor">Produtos</h1>
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
    </div><br>
        

       
        <div>
            <img src="./img/casinha.png" alt="Casinha de Cachorro">
            
            <nav id="produtoNav" >
                <ul id="produtoNavUlLi">
                    <li id="produtoNavUlLi">Casinha de Cachorro</li>
                    <li id="produtoNavUlLi">Valor:R$ 900,00</li>
                    <li id="li"><a href="./carrinho.jsp">Comprar</a></li>
                </ul>

            </nav>
            
        </div>
        <div>
            <img src="./img/ossinho.png" alt="Osso de Brinquedo">
            <nav id="produtoNav">
                <ul id="produtoNavUlLi">
                    <li id="produtoNavUlLi">Osso de borracha</li>
                    <li id="produtoNavUlLi">Valor:R$ 30,00</li>
                    <li id="li"><a href="./carrinho.jsp">Comprar</a></li>
                </ul>
                <br><hr>

            </nav>

        </div>
            <img src="./img/poteDeRacao.png" alt="Pote de Ração">
            <nav id="produtoNav">
                <ul id="produtoNavUlLi">
                    <li id="produtoNavUlLi">Pote de Ração</li>
                    <li id="produtoNavUlLi">Valor:R$ 20,00</li>
                    <li id="li"><a href="./carrinho.jsp">Comprar</a></li>
                </ul>

            </nav>
            
       
       
    </div>
    
</body>
</html>