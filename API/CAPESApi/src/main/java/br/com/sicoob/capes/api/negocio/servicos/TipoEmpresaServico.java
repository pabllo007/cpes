package br.com.sicoob.capes.api.negocio.servicos;

import java.util.List;

import br.com.bancoob.excecao.BancoobException;
import br.com.sicoob.capes.api.negocio.vo.TipoEmpresaVO;

public interface TipoEmpresaServico extends CAPESApiServico {
	
	List<TipoEmpresaVO> listar() throws BancoobException;
	
}