package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Cadastro {
	private Integer codCadastro;
	private String nomePropretario;
	private String nomePet;
	private String raca;
	private String telefone;
	private String email;

	Connection conexao;
	PreparedStatement ps;
	ResultSet rs;

	public Cadastro() {

	}

	public Cadastro(Integer codCadastro, String nomePropretario, String nomePet, String raca, String telefone,
			String email) {
		super();
		this.codCadastro = codCadastro;
		this.nomePropretario = nomePropretario;
		this.nomePet = nomePet;
		this.raca = raca;
		this.telefone = telefone;
		this.email = email;
	}

	public Integer getCodCadastro() {
		return codCadastro;
	}

	public void setCodCadastro(Integer codCadastro) {
		this.codCadastro = codCadastro;
	}

	public String getNomePropretario() {
		return nomePropretario;
	}

	public void setNomePropretario(String nomePropretario) {
		this.nomePropretario = nomePropretario;
	}

	public String getNomePet() {
		return nomePet;
	}

	public void setNomePet(String nomePet) {
		this.nomePet = nomePet;
	}

	public String getRaca() {
		return raca;
	}

	public void setRaca(String raca) {
		this.raca = raca;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void cadastroPet() {
		String sql = "INSERT INTO cadastro (nomePet,raca,nomePropretario,email,telefone)" + "VALUES (?,?,?,?,?)";
		
		conexao = new DAO().conectar();
		
		try {
			ps = conexao.prepareStatement(sql);
			ps.setString(1, this.getNomePet());
			ps.setString(2,this.getRaca());
			ps.setString(3, this.getNomePropretario());
			ps.setString(4, this.getEmail());
			ps.setString(5,this.getTelefone());
			ps.execute();
			ps.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	public ArrayList<Cadastro> exibirCadastro() {
		ArrayList<Cadastro> lista = new ArrayList<>();
		String sql = "SELECT * FROM cadastro";
		conexao = new DAO().conectar();
		try {
			ps = conexao.prepareStatement(sql);
			rs = ps.executeQuery(sql);
			
			while(rs.next()) {
				Cadastro cadastro = new Cadastro();
				cadastro.setCodCadastro(rs.getInt("codCadastro"));
				cadastro.setNomePet(rs.getString("nomePet"));
				cadastro.setRaca(rs.getString("raca"));
				cadastro.setNomePropretario(rs.getString("nomePropretatio"));
				cadastro.setEmail(rs.getString("email"));
				cadastro.setTelefone(rs.getString("telefone"));
				
				
				lista.add(cadastro);
			}
		} catch (Exception e) {
			
		}
		
		return lista;
	}
	public void excluirCadastro() {
		String sql = "DELETE FROM cadastro WHERE codCadastro = ?";
		conexao = new DAO().conectar();
		
		try {
			ps = conexao.prepareStatement(sql);
			ps.setInt(1, this.getCodCadastro());
			ps.execute();
			ps.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	public void AlterarCadastro() {
		String sql = "UPDATE  cadastro SET nomePet=?,raca=?,nomePropretario=?,email=?,telefone=? WHERE codCadastro = ? " + this.getCodCadastro();
		
		conexao = new DAO().conectar();
		
		try {
			ps = conexao.prepareStatement(sql);
			//ps.setInt(1,this.getCodCadastro());
			ps.setString(2, this.getNomePet());
			ps.setString(3,this.getRaca());
			ps.setString(4, this.getNomePropretario());
			ps.setString(4, this.getEmail());
			ps.setString(6,this.getTelefone());
			ps.execute();
			ps.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	

}
