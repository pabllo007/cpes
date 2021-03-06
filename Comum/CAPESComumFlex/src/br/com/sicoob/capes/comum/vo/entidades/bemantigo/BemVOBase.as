/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Wed Apr 27 11:44:00 BRT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (BemVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades.bemantigo {

    import br.com.bancoob.tipos.Booleano;
    import br.com.bancoob.tipos.SerializacaoObjetos;
    import br.com.sicoob.capes.comum.vo.entidades.interfaces.Comprovavel;
    import br.com.sicoob.capes.comum.enums.SituacaoRegistroEnum;
    import br.com.sicoob.capes.comum.enums.TipoAutorizacaoEnum;
    
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import mx.collections.ListCollectionView;
    
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class BemVOBase extends BemBaseVO implements Comprovavel {

        private var __laziness:String = null;
        private var _bensOnus:ListCollectionView;
        private var _bensPosse:ListCollectionView;
        private var _bensRegistro:ListCollectionView;
		private var _codigoSituacaoAprovacao:Number;
		private var _documentosComprobatorios:ListCollectionView;
        private var _gravarHistorico:Booleano = new Booleano(true);
        private var _idBem:Number;
		private var _idInstituicaoAtualizacao:Number;
		private var _idRegistroControlado:String;
		private var _situacaoAprovacao:SituacaoRegistroEnum;
		private var _verificarAutorizacao:Booleano = new Booleano(true);

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __laziness === null;

            var property:* = this[name];
            return (
                (!(property is BemVO) || (property as BemVO).meta::isInitialized()) &&
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
			_situacaoAprovacao = null;
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
			if(_idRegistroControlado == null) {
				_idRegistroControlado = tipoAutorizacao.name + "#" + id;	
			}
			return _idRegistroControlado;
		}
		
		public function get verificarAutorizacao():Booleano {
			return _verificarAutorizacao;
		}
		public function set verificarAutorizacao(value:Booleano):void {
			_verificarAutorizacao = value;
		}

        public function set bensOnus(value:ListCollectionView):void {
            _bensOnus = value;
        }
        public function get bensOnus():ListCollectionView {
            return _bensOnus;
        }

        public function set bensPosse(value:ListCollectionView):void {
            _bensPosse = value;
        }
        public function get bensPosse():ListCollectionView {
            return _bensPosse;
        }

        public function set bensRegistro(value:ListCollectionView):void {
            _bensRegistro = value;
        }
        public function get bensRegistro():ListCollectionView {
            return _bensRegistro;
        }
		
        public function set gravarHistorico(value:Booleano):void {
            _gravarHistorico = value;
        }
        public function get gravarHistorico():Booleano {
            return _gravarHistorico;
        }
        
        public function set idBem(value:Number):void {
            _idBem = value;
        }
        public function get idBem():Number {
            return _idBem;
        }
		
        public function get id():Number {
            return _idBem;
        }
		
		public function get tipoAutorizacao():TipoAutorizacaoEnum {
			return TipoAutorizacaoEnum.BEM;
		}
		
		/**
		 * Não existe o campo na tabela. Mas deve ser implementado,
		 * devido a interface Aprovavel, ser utilizada na classe.
		 * @return
		 */
		public function get idUsuarioEnvio():String
		{
			return null;
		}

        override public function readExternal(input:IDataInput):void {
        	__laziness = input.readObject() as String;
            if (meta::isInitialized()) {
                super.readExternal(input);
                _bensOnus = input.readObject() as ListCollectionView;
                _bensPosse = input.readObject() as ListCollectionView;
                _bensRegistro = input.readObject() as ListCollectionView;
				_codigoSituacaoAprovacao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
				_documentosComprobatorios = input.readObject() as ListCollectionView;
            	_gravarHistorico = SerializacaoObjetos.lerBooleano(input);
                _idBem = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
				_idInstituicaoAtualizacao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
				_idRegistroControlado = input.readObject() as String;
				_situacaoAprovacao = input.readObject() as SituacaoRegistroEnum;
				_verificarAutorizacao = SerializacaoObjetos.lerBooleano(input);
            }
            else {
                _idBem = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            output.writeObject(__laziness);
            if (meta::isInitialized()) {
	            super.writeExternal(output);
	            output.writeObject(_bensOnus);
	            output.writeObject(_bensPosse);
	            output.writeObject(_bensRegistro);
				output.writeObject(_codigoSituacaoAprovacao);
				output.writeObject(_documentosComprobatorios);
	        	SerializacaoObjetos.escreverBooleano(_gravarHistorico, output);
	            output.writeObject(isNaN(_idBem) ? null : _idBem);
				output.writeObject(isNaN(_idInstituicaoAtualizacao) ? null : _idInstituicaoAtualizacao);
				output.writeObject(_idRegistroControlado);
				output.writeObject(_situacaoAprovacao);
				SerializacaoObjetos.escreverBooleano(_verificarAutorizacao, output);
            }
            else {
                output.writeObject(isNaN(_idBem) ? null : _idBem);
            }
        }
    }
}