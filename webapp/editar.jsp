<%@ page import="Modelo.Libro" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Editar Libro</title>
</head>
<body>
<h1>Editar Libro</h1>

<form action="libro" method="POST">
  <input type="hidden" name="isbn" value="<%= request.getAttribute("libro") != null ? ((Libro) request.getAttribute("libro")).getIsbn() : "" %>" />
  <label for="titulo">Título:</label>
  <input type="text" id="titulo" name="titulo" value="<%= request.getAttribute("libro") != null ? ((Libro) request.getAttribute("libro")).getTitulo() : "" %>" required><br>

  <label for="autor">Autor:</label>
  <input type="text" id="autor" name="autor" value="<%= request.getAttribute("libro") != null ? ((Libro) request.getAttribute("libro")).getAutor() : "" %>" required><br>

  <button type="submit">Actualizar Libro</button>
</form>

</body>
</html>
