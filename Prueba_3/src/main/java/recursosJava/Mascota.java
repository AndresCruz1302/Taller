
package recursosJava;

import java.util.UUID;

public abstract class Mascota {
    private String nombre;
    private String raza;
    private String color;
    private int edad;
    private static int contadorId = 1;
    private int id;
    private String tipo;

    public Mascota(String nombre, String raza, String color, int edad) {
        this.nombre = nombre;
        this.raza = raza;
        this.color = color;
        this.edad = edad;
        this.id = contadorId++;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
    
    public int getId() {
        return this.id;
    }

    public String getTipo() {
    if (this instanceof Canino) {
        return "Canino";
    } else if (this instanceof Felino) {
        return "Felino";
    } else {
        return "Desconocido";
    }
}

}

