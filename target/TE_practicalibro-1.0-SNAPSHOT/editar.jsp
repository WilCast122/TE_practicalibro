<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL- Tareas</title>
    </head>
    <body>
    <center><h1>
            <c:if test="${requestScope.op == 'nuevo'}" var="res" scope="request">
                Resgistro de 
            </c:if>
            <c:if test="${requestScope.op == 'modificar'}" var="res" scope="request">
                Modificar
            </c:if>
            Libros
        </h1></center>
        <jsp:useBean id="miLibro" scope="request" class="com.emergentes.modelo.Libro"/>
    <center><form action="Controller" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id"
                               value="<jsp:getProperty name="miLibro" property="id"/>">    
                    </td>
                </tr>
                <tr>
                    <td>Titulo</td>
                    <td><input type ="text" name="titulo"
                               value="<jsp:getProperty name="miLibro" property="titulo" />"/>
                    </td>
                </tr>
                <tr>
                    <td>Autor</td>
                    <td><input type ="text" name="autor"
                               value="<jsp:getProperty name="miLibro" property="autor" />"/>
                    </td>
                </tr>
                <tr>
                    <td>Resumen</td>
                    <td><input type ="text" name="resumen"
                               value="<jsp:getProperty name="miLibro" property="resumen" />"/>
                    </td>
                </tr>
                <tr>
                    <td><label for="">Medio</label></td>
                <br>
                <td><input type="radio" name="medio" value="Fisico" <c:if test="${miLibro.medio == 'Fisico'}"
                      var="res" scope="request">
                               selected
                           </c:if>>
                    <label for="f">Fisico</label></td> 
                <td><br></td>
                <td><input type="radio" name="medio" value="Magnetico"  <c:if test="${miLibro.medio == 'Magnetico'}"
                      var="res" scope="request">
                               selected
                           </c:if>> 
                    <label for="m">Magnetico</label></td> 
                </tr>
                <br>

                <tr>
                    <td>
                        <input type="hidden" name="opg" value="${requestScope.op}"/>
                        <input type="hidden" name="op" value="grabar"/>
                    </td>
                    <td><input type="submit" value="Enviar"/> </td>
                </tr>
            </table>
        </form></center> 
</body>
</html>

