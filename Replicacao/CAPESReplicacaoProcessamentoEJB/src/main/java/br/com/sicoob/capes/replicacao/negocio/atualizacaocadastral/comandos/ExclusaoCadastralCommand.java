/**
 * 
 */
package br.com.sicoob.capes.replicacao.negocio.atualizacaocadastral.comandos;

import br.com.bancoob.excecao.BancoobException;
import br.com.sicoob.capes.negocio.entidades.Instituicao;
import br.com.sicoob.capes.replicacao.negocio.delegates.EntidadeReplicavelDelegate;
import br.com.sicoob.capes.negocio.entidades.legado.EntidadeReplicavel;

/**
 * Comando utilizado para as exclusões cadastrais.
 * 
 * @author Erico.Junior
 */
public class ExclusaoCadastralCommand<R extends EntidadeReplicavel<?>> extends
		AtualizacaoCadastralCommandAbstract<R> {

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void doExecute(R entidade, Instituicao instituicao,
			EntidadeReplicavelDelegate<EntidadeReplicavel<?>, ?> delegate) throws BancoobException {
		if (delegate != null) {
			Integer idInstituicao = instituicao.getIdInstituicao(); 
			getLogger().debug(
					"Excluindo entidade: " + entidade + " na instituição: " + idInstituicao);
			delegate.excluir(entidade, idInstituicao);
		}
	}

}
