/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Wed Apr 27 11:08:21 BRT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (BemPosseVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades.bemantigo {

    import br.com.bancoob.tipos.Booleano;
    import br.com.bancoob.tipos.SerializacaoObjetos;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import org.granite.collections.IPersistentCollection;
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class BemPosseVOBase extends BemPosseBaseVO {

        private var __laziness:String = null;

        private var _gravarHistorico:Booleano;
        private var _idBemPosse:Number;

        meta function isInitialized(name:String = null):Boolean {
            if (!name)
                return __laziness === null;

            var property:* = this[name];
            return (
                (!(property is BemPosseVO) || (property as BemPosseVO).meta::isInitialized()) &&
                (!(property is IPersistentCollection) || (property as IPersistentCollection).isInitialized())
            );
        }

        public function set gravarHistorico(value:Booleano):void {
            _gravarHistorico = value;
        }
        public function get gravarHistorico():Booleano {
            return _gravarHistorico;
        }

        public function set idBemPosse(value:Number):void {
            _idBemPosse = value;
        }
        public function get idBemPosse():Number {
            return _idBemPosse;
        }

        override public function readExternal(input:IDataInput):void {
            __laziness = input.readObject() as String;
            if (meta::isInitialized()) {
                super.readExternal(input);
            	_gravarHistorico = SerializacaoObjetos.lerBooleano(input);
                _idBemPosse = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
            else {
                _idBemPosse = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            output.writeObject(__laziness);
            if (meta::isInitialized()) {
                super.writeExternal(output);
        	SerializacaoObjetos.escreverBooleano(_gravarHistorico, output);
            output.writeObject(_idBemPosse);
            }
            else {
                output.writeObject(_idBemPosse);
            }
        }
    }
}