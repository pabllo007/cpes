/**
 * Generated by Gas3 v1.1.0 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package br.com.sicoob.capes.comum.vo.entidades {

	import flash.net.registerClassAlias;

	registerClassAlias("br.com.sicoob.capes.negocio.entidades.TipoFonteRenda",
			TipoFonteRendaVO);
    public class TipoFonteRendaVO extends TipoFonteRendaVOBase {
    	
    	public function get pessoaFisica():Boolean{
    		if(tiposPessoa != null){
    			for each(var p:TipoPessoaVO in tiposPessoa){
    				if(p.codTipoPessoa == 0){
    					return true;
    				}
    			}
    		}
    		return false;
    	}

    	public function get pessoaJuridica():Boolean{
    		if(tiposPessoa != null){
    			for each(var p:TipoPessoaVO in tiposPessoa){
    				if(p.codTipoPessoa == 1){
    					return true;
    				}
    			}
    		}
    		return false;
    	}
    }
}