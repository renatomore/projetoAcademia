package Main;

public class MainClass
{
	public static void main(String[] args)
	{
		String sqlTeste = Data.ConexaoSQL.SqlConexao();
		
		System.out.print(sqlTeste);
				
	}
}
