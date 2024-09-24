package br.edu.ifsp.dsw1;

public class Usuario {

	private String nome;
	private String email;
	private String timezone;
	
	public Usuario() { }

	public Usuario(String nome, String email, String timezone) {
		super();
		this.nome = nome;
		this.email = email;
		this.timezone = timezone;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTimezone() {
		return timezone;
	}

	public void setTimezone(String timezone) {
		this.timezone = timezone;
	}
	
}
