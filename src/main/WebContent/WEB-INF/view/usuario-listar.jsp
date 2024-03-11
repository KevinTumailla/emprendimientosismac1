<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>		
	<h1> Usuario </h1>
	
	<button>
		<a href="${pageContext.request.contextPath}/usuario/findOne?opcion=1">Agregar</a>
	</button>
	
	<table>
		<thead>
			<tr>
				<th>idUsuario</th>
				<th>cedula</th>
				<th>nombre</th>
				<th>apellido</th>
				<th>fechadenacimiento</th>
				<th>direccion</th>
				<th>telefono</th>
				<th>correo</th>
				<th>genero</th>
				
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${usuario}">
				<tr>
					<td>${item.idUsuario}</td>
					<td>${item.cedula}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${fn:substring(item.fechadenacimiento,0,10)}</td>
					<td>${item.direccion}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
					<td>${item.genero}</td>
					
					<td>
						<button><a href="${pageContext.request.contextPath}/usuario/findOne?idUsuario=${item.idUsuario}&opcion=1">Actualizar</a></button>
						<button><a href="${pageContext.request.contextPath}/usuario/findOne?idUsuario=${item.idUsuario}&opcion=2">Eliminar</a></button>
					</td>
				</tr>
			</c:forEach>			
		</tbody>
	</table>		
</body>
</html>