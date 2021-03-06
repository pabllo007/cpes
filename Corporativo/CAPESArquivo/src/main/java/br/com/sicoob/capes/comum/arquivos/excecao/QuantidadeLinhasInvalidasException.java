/*
 * SICOOB
 * 
 * QuantidadeLinhasInvalidasException.java(br.com.sicoob.capes.comum.arquivos.excecao.QuantidadeLinhasInvalidasException)
 */
package br.com.sicoob.capes.comum.arquivos.excecao;

/**
 * Classe de exce��o da hierarquia de exce��es do componente de importa��o e exporta��o de arquivos texto
 * (capes-arquivo) que indica a quantidade de linhas declaradas no arquivo est� diferente das linhas existentes no
 * arquivo
 * 
 * Criado em 21/7/2014
 * 
 * @author rodrigo.chaves
 */
public class QuantidadeLinhasInvalidasException extends ArquivoInvalidoException {

	/** A Constante serialVersionUID. */
	private static final long serialVersionUID = 3888434958750812976L;

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param forcaExcecao
	 *            the forca excecao
	 * @param chave
	 *            the chave
	 * @param parametros
	 *            the parametros
	 */
	public QuantidadeLinhasInvalidasException(boolean forcaExcecao, String chave, Object... parametros) {

		super(forcaExcecao, chave, parametros);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param forcaExcecao
	 *            the forca excecao
	 * @param chave
	 *            the chave
	 * @param parametros
	 *            the parametros
	 * @param excecao
	 *            the excecao
	 */
	public QuantidadeLinhasInvalidasException(boolean forcaExcecao, String chave, Object[] parametros, Throwable excecao) {

		super(forcaExcecao, chave, parametros, excecao);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param forcaExcecao
	 *            the forca excecao
	 * @param chave
	 *            the chave
	 * @param excecao
	 *            the excecao
	 */
	public QuantidadeLinhasInvalidasException(boolean forcaExcecao, String chave, Throwable excecao) {

		super(forcaExcecao, chave, excecao);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param forcaExcecao
	 *            the forca excecao
	 * @param chave
	 *            the chave
	 */
	public QuantidadeLinhasInvalidasException(boolean forcaExcecao, String chave) {

		super(forcaExcecao, chave);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param forcaExcecao
	 *            the forca excecao
	 * @param excecao
	 *            the excecao
	 */
	public QuantidadeLinhasInvalidasException(boolean forcaExcecao, Throwable excecao) {

		super(forcaExcecao, excecao);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param chave
	 *            the chave
	 * @param parametros
	 *            the parametros
	 */
	public QuantidadeLinhasInvalidasException(String chave, Object... parametros) {

		super(chave, parametros);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param chave
	 *            the chave
	 * @param parametros
	 *            the parametros
	 * @param excecao
	 *            the excecao
	 */
	public QuantidadeLinhasInvalidasException(String chave, Object[] parametros, Throwable excecao) {

		super(chave, parametros, excecao);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param chave
	 *            the chave
	 * @param excecao
	 *            the excecao
	 */
	public QuantidadeLinhasInvalidasException(String chave, Throwable excecao) {

		super(chave, excecao);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param chave
	 *            the chave
	 */
	public QuantidadeLinhasInvalidasException(String chave) {

		super(chave);
	}

	/**
	 * Cria uma nova inst�ncia de quantidade linhas invalidas exception.
	 * 
	 * @param excecao
	 *            the excecao
	 */
	public QuantidadeLinhasInvalidasException(Throwable excecao) {

		super(excecao);
	}

}