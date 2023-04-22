
package recursosJava;

import java.util.ArrayList;

public class AgregarMascotas {
    
    private ArrayList<Mascota> mascotas;

    public AgregarMascotas() {
        mascotas = new ArrayList<Mascota>();
    }

    public void agregarMascota(Mascota mascota) {
        mascotas.add(mascota);
    }

    public void eliminarMascota(int indice) {
        mascotas.remove(indice);
    }

    public ArrayList<Mascota> obtenerMascotas() {
        return mascotas;
    }

    public ArrayList<Mascota> getMascotas() {
        return mascotas;
    }

    public void setMascotas(ArrayList<Mascota> mascotas) {
        this.mascotas = mascotas;
    }
    
}
