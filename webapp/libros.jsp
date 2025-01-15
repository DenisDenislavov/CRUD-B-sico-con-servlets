<%@ page import="Modelo.Libro" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Lista de Libros</title>
</head>
<body>
<h1>Lista de Libros</h1>

<table border="1">
  <tr>
    <th>ISBN</th>
    <th>Titulo</th>
    <th>Autor</th>
    <th>Acciones</th>
  </tr>

  <%
    List<Libro> libros = (List<Modelo.Libro>) request.getAttribute("libros");

    if (libros != null) {
      for (Modelo.Libro libro : libros) {
  %>
  <tr>
    <td><%= libro.getIsbn() %></td>
    <td><%= libro.getTitulo() %></td>
    <td><%= libro.getAutor() %></td>
    <td>
      <a href="libro?isbn=<%= libro.getIsbn() %>">Ver</a>
      <a href="libro?isbn=<%= libro.getIsbn() %>&action=edit">Editar</a>
      <a href="libro?isbn=<%= libro.getIsbn() %>&action=delete">Eliminar</a>
    </td>
  </tr>
  <%
    }
  } else {
  %>
  <tr><td colspan="4">No hay libros disponibles.</td></tr>
  <% } %>
</table>

<form action="libro" method="POST">
  <h2>Agregar nuevo libro</h2>
  <label for="isbn">ISBN:</label><input type="text" id="isbn" name="isbn" required><br>
  <label for="titulo">Titulo:</label><input type="text" id="titulo" name="titulo" required><br>
  <label for="autor">Autor:</label><input type="text" id="autor" name="autor" required><br>
  <button type="submit">Agregar libro</button>
</form>

</body>
</html>
