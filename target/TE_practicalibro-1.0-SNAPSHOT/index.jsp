<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%@page import="com.emergentes.modelo.GestorLibro"%>
<%
    if (session.getAttribute("agenda") == null) {
        GestorLibro objeto1 = new GestorLibro();

        objeto1.insertarLibro(new Libro(1, "Fabula", "Richar Gomez", "cientos de cuentos para leer", "Fisico"));
        objeto1.insertarLibro(new Libro(2,  "Estadistica Avanzada", "Carlos Whiester", "Formulas matematicas para estadistica", "Fisico"));
        objeto1.insertarLibro(new Libro(3,  "Metalurgia", "Yandira Castillo", "Metodos y descripciones de mineria", "Magnetico"));
        

        session.setAttribute("agenda", objeto1);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Lista de Libros</h1>
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Resumen</th>
                <th>Media</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.autor}</td>
                    <td>${item.resumen}</td>
                    <td>${item.medio}</td>
                    <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                    <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
                </tr>
                </c:forEach>
            </table>
        </center>
        </body>
    </html>
