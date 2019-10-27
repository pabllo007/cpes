/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Wed Feb 09 17:56:00 GMT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (ResponsavelCadastroVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import br.com.bancoob.tipos.Booleano;
    import br.com.bancoob.tipos.SerializacaoObjetos;
    import br.com.sicoob.capes.comum.enums.SituacaoRegistroEnum;
    import br.com.sicoob.capes.comum.enums.TipoAutorizacaoEnum;
    import br.com.sicoob.capes.comum.vo.entidades.interfaces.Aprovavel;
    import br.com.sicoob.capes.comum.vo.entidades.PessoaCompartilhamentoVO;
    import br.com.sicoob.capes.comum.vo.VigenteVO;
    
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class ResponsavelCadastroVOBase extends ResponsavelCadastroBaseVO implements Aprovavel, VigenteVO {

		private var _codigoSituacaoAprovacao:Number;
        private var _gravarHistorico:Booleano;
		private var _idInstituicaoAtualizacao:Number;
		private var _idRegistroControlado:String;
		private var _situacaoAprovacao:SituacaoRegistroEnum;
		private var _verificarAutorizacao:Booleano = new Booleano(true);
		
		public function set idInstituicaoAtualizacao(value:Number):void {
			_idInstituicaoAtualizacao = value;
		}
		public function get idInstituicaoAtualizacao():Number {
			return _idInstituicaoAtualizacao;
		}
		
		public function set idRegistroControlado(value:String):void {
			_idRegistroControlado = value;
		}
		public function get idRegistroControlado():String {
			if(_idRegistroControlado == null) {
				_idRegistroControlado = tipoAutorizacao.name + "#" + id;	
			}
			return _idRegistroControlado;
		}
		
		public function set codigoSituacaoAprovacao(value:Number):void{
			_codigoSituacaoAprovacao = value;
		}
		
		public function get codigoSituacaoAprovacao():Number {
			return _codigoSituacaoAprovacao;
		}
		
		public function set situacaoAprovacao(valor:SituacaoRegistroEnum):void{
			_situacaoAprovacao = valor;
		}
		
		public function get situacaoAprovacao():SituacaoRegistroEnum {
			if(_situacaoAprovacao == null){
				_situacaoAprovacao = SituacaoRegistroEnum.valueOff(_codigoSituacaoAprovacao);
			}
			return _situacaoAprovacao;
		}
		
		public function get verificarAutorizacao():Booleano {
			return _verificarAutorizacao;
		}
		public function set verificarAutorizacao(value:Booleano):void {
			_verificarAutorizacao = value;
		}
		
        public function set gravarHistorico(value:Booleano):void {
            _gravarHistorico = value;
        }
        public function get gravarHistorico():Booleano {
            return _gravarHistorico;
        }
        public function get codigoTipoAutorizacao():Number {
            return Number.NaN;
        }

		public function set id(value:Number):void{
			idPessoaCompartilhamento = value;
		}
        public function get id():Number {
            return idPessoaCompartilhamento;
        }
        
		public function get pessoaCompartilhamento():PessoaCompartilhamentoVO {
			return pessoa;
		}
		
		public function get tipoAutorizacao():TipoAutorizacaoEnum {
			return TipoAutorizacaoEnum.RESPONSAVEL;
		}
		
		/**
		 * Implementado devido a interface Aprovavel,
		 * portanto retorna null por  a entidade não 
		 * conter o campo IdUsuarioEnvio.  
		 */
		public function get idUsuarioEnvio():String
		{
			return null;
		}

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
				_codigoSituacaoAprovacao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            	_gravarHistorico = SerializacaoObjetos.lerBooleano(input);
				_idInstituicaoAtualizacao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
				_idRegistroControlado = input.readObject() as String;
				_situacaoAprovacao = input.readObject() as SituacaoRegistroEnum;
				_verificarAutorizacao = SerializacaoObjetos.lerBooleano(input);
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
				output.writeObject(_codigoSituacaoAprovacao);
	        	SerializacaoObjetos.escreverBooleano(_gravarHistorico, output);
				output.writeObject(isNaN(_idInstituicaoAtualizacao) ? null : _idInstituicaoAtualizacao);
				output.writeObject(_idRegistroControlado);
				output.writeObject(_situacaoAprovacao);
				SerializacaoObjetos.escreverBooleano(_verificarAutorizacao, output);
            }
        }
   }
}