package Aluno;

public class InformacoesAluno {

	public Models.AlunosModel InformacoesDoAluno(int matricula)
	{
		Models.AlunosModel alunosModel = new Models.AlunosModel();
		
		
		
		alunosModel.ListaDeExercicios = alunosModel.getListaDeExercicios();
		
		return alunosModel;
		
	}
	
}
