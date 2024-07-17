<!DOCTYPE html>
<html lang="en">    
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100vh;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 1rem;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        nav a {
            margin: 0 1rem;
            padding: 0.5rem 1rem;
            text-decoration: none;
            color: #fff;
            background-color: #4CAF50;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: #45a049;
        }

        main {
            padding: 2rem;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 0.5rem;
            position: fixed;
            bottom: 0;
            width: 100%;
            text-align: center;
        }
    </style>
</head>    
<body>    
    <header>
        <h1>Welcome to Javatpoint!</h1>
    </header>
    <nav>
        <a href="user">User</a>
        <a href="admin">Admin</a>
    </nav>
    <main>
        <p>Selecciona uno para navegar a la pagina correspondiente.</p>
    </main>
    <footer>
        &copy; 2024 Grupo 16. Programacion avanzada 1 TUSI.
    </footer>
</body>    
</html>
