package Models;

import java.util.List;

import Aluno.ListarExercicios;

public class AlunosModel extends PessoasModel {

	public int Matricula;
	
	public int getMatricula() {
		return Matricula;
	}
	
	public void setMatricula(int matricula) {
		this.Matricula = matricula;
	}
		
	public int Ativo;

	public int getAtivo() {
		return Ativo;
	}
	
	public void setAtivo(int ativo) {
		this.Ativo = ativo;
	}
	
	public List<ExerciciosAlunosModel> ListaDeExercicios;
	
	public List<ExerciciosAlunosModel> getListaDeExercicios()
	{
		return ListaDeExercicios;
	}
	
	public void setListaDeExercicios(List<ExerciciosAlunosModel> listaDeExercicios)
	{
		ListarExercicios listarExercicios = new ListarExercicios();
		listaDeExercicios = listarExercicios.ListaDeExercicios(Matricula);		
		this.ListaDeExercicios = listaDeExercicios;
	}
}
