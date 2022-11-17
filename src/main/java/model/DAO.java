package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/petshop?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "123456";
	
	public Connection conectar() {
		Connection conexao  = null;
		
		try {
			Class.forName(driver);
			conexao = DriverManager.getConnection(url, user, password);
			return conexao;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	public void testarConexao() {
		try {
			Connection conexao = conectar();
			System.out.println(conexao);
			conexao.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
}

