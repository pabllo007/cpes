/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Wed Sep 15 11:34:13 GMT 2010.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (DetalhePefinDTO.as).
 */

package br.com.sicoob.capes.cadastrarAnotacao.dto {

    import br.com.bancoob.tipos.Booleano;
    import br.com.bancoob.tipos.SerializacaoObjetos;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;

    [Bindable]
    public class DetalhePefinDTOBase extends DetalheAnotacaoDTO {

        private var _cnpjCredor:String;
        private var _natureza:String;
        private var _nomeInstituicao:String;
        private var _principal:String;
        private var _uf:String;

        public function set cnpjCredor(value:String):void {
            _cnpjCredor = value;
        }
        public function get cnpjCredor():String {
            return _cnpjCredor;
        }

        public function set natureza(value:String):void {
            _natureza = value;
        }
        public function get natureza():String {
            return _natureza;
        }

        public function set nomeInstituicao(value:String):void {
            _nomeInstituicao = value;
        }
        public function get nomeInstituicao():String {
            return _nomeInstituicao;
        }

        public function set principal(value:String):void {
            _principal = value;
        }
        public function get principal():String {
            return _principal;
        }

        public function set uf(value:String):void {
            _uf = value;
        }
        public function get uf():String {
            return _uf;
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
	        _cnpjCredor = input.readObject() as String;
	        _natureza = input.readObject() as String;
	        _nomeInstituicao = input.readObject() as String;
	        _principal = input.readObject() as String;
	        _uf = input.readObject() as String;
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            output.writeObject(_cnpjCredor);
            output.writeObject(_natureza);
            output.writeObject(_nomeInstituicao);
            output.writeObject(_principal);
            output.writeObject(_uf);
        }
    }
}