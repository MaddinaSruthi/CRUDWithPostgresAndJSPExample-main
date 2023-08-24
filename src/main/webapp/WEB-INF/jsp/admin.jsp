<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            margin: 0;
        }

        p {
            text-align: center;
            margin-top: 20px;
        }

        nav {
            background-color: #444;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 10px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Admin Page</h1>
    <p>Welcome to the Home Page</p>
    <nav>
        <a href="/addAdmin">Register New admin</a> 
        <a href="/viewAdminList">View all admin Details</a> 
        <a href="/admin">Admin Portal</a>
        <a href="/home">Home page</a>
    </nav>

</body>
</html>
