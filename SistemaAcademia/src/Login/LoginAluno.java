package Login;

public class LoginAluno {

	public String LogarAluno(String matricula)
	{
		if(ValidarMatricula(matricula) == true)
		{
			return "Usuário Logado!";
		}
		return "Matricula incorreta!";
	}
	
	public boolean ValidarMatricula(String matricula)
	{
		Models.AlunosModel alunosModel = new Models.AlunosModel();
		
		//ConexaoSql
		
		if(matricula == String.valueOf(alunosModel.Matricula))
		{
			return true;
		}
		return false;
	}
	
}
