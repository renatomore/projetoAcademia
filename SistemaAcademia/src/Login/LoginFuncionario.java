package Login;


public class LoginFuncionario {
	
	public String LogarFuncionario(String rga)
	{
		
		if(ValidaRga(rga) == true)
		{
			return "Usu�rio Logado!";
		}
		return "Rga n�o cadastrado!";
		
	}
	
	public boolean ValidaRga(String rga)
	{
		Models.FuncionarioModel funcionarioModel = new Models.FuncionarioModel();
		//Abrir conexao
		if(rga == String.valueOf(funcionarioModel.Rga))
		{
			return true;			
		}
		
		return false;
	}
	
}
