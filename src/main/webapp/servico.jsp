<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Serviço</title>
</head>

<body id="servico">
    <div>
        <h1 class="cor">Serviço</h1>
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
       


        
        <h2> Tabela de Serviço</h2>
        <table id="table">
            <tbody id="tbody">
                <tr id="tbody">
                    <td id="tbody">Banho e tosa</td>
                    <td id="tbody">R$ 300,00</td>
                    <td id="tbody">9:00 pm a 18:00 pm</td>
                </tr>
                <tr id="tbody">
                    <td id="tbody">Clina veterinária</td>
                    <td id="tbody">R$ 900,00</td>
                    <td id="tbody">8:00 pm a 22:00 pm</td>
                </tr>
                <tr id="tbody">
                    <td id="tbody">Hotel para o Pet</td>
                    <td id="tbody">R$ 850,00</td>
                    <td id="tbody">12:00 pm a 21:00 pm</td>
                </tr>

            </tbody>
            <thead id="thead">
                <tr id="thead">
                    <td id="thead">Serviço</td>
                    <td id="thead">Preço</td>
                    <td id="thead">Horarios Disponiveis</td>
                </tr>
            </thead>

        </table>

    </div>
    <div>
        <img src="./img/banho.png" alt="">
        <img src="./img/Veterinaria.png" alt="">
        <img src="./img/hotel.png" alt="">

        </div>

</body>

</html>