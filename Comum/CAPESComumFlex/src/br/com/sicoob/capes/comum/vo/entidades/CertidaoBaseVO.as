/**
 * Generated by Gas3 v1.1.0 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import flash.net.registerClassAlias;

	registerClassAlias("br.com.sicoob.capes.negocio.entidades.CertidaoBase",
			CertidaoBaseVO);
    public class CertidaoBaseVO extends CertidaoBaseVOBase {
        public function get nomeTipoCertidao():String {
            if (tipoCertidao != null)
            	return tipoCertidao.nome;
            else
            	return "";
        }
    }
}