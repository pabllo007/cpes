/**
 * Generated by Gas3 v1.1.0 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package br.com.sicoob.capes.comum.vo.entidades.interfaces {
	import br.com.bancoob.tipos.Booleano;
	import br.com.sicoob.capes.comum.enums.TipoAutorizacaoEnum;
	import br.com.sicoob.capes.comum.vo.VigenteVO;
	import br.com.sicoob.capes.comum.vo.entidades.PessoaCompartilhamentoVO;

    public interface Aprovavel extends VigenteVO {
		
		function get id():Number;
		
		function get pessoaCompartilhamento():PessoaCompartilhamentoVO;
		
		function get tipoAutorizacao():TipoAutorizacaoEnum;
		
		function set idInstituicaoAtualizacao(value:Number):void;
		function get idInstituicaoAtualizacao():Number;
		
		function set verificarAutorizacao(verificarAutorizacao:Booleano):void;
		function get verificarAutorizacao():Booleano;
		
		function get  idUsuarioEnvio():String;
		
    }
}