package org.example.practica9;

import fecha.JspCalendar;

import java.time.LocalDate;
import java.time.Period;

public class Persona {
    private String nombre;
    private String apellido;
    private LocalDate fechaNacimiento;
    private String imagenPerfil;

    public Persona() {}

    public Persona(String nombre, String apellido, LocalDate fechaNacimiento, String imagenPerfil) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechaNacimiento = fechaNacimiento;
        this.imagenPerfil = imagenPerfil;
    }


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public LocalDate getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(LocalDate fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getImagenPerfil() {
        return imagenPerfil;
    }

    /*public int calcularEdad() {
        return Period.between(fechaNacimiento, LocalDate.now()).getYears();
    }*/

    public int calcularEdad() {
    JspCalendar calendar = new JspCalendar(); // Crear instancia de JspCalendar

    int añoActual = calendar.getYear();
    int mesActual = calendar.getMonthInt();
    int diaActual = calendar.getDayOfMonth();

    // Calcular la edad
    int edad = añoActual - fechaNacimiento.getYear();

    // Ajustar si el cumpleaños aún no ha pasado en el año actual
    if (mesActual < fechaNacimiento.getMonthValue() ||
        (mesActual == fechaNacimiento.getMonthValue() && diaActual < fechaNacimiento.getDayOfMonth())) {
        edad--;
    }

    return edad;
}

    public String getSignoZodiaco() {
        return Zodiaco.obtenerSigno(fechaNacimiento);
    }
}
