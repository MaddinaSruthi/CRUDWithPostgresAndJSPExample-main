<!DOCTYPE html>
<html>
<head>
    <title>Email Validation</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            text-align: center;
            padding: 80px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 700px;
            max-width: 100%;
        }
        .container h1 {
            margin-top: 0;
        }
        #emailForm {
            margin-top: 40px;
            width: 700px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Hospital Management System</h1>
        <h2>To Login! Please validate your Registered email id</h2>
        <form id="emailForm" action="/validate-email" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <p>${message}</p>
            <button type="submit">Check</button>
        </form>
    </div>
</body>
</html>
