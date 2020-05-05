package privada.dao;

import privada.modelo.Usuario;

public interface UsuarioDAO extends GenericDAO<Usuario, String>{

	public Usuario logIn(Usuario entity);
}
