
package recursosJava;

public class Felino extends Mascota {
    private boolean libreDeToxoplasmosis;

    public Felino(String nombre, String raza, String color, int edad, boolean libreDeToxoplasmosis) {
        super(nombre, raza, color, edad);
        this.libreDeToxoplasmosis = libreDeToxoplasmosis;
    }

    public boolean isLibreDeToxoplasmosis() {
        return libreDeToxoplasmosis;
    }

    public void setLibreDeToxoplasmosis(boolean libreDeToxoplasmosis) {
        this.libreDeToxoplasmosis = libreDeToxoplasmosis;
    }

}
