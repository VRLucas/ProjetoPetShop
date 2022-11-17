function confirmar(codCadastro, cadastro){
	let resposta = confirm("Tem certeza que deseja excluir o Contato " + cadastro + "?");
	if(resposta){
		window.location.href="delete?codCadastro=" + codCadastro;
	}
}