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
<title>User</title>

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
    Préstamos
</div>
Welcome to user page!   
<a href="logout">logout</a> <br><br>  
	<security:authorize access="hasRole('USER')">  
	</security:authorize>  
	<security:csrfInput/> 
	<table id="tablaPrestamos" class="display">
    <thead>
        <tr>
            <th>Nro Prestamo</th>
            <th>Fecha</th>
            <th>DNI Cliente</th>
            <th>Nombre y Apellido Cliente</th>
            <th>Monto</th>
            <th>Total de Cuotas</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>12345678</td>
            <td>15/01/2023</td>
            <td>12345678</td>
            <td>Carlos Luna</td>
            <td>15000</td>
            <td>12</td>
        </tr>
        <tr>
            <td>23456789</td>
            <td>20/02/2023</td>
            <td>23456789</td>
            <td>Juan Pérez</td>
            <td>20000</td>
            <td>24</td>
        </tr>
        <tr>
            <td>34567890</td>
            <td>30/03/2023</td>
            <td>34567890</td>
            <td>Maria Gomez</td>
            <td>25000</td>
            <td>36</td>
        </tr>
        <tr>
            <td>45678901</td>
            <td>10/04/2023</td>
            <td>45678901</td>
            <td>Carlos Fernandez</td>
            <td>30000</td>
            <td>48</td>
        </tr>
        <tr>
            <td>56789012</td>
            <td>15/05/2023</td>
            <td>56789012</td>
            <td>Ana Martinez</td>
            <td>35000</td>
            <td>60</td>
        </tr>
        <tr>
            <td>67890123</td>
            <td>20/06/2023</td>
            <td>67890123</td>
            <td>Jorge Lopez</td>
            <td>40000</td>
            <td>72</td>
        </tr>
    </tbody>
</table> 
<script>
    $(document).ready(function() {
        $('#tablaPrestamos').DataTable({
            "paging": true,          
            "pageLength": 10,         
            "lengthMenu": [5, 10, 25, 50, 100], 
            "ordering": true,         
            "searching": true         
        });
    });
</script>   
</body>
</html>