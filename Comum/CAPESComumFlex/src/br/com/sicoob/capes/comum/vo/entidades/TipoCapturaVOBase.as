/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Mon Jan 17 12:52:21 GMT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (TipoCapturaVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import br.com.sicoob.capes.comum.vo.entidades.CAPESEntidadeVO;
    
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class TipoCapturaVOBase extends CAPESEntidadeVO {

        private var __laziness:String = null;

        private var _descTipoCaptura:String;
        private var _idTipoCaptura:Number;

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __laziness === null;

            var property:* = this[name];
            return (
                (!(property is TipoCapturaVO) || (property as TipoCapturaVO).meta::isInitialized()) &&
                (!(property is IPersistentCollection) || (property as IPersistentCollection).isInitialized())
            );
        }

        public function set descTipoCaptura(value:String):void {
            _descTipoCaptura = value;
        }
        public function get descTipoCaptura():String {
            return _descTipoCaptura;
        }

        public function set idTipoCaptura(value:Number):void {
            _idTipoCaptura = value;
        }
        public function get idTipoCaptura():Number {
            return _idTipoCaptura;
        }

        override public function readExternal(input:IDataInput):void {
            __laziness = input.readObject() as String;
            if (meta::isInitialized()) {
                super.readExternal(input);
                _descTipoCaptura = input.readObject() as String;
                _idTipoCaptura = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
            else {
                _idTipoCaptura = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            output.writeObject(__laziness);
            if (meta::isInitialized()) {
                super.writeExternal(output);
            output.writeObject(_descTipoCaptura);
            output.writeObject(_idTipoCaptura);
            }
            else {
                output.writeObject(_idTipoCaptura);
            }
        }
    }
}