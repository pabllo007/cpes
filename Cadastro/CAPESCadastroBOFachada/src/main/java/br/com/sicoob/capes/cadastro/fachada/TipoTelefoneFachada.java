/* 
 * Sicoob
 * TipoTelefoneFachada.java 
 * Criado em: 05/05/2011
 */
package br.com.sicoob.capes.cadastro.fachada;

import java.util.Map;

import br.com.bancoob.excecao.BancoobException;
import br.com.bancoob.sisbrweb.dto.RequisicaoReqDTO;
import br.com.bancoob.sisbrweb.dto.RetornoDTO;
import br.com.bancoob.sisbrweb.seguranca.RemoteService;
import br.com.sicoob.capes.cadastro.negocio.delegates.CAPESCadastroCrudDelegate;
import br.com.sicoob.capes.cadastro.negocio.delegates.CAPESCadastroFabricaDelegates;
import br.com.sicoob.capes.cadastro.negocio.delegates.TipoPessoaContatoDelegate;
import br.com.sicoob.capes.cadastro.negocio.delegates.TipoTelefoneDelegate;
import br.com.sicoob.capes.negocio.entidades.TipoTelefone;

/**
 * Define as opera��es do servi�o de manipula��o de tipo de telefone
 * 
 * 05/05/2011
 * 
 * @author Rodrigo.Chaves
 */
@RemoteService
public class TipoTelefoneFachada extends
		CAPESCadastroBOCrudDominioFachada<TipoTelefone> {

	/** O atributo delegate. */
	private TipoTelefoneDelegate delegate = CAPESCadastroFabricaDelegates
			.getInstance().criarTipoTelefoneDelegate();
	
	/** O atributo tipoPessoaContatoDelegate. */
	private TipoPessoaContatoDelegate tipoPessoaContatoDelegate = CAPESCadastroFabricaDelegates
			.getInstance().criarTipoPessoaContatoDelegate();

	/**
	 * Construtor
	 */
	public TipoTelefoneFachada() {
		super("tipoTelefone");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected CAPESCadastroCrudDelegate<TipoTelefone, ?> obterDelegate() {
		return this.delegate;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected TipoTelefone obterEntidade(RequisicaoReqDTO dto) {
		return (TipoTelefone) dto.getDados().get(this.chaveMapa);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public RetornoDTO obterDefinicoes(RequisicaoReqDTO dto) throws BancoobException {
		RetornoDTO retorno = new RetornoDTO();
		Map<String, Object> dados = retorno.getDados();
		dados.put("codigo", this.delegate.pesquisarProximoCodigo());
		dados.put("listaPessoaContato", tipoPessoaContatoDelegate.listar());
		return retorno;
	}

}
