package Data;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConexaoSQL {

	public static String SqlConexao() {
		
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
			/*String insertSql = "INSERT INTO DB_PROJETO_ACADEMIA.dbo.TB_EXERCICIOS (cd_exercicio, nm_exercicio)"
					+ " VALUES (1, 'Levantamento de piroca');";*/
			String selectSql = "SELECT cd_exercicio, nm_exercicio FROM DB_PROJETO_ACADEMIA.dbo.TB_EXERCICIOS";
			
			return selectSql;
		}
		catch(SQLException e)
		{
			return String.valueOf(e);
		}
		
	}
	
}
