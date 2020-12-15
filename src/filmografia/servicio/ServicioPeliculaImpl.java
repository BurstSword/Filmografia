package filmografia.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

import filmografia.entidades.Pelicula;
import filmografia.repositorio.FilmografiaRepositorio;

/**
 * Clase que conecta con la tabla Pelicula de la base de datos
 * @author usuario
 *
 */
@Service
public class ServicioPeliculaImpl implements ServicioPelicula{

	@Autowired
	private FilmografiaRepositorio repositorio;
	
	/**
	 * Busca películas por director
	 */
	@Override
	@Transactional
	public List<Pelicula> buscarPeliculaPorDirector(String director) {
		
		List<Pelicula> peliculas = repositorio.getPelicula(director);
		return peliculas;
		
	}

	/**
	 * Lista todas las películas de la base de datos
	 */
	@Override
	public List<Pelicula> listarPeliculas() {
		return repositorio.findAll();
	}

	/**
	 * Guarda una película en la base de datos
	 */
	@Override
	@Transactional
	public void guardarPelicula(Pelicula pelicula) {
		
		repositorio.save(pelicula);
	}

	/**
	 * Borra una película de la base de datos
	 */
	@Override
	public void borrarPelicula(int id) {
		repositorio.deleteById(id);
	}

	/**
	 * Pide una película en específico de la base de datos
	 */
	@Override
	public Pelicula pedirPelicula(int id) {
		Optional <Pelicula> peliculaOp = repositorio.findById(id);
		Pelicula pelicula = peliculaOp.get();
		return pelicula;
	}

}
