<!DOCTYPE html>
<html  lang="es">
<head>
    <title>Page Title</title>
</head>
<body>
<%@page language="java" import="java.util.*" %>
<H1>Bienvenido a JSPCalendar</H1>

<P>Hoy es</P>
<jsp:useBean id="zoodiaco" class="fecha.JspCalendar" />

<UL>
    <LI>D�a: <%= zoodiaco.getDayOfMonth() %>
    <LI>Mes: <%= zoodiaco.getMonthInt() %>
    string signo;
    switch (mes) {
    case 1:  (dia < 20) ? signo="Capricornio" : signo="Acuario";
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

</UL>
<%-- Check for AM or PM --%>
    <%! int time = Calendar.getInstance().get(Calendar.AM_PM); %>
