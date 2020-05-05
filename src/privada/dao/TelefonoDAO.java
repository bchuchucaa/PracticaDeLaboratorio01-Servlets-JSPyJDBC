package privada.dao;

import java.util.List;

import privada.modelo.Telefono;
import privada.modelo.Usuario;

public interface TelefonoDAO extends GenericDAO<Telefono, Integer>{
		
	
	public List<Telefono> buscarPorIdTelfono(String entity);
}
