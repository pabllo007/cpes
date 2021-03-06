/*
 * SICOOB
 * 
 * TributacaoPessoaDelegate.java(br.com.sicoob.capes.api.negocio.delegates.TributacaoPessoaDelegate)
 */
package br.com.sicoob.capes.api.negocio.delegates;

import br.com.bancoob.excecao.BancoobException;
import br.com.sicoob.capes.api.negocio.delegates.interfaces.ITributacaoPessoaDelegate;
import br.com.sicoob.capes.api.negocio.servicos.TributacaoPessoaServico;
import br.com.sicoob.capes.api.negocio.servicos.locator.CAPESApiServiceLocator;
import br.com.sicoob.capes.api.negocio.vo.TributacaoPessoaVO;

/**
 * @author Lucas.Borges
 */
public class TributacaoPessoaDelegate extends
		CAPESApiDelegate<TributacaoPessoaServico> implements ITributacaoPessoaDelegate {

	/** 
	 * {@inheritDoc}
	 */
	@Override
	protected TributacaoPessoaServico localizarServico() {
		return CAPESApiServiceLocator.getInstance()
				.localizarTributacaoPessoaServico();
	}

	/**
	 * Obter por pessoa instituicao.
	 * 
	 * @param idPessoa
	 *            the id pessoa
	 * @param idInstituicao
	 *            the id instituicao
	 * @return tributacao pessoa vo
	 * @throws BancoobException
	 *             the bancoob exception
	 */
	public TributacaoPessoaVO obterPorPessoaInstituicao(Integer idPessoa,
			Integer idInstituicao) throws BancoobException {
		return getServico().obterByPessoaInstituicao(idPessoa, idInstituicao);
	}

}
