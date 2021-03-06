/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Tue Jan 17 11:40:50 BRST 2012.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (AnotacaoSisbrVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import br.com.bancoob.tipos.SerializacaoObjetos;
    import br.com.sicoob.capes.comum.vo.entidades.InstituicaoVO;
    
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class AnotacaoSisbrVOBase extends AnotacaoVO {

        private var _dataVencimento:Date;
        private var _idModalidadeProduto:Number;
        private var _idProduto:Number;
        private var _instituicaoModalidadeProduto:InstituicaoVO;
        private var _numeroContrato:String;

        public function set dataVencimento(value:Date):void {
            _dataVencimento = value;
        }
        public function get dataVencimento():Date {
            return _dataVencimento;
        }

        public function set idModalidadeProduto(value:Number):void {
            _idModalidadeProduto = value;
        }
        public function get idModalidadeProduto():Number {
            return _idModalidadeProduto;
        }

        public function set idProduto(value:Number):void {
            _idProduto = value;
        }
        public function get idProduto():Number {
            return _idProduto;
        }

        public function set instituicaoModalidadeProduto(value:InstituicaoVO):void {
            _instituicaoModalidadeProduto = value;
        }
        public function get instituicaoModalidadeProduto():InstituicaoVO {
            return _instituicaoModalidadeProduto;
        }

        public function set numeroContrato(value:String):void {
            _numeroContrato = value;
        }
        public function get numeroContrato():String {
            return _numeroContrato;
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
            	_dataVencimento = SerializacaoObjetos.lerDate(input);
                _idModalidadeProduto = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _idProduto = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _instituicaoModalidadeProduto = input.readObject() as InstituicaoVO;
                _numeroContrato = input.readObject() as String;
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
        	SerializacaoObjetos.escreverDate(_dataVencimento, output);
            output.writeObject(_idModalidadeProduto);
            output.writeObject(_idProduto);
            output.writeObject(_instituicaoModalidadeProduto);
            output.writeObject(_numeroContrato);
            }
        }
    }
}