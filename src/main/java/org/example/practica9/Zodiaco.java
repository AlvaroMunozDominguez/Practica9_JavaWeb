package org.example.practica9;

import java.time.LocalDate;

public class Zodiaco {
    public static String obtenerSigno(LocalDate fechaNacimiento) {
        int dia = fechaNacimiento.getDayOfMonth();
        int mes = fechaNacimiento.getMonthValue();

        switch (mes) {
            case 1: return (dia < 20) ? "Capricornio" : "Acuario";
            case 2: return (dia < 19) ? "Acuario" : "Piscis";
            case 3: return (dia < 21) ? "Piscis" : "Aries";
            case 4: return (dia < 20) ? "Aries" : "Tauro";
            case 5: return (dia < 21) ? "Tauro" : "Géminis";
            case 6: return (dia < 21) ? "Géminis" : "Cáncer";
            case 7: return (dia < 23) ? "Cáncer" : "Leo";
            case 8: return (dia < 23) ? "Leo" : "Virgo";
            case 9: return (dia < 23) ? "Virgo" : "Libra";
            case 10: return (dia < 23) ? "Libra" : "Escorpio";
            case 11: return (dia < 22) ? "Escorpio" : "Sagitario";
            case 12: return (dia < 22) ? "Sagitario" : "Capricornio";
            default: return "Desconocido";
        }
    }
}
