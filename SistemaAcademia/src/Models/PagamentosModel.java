package Models;

import java.util.*;

public class PagamentosModel {

	public double CodigoPagamento;

	public double getCodigoPagamento() {
		return CodigoPagamento;
	}

	public void setCodigoPagamento(double codigoPagamento) {
		this.CodigoPagamento = codigoPagamento;
	}

	public Date DataPagamento;

	public Date getDataPagamento() {
		return DataPagamento;
	}

	public void setDataPagamento(Date dataPagamento) {
		this.DataPagamento = dataPagamento;
	}

	public Date DataVencimento;

	public Date getDataVencimento() {
		return DataVencimento;
	}

	public void setDataVencimento(Date dataVencimento) {
		this.DataVencimento = dataVencimento;
	}

	public float ValorPagamento;

	public float getValorPagamento() {
		return ValorPagamento;
	}

	public void setValorPagamento(float valorPagamento) {
		this.ValorPagamento = valorPagamento;
	}

	public int Matricula;

	public int getMatricula() {
		return Matricula;
	}

	public void setMatricula(int matricula) {
		this.Matricula = matricula;
	}

	public double CodigoCobranca;

	public double getCodigoCobranca() {
		return CodigoCobranca;
	}

	public void setCodigoCobranca(double codigoCobranca) {
		this.CodigoCobranca = codigoCobranca;
	}

}