/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Tue Aug 02 14:23:52 BRT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (MensagemBaseVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import br.com.bancoob.tipos.IDateTime;
    import br.com.sicoob.capes.comum.vo.entidades.CAPESEntidadeVO;
    import br.com.sicoob.capes.comum.vo.entidades.PessoaVO;
    
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import org.granite.meta;

    use namespace meta;

    [Bindable]
    public class MensagemBaseVOBase extends EntidadeCadastroBaseVO {

		private var _codigoTipoDestinoExibicao:Number;
		private var _codigoTipoMensagem:Number;	
        private var _dataHoraInicio:IDateTime;
        private var _idInstituicao:Number;
        private var _mensagem:String;
        private var _pessoa:PessoaVO;
        private var _validade:IDateTime;



		public function set codigoTipoDestinoExibicao(value:Number):void {
			_codigoTipoDestinoExibicao = value;
		}
		public function get codigoTipoDestinoExibicao():Number {
			return _codigoTipoDestinoExibicao;
		}
		
		public function set codigoTipoMensagem(value:Number):void{
			_codigoTipoMensagem = value;
		}
		
		public function get codigoTipoMensagem():Number{
			return _codigoTipoMensagem;
		}
		
        public function set dataHoraInicio(value:IDateTime):void {
            _dataHoraInicio = value;
        }
        public function get dataHoraInicio():IDateTime {
            return _dataHoraInicio;
        }

        public function set idInstituicao(value:Number):void {
            _idInstituicao = value;
        }
        public function get idInstituicao():Number {
            return _idInstituicao;
        }

        public function set mensagem(value:String):void {
            _mensagem = value;
        }
        public function get mensagem():String {
            return _mensagem;
        }

        public function set pessoa(value:PessoaVO):void {
            _pessoa = value;
        }
        public function get pessoa():PessoaVO {
            return _pessoa;
        }

        public function set validade(value:IDateTime):void {
            _validade = value;
        }
        public function get validade():IDateTime {
            return _validade;
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
			_codigoTipoDestinoExibicao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
			_codigoTipoMensagem = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
        	_dataHoraInicio = input.readObject() as IDateTime;
            _idInstituicao = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            _mensagem = input.readObject() as String;
            _pessoa = input.readObject() as PessoaVO;
        	_validade = input.readObject() as IDateTime;
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
			output.writeObject(_codigoTipoDestinoExibicao)
			output.writeObject(_codigoTipoMensagem);	
            output.writeObject(_dataHoraInicio);
            output.writeObject(_idInstituicao);
            output.writeObject(_mensagem);
            output.writeObject(_pessoa);
        	output.writeObject(_validade);
        }
    }
}