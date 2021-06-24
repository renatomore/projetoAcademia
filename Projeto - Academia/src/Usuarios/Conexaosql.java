package Usuarios;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexaosql {

	public static void SqlConexao () {
		
		String ConnectionUrl = "jdbc:sqlserver://localhost/SQLEXPRESS;"
				+ "database=DB_PROJETO_ACADEMIA;"
				+ "user=sqlAcademia;"
				+ "password=sqlAcademia;"
				+ "encrypt=true;"
				+ "trustServerCertificate=false;"
				+ "loginTimeout=30;";
		
		ResultSet resultSet = null;
		
		try(Connection connection = DriverManager.getConnection(ConnectionUrl);
				Statement statement = connection.createStatement();)
		{
			String selectSql = "INSERT INTO DB_PROJETO_ACADEMIA.dbo.TB_EXERCICIOS "
					+ "(cd_exercicio, nm_exercicio) VALUES (2, 'Agachamento com o cool');";
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
	}
	
}
