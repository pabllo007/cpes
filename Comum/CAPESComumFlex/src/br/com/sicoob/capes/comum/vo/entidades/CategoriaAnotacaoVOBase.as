/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Mon Jan 17 12:52:22 GMT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (CategoriaAnotacaoVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import br.com.sicoob.capes.comum.vo.entidades.CAPESEntidadeVO;
    
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class CategoriaAnotacaoVOBase extends CAPESEntidadeVO {

        private var __laziness:String = null;

        private var _descCategoriaAnotacao:String;
        private var _idCategoriaAnotacao:Number;

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __laziness === null;

            var property:* = this[name];
            return (
                (!(property is CategoriaAnotacaoVO) || (property as CategoriaAnotacaoVO).meta::isInitialized()) &&
                (!(property is IPersistentCollection) || (property as IPersistentCollection).isInitialized())
            );
        }

        public function set descCategoriaAnotacao(value:String):void {
            _descCategoriaAnotacao = value;
        }
        public function get descCategoriaAnotacao():String {
            return _descCategoriaAnotacao;
        }

        public function set idCategoriaAnotacao(value:Number):void {
            _idCategoriaAnotacao = value;
        }
        public function get idCategoriaAnotacao():Number {
            return _idCategoriaAnotacao;
        }

        override public function readExternal(input:IDataInput):void {
            __laziness = input.readObject() as String;
            if (meta::isInitialized()) {
                super.readExternal(input);
                _descCategoriaAnotacao = input.readObject() as String;
                _idCategoriaAnotacao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
            else {
                _idCategoriaAnotacao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            output.writeObject(__laziness);
            if (meta::isInitialized()) {
                super.writeExternal(output);
            output.writeObject(_descCategoriaAnotacao);
            output.writeObject(_idCategoriaAnotacao);
            }
            else {
                output.writeObject(_idCategoriaAnotacao);
            }
        }
    }
}