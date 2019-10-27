package br.com.sicoob.capes.comum.vo
{
	import br.com.bancoob.tipos.SerializacaoObjetos;
	
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;

	[Bindable]
	public class DadosCNPJVOBase extends DadosReceitaFederalVO
	{
		private var _codEstabelecimento:int;
		private var _nomeEmpresarial:String;
		private var _nomeFantasia:String;
		private var _cidadeExterior:String;
		private var _codigoPais:String;
		private var _nomePais:String;
		private var _naturezaJuridica:String;
		private var _dataAbertura:Date;
		private var _cnaePrincipal:String;
		private var _tipoLogradouro:String;
		private var _logradouro:String;
		private var _numeroLogradouro:String;
		private var _complemento:String;
		private var _bairro:String;
		private var _cep:int;
		private var _uf:String;
		private var _codigoMunicipio:int;
		private var _nomeMunicipio:String;
		private var _ddd1:String;
		private var _telefone1:String;
		private var _ddd2:String;
		private var _telefone2:String;
		private var _email:String;
		private var _cnpj:String;
		
		public function get codEstabelecimento():int {
			return _codEstabelecimento;
		}
		public function set codEstabelecimento(codEstabelecimento:int):void {
			this._codEstabelecimento = codEstabelecimento;
		}
		
		public function get nomeEmpresarial():String {
			return _nomeEmpresarial;
		}
		public function set nomeEmpresarial(nomeEmpresarial:String):void {
			this._nomeEmpresarial = nomeEmpresarial;
		}
		
		public function get nomeFantasia():String {
			return _nomeFantasia;
		}
		public function set nomeFantasia(nomeFantasia:String):void {
			this._nomeFantasia = nomeFantasia;
		}
		
		public function get cidadeExterior():String {
			return _cidadeExterior;
		}
		public function set cidadeExterior(cidadeExterior:String):void {
			this._cidadeExterior = cidadeExterior;
		}
		
		public function get codigoPais():String {
			return _codigoPais;
		}
		public function set codigoPais(codigoPais:String):void {
			this._codigoPais = codigoPais;
		}
		
		public function get nomePais():String {
			return _nomePais;
		}
		public function set nomePais(nomePais:String):void {
			this._nomePais = nomePais;
		}
		
		public function get naturezaJuridica():String {
			return _naturezaJuridica;
		}
		public function set naturezaJuridica(naturezaJuridica:String):void {
			this._naturezaJuridica = naturezaJuridica;
		}
		
		public function get dataAbertura():Date {
			return _dataAbertura;
		}
		public function set dataAbertura(dataAbertura:Date):void {
			this._dataAbertura = dataAbertura;
		}
		
		public function get cnaePrincipal():String {
			return _cnaePrincipal;
		}
		public function set cnaePrincipal(cnaePrincipal:String):void {
			this._cnaePrincipal = cnaePrincipal;
		}
		
		public function get tipoLogradouro():String {
			return _tipoLogradouro;
		}
		public function set tipoLogradouro(tipoLogradouro:String):void {
			this._tipoLogradouro = tipoLogradouro;
		}
		
		public function get logradouro():String {
			return _logradouro;
		}
		public function set logradouro(logradouro:String):void {
			this._logradouro = logradouro;
		}
		
		public function get numeroLogradouro():String {
			return _numeroLogradouro;
		}
		public function set numeroLogradouro(numeroLogradouro:String):void {
			this._numeroLogradouro = numeroLogradouro;
		}
		
		public function get complemento():String {
			return _complemento;
		}
		public function set complemento(complemento:String):void {
			this._complemento = complemento;
		}
		
		public function get bairro():String {
			return _bairro;
		}
		public function set bairro(bairro:String):void {
			this._bairro = bairro;
		}
		
		public function get cep():int {
			return _cep;
		}
		public function set cep(cep:int):void {
			this._cep = cep;
		}
		
		public function get uf():String {
			return _uf;
		}
		public function set uf(uf:String):void {
			this._uf = uf;
		}
		
		public function get codigoMunicipio():int {
			return _codigoMunicipio;
		}
		public function set codigoMunicipio(codigoMunicipio:int):void {
			this._codigoMunicipio = codigoMunicipio;
		}
		
		public function get nomeMunicipio():String {
			return _nomeMunicipio;
		}
		public function set nomeMunicipio(nomeMunicipio:String):void {
			this._nomeMunicipio = nomeMunicipio;
		}
		
		public function get ddd1():String {
			return _ddd1;
		}
		public function set ddd1(ddd1:String):void {
			this._ddd1 = ddd1;
		}
		
		public function get telefone1():String {
			return _telefone1;
		}
		public function set telefone1(telefone1:String):void {
			this._telefone1 = telefone1;
		}
		
		public function get ddd2():String {
			return _ddd2;
		}
		public function set ddd2(ddd2:String):void {
			this._ddd2 = ddd2;
		}
		
		public function get telefone2():String {
			return _telefone2;
		}
		public function set telefone2(telefone2:String):void {
			this._telefone2 = telefone2;
		}
		
		public function get email():String {
			return _email;
		}
		public function set email(email:String):void {
			this._email = email;
		}
		
		public function get cnpj():String {
			return _cnpj;
		}
		public function set cnpj(cnpj:String):void {
			this._cnpj = cnpj;
		}
		
		public override function readExternal(input:IDataInput):void {
			super.readExternal(input);
			_bairro = input.readObject() as String;                       
			_cep = input.readInt();                             
			_cnaePrincipal = input.readObject() as String;                
			_cnpj = input.readObject() as String;                
		}
		
		public override function writeExternal(output:IDataOutput):void {
			super.writeExternal(output);
			output.writeObject(_bairro);                       
			output.writeInt(_cep);                             
			output.writeObject(_cidadeExterior);               
			output.writeObject(_cnaePrincipal);                
		}
	}
}