/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Thu May 19 14:46:15 BRT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (EnderecoVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import br.com.bancoob.tipos.Booleano;
    import br.com.bancoob.tipos.SerializacaoObjetos;
    import br.com.sicoob.capes.comum.enums.SituacaoRegistroEnum;
    import br.com.sicoob.capes.comum.enums.TipoAutorizacaoEnum;
    import br.com.sicoob.capes.comum.vo.ReplicavelVO;
    import br.com.sicoob.capes.comum.vo.VigenteVO;
    import br.com.sicoob.capes.comum.vo.entidades.interfaces.Comprovavel;
    
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import mx.collections.ListCollectionView;
    
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class EnderecoVOBase extends EnderecoBaseVO implements ReplicavelVO, Comprovavel, VigenteVO {

        private var __laziness:String = null;

		private var _codigoSituacaoAprovacao:Number;
		private var _documentosComprobatorios:ListCollectionView;
        private var _gravarHistorico:Booleano = new Booleano(true);
        private var _idEndereco:Number;
		private var _idInstituicaoAtualizacao:Number;
		private var _idRegistroControlado:String;
		private var _idUsuarioEnvio:String;
		private var _situacaoAprovacao:SituacaoRegistroEnum;
		private var _verificarAutorizacao:Booleano = new Booleano(true);

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __laziness === null;

            var property:* = this[name];
            return (
                (!(property is EnderecoVO) || (property as EnderecoVO).meta::isInitialized()) &&
                (!(property is IPersistentCollection) || (property as IPersistentCollection).isInitialized())
            );
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
		
		public function set documentosComprobatorios(value:ListCollectionView):void {
			_documentosComprobatorios = value;
		}
		public function get documentosComprobatorios():ListCollectionView {
			return _documentosComprobatorios;
		}
		
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
			return _idRegistroControlado;
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

        public function set idEndereco(value:Number):void {
            _idEndereco = value;
        }
        public function get idEndereco():Number {
            return _idEndereco;
        }
		
		public function get idUsuarioEnvio():String
		{
			return _idUsuarioEnvio;
		}
		
		public function set idUsuarioEnvio(value:String):void
		{
			_idUsuarioEnvio = value; 	
		}
        
        override public function readExternal(input:IDataInput):void {
            __laziness = input.readObject() as String;
            if (meta::isInitialized()) {
                super.readExternal(input);
				_codigoSituacaoAprovacao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
				_documentosComprobatorios = input.readObject() as ListCollectionView;
            	_gravarHistorico = SerializacaoObjetos.lerBooleano(input);
                _idEndereco = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
				_idInstituicaoAtualizacao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
				_idRegistroControlado = input.readObject() as String;
				_idUsuarioEnvio  = input.readObject() as String;
				_situacaoAprovacao = input.readObject() as SituacaoRegistroEnum;
				_verificarAutorizacao = SerializacaoObjetos.lerBooleano(input);
            }
            else {
                _idEndereco = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            output.writeObject(__laziness);
            if (meta::isInitialized()) {
                super.writeExternal(output);
				output.writeObject(_codigoSituacaoAprovacao);
				output.writeObject(_documentosComprobatorios);
	        	SerializacaoObjetos.escreverBooleano(_gravarHistorico, output);
	            output.writeObject(_idEndereco);
				output.writeObject(isNaN(_idInstituicaoAtualizacao) ? null : _idInstituicaoAtualizacao);
				output.writeObject(_idRegistroControlado);
				output.writeObject(_idUsuarioEnvio);
				output.writeObject(_situacaoAprovacao);
				SerializacaoObjetos.escreverBooleano(_verificarAutorizacao, output);
            }
            else {
                output.writeObject(_idEndereco);
            }
        }
		
		public function get id():Number {
			return idEndereco;
		}
		
		public function get tipoAutorizacao():TipoAutorizacaoEnum {
			return TipoAutorizacaoEnum.ENDERECO;
		}
    }
}