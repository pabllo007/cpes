/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Wed Dec 22 17:06:12 GMT 2010.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (DetalheAnotacaoInternaDTO.as).
 */

package br.com.sicoob.capes.cadastrarAnotacao.dto {

    import br.com.bancoob.tipos.Booleano;
    import br.com.bancoob.tipos.SerializacaoObjetos;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;

    [Bindable]
    public class DetalheAnotacaoInternaDTOBase extends DetalheAnotacaoDTO {

        private var _idInstituicao:Number;
        private var _idUnidadeInst:Number;
        private var _numero:String;
        private var _observacao:String;
        private var _quantidade:Number;
        private var _responsavel:String;

        public function set idInstituicao(value:Number):void {
            _idInstituicao = value;
        }
        public function get idInstituicao():Number {
            return _idInstituicao;
        }

        public function set idUnidadeInst(value:Number):void {
            _idUnidadeInst = value;
        }
        public function get idUnidadeInst():Number {
            return _idUnidadeInst;
        }

        public function set numero(value:String):void {
            _numero = value;
        }
        public function get numero():String {
            return _numero;
        }

        public function set observacao(value:String):void {
            _observacao = value;
        }
        public function get observacao():String {
            return _observacao;
        }

        public function set quantidade(value:Number):void {
            _quantidade = value;
        }
        public function get quantidade():Number {
            return _quantidade;
        }

        public function set responsavel(value:String):void {
            _responsavel = value;
        }
        public function get responsavel():String {
            return _responsavel;
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            _idInstituicao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            _idUnidadeInst = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
	        _numero = input.readObject() as String;
	        _observacao = input.readObject() as String;
            _quantidade = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
	        _responsavel = input.readObject() as String;
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            output.writeObject(_idInstituicao);
            output.writeObject(_idUnidadeInst);
            output.writeObject(_numero);
            output.writeObject(_observacao);
            output.writeObject(_quantidade);
            output.writeObject(_responsavel);
        }
    }
}