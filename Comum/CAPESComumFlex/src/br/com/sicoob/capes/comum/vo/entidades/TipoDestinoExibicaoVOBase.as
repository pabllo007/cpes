/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Mon Jan 17 12:52:21 GMT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (TipoCapturaVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class TipoDestinoExibicaoVOBase extends CAPESEntidadeVO {

        private var __laziness:String = null;

		private var _ativo:Boolean;
		private var _codTipoDestinoExibicao:Number;
        private var _descTipoDestinoExibicao:String;

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __laziness === null;

            var property:* = this[name];
            return (
                (!(property is TipoMensagemVO) || (property as TipoDestinoExibicaoVO).meta::isInitialized()) &&
                (!(property is IPersistentCollection) || (property as IPersistentCollection).isInitialized())
            );
        }
		
		public function set ativo(value:Boolean):void {
			_ativo = value;
		}
		public function get ativo():Boolean {
			return _ativo;
		}

		public function set codTipoDestinoExibicao(value:Number):void {
			_codTipoDestinoExibicao = value;
		}
		public function get codTipoDestinoExibicao():Number {
			return _codTipoDestinoExibicao;
		}
		
        public function set descTipoDestinoExibicao(value:String):void {
			_descTipoDestinoExibicao = value;
        }
        public function get descTipoDestinoExibicao():String {
            return _descTipoDestinoExibicao;
        }

        override public function readExternal(input:IDataInput):void {
            __laziness = input.readObject() as String;
            if (meta::isInitialized()) {
                super.readExternal(input);
				_ativo = input.readObject() as Boolean;
				_codTipoDestinoExibicao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
				_descTipoDestinoExibicao = input.readObject() as String;
                
            }
            else {
				_codTipoDestinoExibicao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            output.writeObject(__laziness);
            if (meta::isInitialized()) {
                super.writeExternal(output);
			output.writeObject(_ativo);	
			output.writeObject(_codTipoDestinoExibicao);
            output.writeObject(_descTipoDestinoExibicao);
            }
            else {
                output.writeObject(_codTipoDestinoExibicao);
            }
        }
    }
}