/**
 * Generated by Gas3 v1.1.0 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package br.com.sicoob.capes.comum.vo.entidades {

	import flash.net.registerClassAlias;

	registerClassAlias("br.com.sicoob.capes.negocio.entidades.Anotacao",
			AnotacaoVO);
    public class AnotacaoVO extends AnotacaoVOBase {
		
		public function get codigoTipoAnotacao(): Number {
			var valor:Number = 0;
			if(tipoAnotacao != null) {
				valor = tipoAnotacao.codTipoAnotacao;
			}
			return valor;
		}
		
		public function get descricaoTipoAnotacao(): String {
			var valor:String = "";
			if(tipoAnotacao != null) {
				valor = tipoAnotacao.descTipoAnotacao;
			}
			return valor;
		}
		
		public function get descricaoCategoria(): String {
			var valor:String = "";
			if(tipoAnotacao != null && tipoAnotacao.categoriaAnotacao != null) {
				valor = tipoAnotacao.categoriaAnotacao.descCategoriaAnotacao;
			}
			return valor;
		}      
		
		public function get descricaoOrigem():String {
			var valor:String = "";
			if (origemInformacao != null) {
				valor = origemInformacao.descOrigemInfo;
			}
			return valor;
		}
    }
}