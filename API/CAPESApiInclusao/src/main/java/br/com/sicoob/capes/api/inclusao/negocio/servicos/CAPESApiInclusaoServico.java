package br.com.sicoob.capes.api.inclusao.negocio.servicos;

import br.com.bancoob.excecao.BancoobException;
import br.com.bancoob.negocio.servicos.BancoobServico;
import br.com.sicoob.capes.api.inclusao.negocio.dto.EncaminharAutorizacaoDTO;
import br.com.sicoob.capes.api.inclusao.negocio.dto.ExecutarProcedimentoAutorizacaoDTO;
import br.com.sicoob.capes.api.inclusao.negocio.dto.RegistroInclusaoDTO;

/**
 * Interface dos servi�os.
 * 
 * @param <D>
 *            O DTO base dos servi�os.
 * 
 * @author bruno.carneiro
 */
public interface CAPESApiInclusaoServico<D extends RegistroInclusaoDTO<?>> extends BancoobServico {

	/**
	 * M�todo de inclus�o.
	 * 
	 * @param dto
	 *            O DTO com as informa��es para serem inclu�das.
	 * 
	 * @return O dto preenchido.
	 */
	D incluir(D dto) throws BancoobException;

	/**
	 * M�todo de altera��o.
	 * 
	 * @param dto
	 *            O DTO com as informa��es para serem alteradas.
	 * 
	 */
	void alterar(D dto) throws BancoobException;
	
	/**
	 * M�todo de exclus�o.
	 * 
	 * @param dto
	 *            O DTO com as informa��o do registro a ser exclu�do.
	 * @throws BancoobException
	 */
	void excluir(D dto) throws BancoobException;
	
	/**
	 * Encaminha a autoriza��o de acordo com a pessoa e a institui��o.
	 * 
	 * @param dto
	 *            O DTO com as informa��es para encaminhar uma autoriza��o.
	 *            
	 * @return O idRegistroControlado da autoriza��o.
	 * 
	 * @throws BancoobException
	 */
	String encaminharAutorizacao(EncaminharAutorizacaoDTO dto) throws BancoobException;
	
	/**
	 * Executa o procedimento da autoriza��o informada com o usu�rio informado.
	 * 
	 * @param dto
	 *            O DTO com as informa��es do registro a ser aprovado.
	 * @throws BancoobException
	 */
	void executarProcedimentoAutorizacao(ExecutarProcedimentoAutorizacaoDTO dto) throws BancoobException;
	
	/**
	 * Cancela a autoriza��o que est� pendente, caso exista.
	 * 
	 * @param dto
	 * @param justificativa
	 * @throws BancoobException
	 */
	void cancelarFluxoAutorizacao(D dto, String justificativa) throws BancoobException;

	
}