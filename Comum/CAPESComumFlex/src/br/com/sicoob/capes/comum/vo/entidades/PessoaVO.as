/**
 * Generated by Gas3 v1.1.0 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package br.com.sicoob.capes.comum.vo.entidades {

	import flash.net.registerClassAlias;

	registerClassAlias("br.com.sicoob.capes.negocio.entidades.Pessoa",
			PessoaVO);
    public class PessoaVO extends PessoaVOBase {
    	
    	public function get pessoaCompartilhamento() : PessoaCompartilhamentoVO {
    		var pessoaCompartilhamento : PessoaCompartilhamentoVO = null;
    		if (compartilhamentos && compartilhamentos.length > 0) {
    			pessoaCompartilhamento = compartilhamentos[0];
    		}
    		return pessoaCompartilhamento;
    	}
    }
}