/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Mon Jan 24 17:25:53 GMT 2011.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (DocumentoComprobatorioVO.as).
 */

package br.com.sicoob.capes.comum.vo.entidades {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import flash.utils.IExternalizable;
    
    import mx.collections.ListCollectionView;

    [Bindable]
    public class DocumentoComprobatorioVOBase implements IExternalizable {

        private var _arquivos:ListCollectionView;
		private var _idDocumento:Number;
		private var _nome:String;
		private var _tipoDocumento:TipoDocumentoVO;
		
		public function set arquivos(value:ListCollectionView):void {
			_arquivos = value;
		}
		public function get arquivos():ListCollectionView {
			return _arquivos;
		}

		public function get idDocumento():Number {
			return _idDocumento;
		}
		public function set idDocumento(value:Number):void {
			_idDocumento = value;
		}
		
		public function get nome():String {
			return _nome;
		}
		public function set nome(value:String):void {
			_nome = value;
		}
		
		public function get tipoDocumento():TipoDocumentoVO {
			return _tipoDocumento;
		}
		public function set tipoDocumento(value:TipoDocumentoVO):void {
			_tipoDocumento = value;
		}

        public function readExternal(input:IDataInput):void {
			_arquivos = input.readObject() as ListCollectionView;
			_idDocumento = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
			_nome = input.readObject() as String;
			_tipoDocumento = input.readObject() as TipoDocumentoVO;
        }

        public function writeExternal(output:IDataOutput):void {
            output.writeObject(_arquivos);
			output.writeObject(isNaN(_idDocumento) ? null : _idDocumento);
			output.writeObject(_nome);
			output.writeObject(_tipoDocumento);
        }
    }
}