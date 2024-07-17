<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
   
    <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
<title>Admin</title>
<style>
        .colored-bar {
            width: 100%;
            height: 50px;
            background-color: #2C293B; /* Cambia este color según tu preferencia */
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 24px;
            font-weight: bold;
        }
    </style>

</head>
	
<body>
<div class="colored-bar">
    Clientes
</div>
Welcome to admin page!  
<a href="logout">logout</a> <br><br>  
	<security:authorize access="hasRole('ADMIN')">  
	</security:authorize>  
	<security:csrfInput/> 
	<table id="tablaClientes" class="display">
	    <thead>
	        <tr>
	            <th>Dni</th>
	            <th>Nombre</th>
	            <th>Apellido</th>
	            <th>Direccion</th>
	            <th>Codigo Postal</th>
	            <th>Provincia</th>
	            <th>Nacionalidad</th>
	            <th>Fecha de nacimiento</th>
	            <th>Email</th>
	            <th>Telefono</th>
	        </tr>
	    </thead>
	    <tbody>
	        <tr>
	            <td>12345678</td>
	            <td>Carlos</td>
	            <td>Luna</td>
	            <td>Avenida 123</td>
	            <td>1646</td>
	            <td>Buenos Aires</td>
	            <td>Argentina</td>
	            <td>08/07/1989</td>
	            <td>carlos@gmail.com</td>
	            <td>1122233445</td>
	        </tr>
	          <tr>
            <td>12345678</td>
            <td>Juan</td>
            <td>Pérez</td>
            <td>Calle Siempre Viva 123</td>
            <td>1000</td>
            <td>Buenos Aires</td>
            <td>Argentina</td>
            <td>1980-01-15</td>
            <td>juan.perez@gmail.com</td>
            <td>123456789</td>
        </tr>
        <tr>
            <td>87654321</td>
            <td>Maria</td>
            <td>Gomez</td>
            <td>Av. Siempre Viva 742</td>
            <td>2000</td>
            <td>Córdoba</td>
            <td>Argentina</td>
            <td>1990-05-22</td>
            <td>maria.gomez@gmail.com</td>
            <td>987654321</td>
        </tr>
        <tr>
            <td>11223344</td>
            <td>Carlos</td>
            <td>Fernandez</td>
            <td>Diagonal Norte 456</td>
            <td>3000</td>
            <td>Rosario</td>
            <td>Argentina</td>
            <td>1985-08-30</td>
            <td>carlos.fernandez@gmail.com</td>
            <td>1122334455</td>
        </tr>
        <tr>
            <td>55667788</td>
            <td>Ana</td>
            <td>Martinez</td>
            <td>San Martín 789</td>
            <td>4000</td>
            <td>Mendoza</td>
            <td>Argentina</td>
            <td>1995-11-10</td>
            <td>ana.martinez@gmail.com</td>
            <td>5566778899</td>
        </tr>
        <tr>
            <td>99887766</td>
            <td>Jorge</td>
            <td>Lopez</td>
            <td>Las Heras 321</td>
            <td>5000</td>
            <td>Salta</td>
            <td>Argentina</td>
            <td>1975-02-18</td>
            <td>jorge.lopez@gmail.com</td>
            <td>9988776655</td>
        </tr>
	    </tbody>
	</table> 
	<script>
    $(document).ready(function() {
        $('#tablaClientes').DataTable({
            "paging": true,           // Habilitar paginación
            "pageLength": 10,         // Número de filas por página
            "lengthMenu": [5, 10, 25, 50, 100], // Opciones de longitud de página
            "ordering": true,         // Habilitar ordenación de columnas
            "searching": true         // Habilitar búsqueda 
        });
    });
</script>    
</body>
</html>
