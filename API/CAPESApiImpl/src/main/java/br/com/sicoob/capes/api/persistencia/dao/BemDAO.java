package br.com.sicoob.capes.api.persistencia.dao;

import java.util.List;

import br.com.bancoob.excecao.BancoobException;
import br.com.sicoob.capes.api.negocio.vo.BemProprietarioVO;
import br.com.sicoob.capes.api.negocio.vo.BemVO;
import br.com.sicoob.capes.api.negocio.vo.TipoBemVO;
import br.com.sicoob.capes.api.negocio.vo.TipoClassificacaoBemVO;

public interface BemDAO extends CAPESApiDao {

	/**
	 * Obt�m as informa��es do bem por idPessoa e idInstituicao
	 * 
	 * @param idPessoa
	 * @param idInstituicao
	 * @return
	 * @throws BancoobException
	 */
	List<BemVO> obterPorPessoaInstituicao(Integer idPessoa, Integer idInstituicao) throws BancoobException;

	/**
	 * Obt�m as informa��es do bem por ID.
	 * 
	 * @param idBem
	 * @return
	 * @throws BancoobException
	 */
	BemVO obterPorIdBem(Long idBem) throws BancoobException;

	/**
	 * Obt�m as classifica��es do bem.
	 * 
	 * @return
	 * @throws BancoobException
	 */
	List<TipoClassificacaoBemVO> obterClassificacoesBem() throws BancoobException;

	/**
	 * Obt�m os tipos de bem por tipo de classifica��o
	 * 
	 * @param codigoTipoClassificacaoBem
	 * @return
	 */
	List<TipoBemVO> obterTiposBemPorClassificacao(boolean bemImovel) throws BancoobException;
	
	/**
	 * Obt�m a lista dos propriet�rios do bem.
	 * 
	 * @param idBem
	 * @return
	 * @throws BancoobException
	 */
	List<BemProprietarioVO> obterProprietarios(Long idBem) throws BancoobException;

}