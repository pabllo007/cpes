/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Wed Sep 15 11:11:39 GMT 2010.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (DetalheProtestoDTO.as).
 */

package br.com.sicoob.capes.cadastrarAnotacao.dto {

    import br.com.bancoob.tipos.Booleano;
    import br.com.bancoob.tipos.SerializacaoObjetos;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;

    [Bindable]
    public class DetalheProtestoDTOBase extends DetalheAnotacaoDTO {

        private var _cartorio:Number;
        private var _cidade:String;
        private var _natureza:String;
        private var _subJudice:String;
        private var _uf:String;

        public function set cartorio(value:Number):void {
            _cartorio = value;
        }
        public function get cartorio():Number {
            return _cartorio;
        }

        public function set cidade(value:String):void {
            _cidade = value;
        }
        public function get cidade():String {
            return _cidade;
        }

        public function set natureza(value:String):void {
            _natureza = value;
        }
        public function get natureza():String {
            return _natureza;
        }

        public function set subJudice(value:String):void {
            _subJudice = value;
        }
        public function get subJudice():String {
            return _subJudice;
        }

        public function set uf(value:String):void {
            _uf = value;
        }
        public function get uf():String {
            return _uf;
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            _cartorio = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
	        _cidade = input.readObject() as String;
	        _natureza = input.readObject() as String;
	        _subJudice = input.readObject() as String;
	        _uf = input.readObject() as String;
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            output.writeObject(_cartorio);
            output.writeObject(_cidade);
            output.writeObject(_natureza);
            output.writeObject(_subJudice);
            output.writeObject(_uf);
        }
    }
}