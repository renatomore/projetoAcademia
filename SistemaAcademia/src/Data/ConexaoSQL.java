package Data;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConexaoSQL {

	public static String SqlConexao() {
		
	
		String url = "jdbc:sqlserver://localhost\\sqlexpress;databaseName=DB_PROJETO_ACADEMIA";
		String user = "sqlAcademia";
		String password = "sqlAcademia";
		
		String ConnectionUrl = "jdbc:sqlserver://localhost\\SQLEXPRESS;"
				+ "database=DB_PROJETO_ACADEMIA;"
				+ "user=sqlAcademia;"
				+ "password=sqlAcademia;";
		
		ResultSet resultSet = null;
		
		try(Connection connection = DriverManager.getConnection(url, user, password);
				Statement statement = connection.createStatement();)
		{
			/*String insertSql = "INSERT INTO DB_PROJETO_ACADEMIA.dbo.TB_EXERCICIOS (nm_exercicio) VALUES ('Agachamento de cu')";*/
			String selectSql = "SELECT cd_exercicio, nm_exercicio FROM DB_PROJETO_ACADEMIA.dbo.TB_EXERCICIOS";
			
			return selectSql;
		}
		catch(SQLException e)
		{
			return String.valueOf(e);
		}
		
	}
	
}
