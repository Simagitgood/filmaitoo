<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="lt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmaitoo</title>
    <style>
        body {
            background-color: lightskyblue;
            color: black;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        .container {
            margin: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .loginas {
            margin-top: 20px;
            padding: 20px;
            background-color: mediumpurple;
            text-align: center;
            border-radius: 15px;
        }

        .buttonlogin, .buttonregister {
            margin-top: 10px;
            width: 200px;
            height: 40px;
            border: none;
            border-radius: 15px;
            color: black;
            cursor: pointer;
            background-color: transparent;
            font-size: 16px;
        }

        .buttonlogin:hover, .buttonregister:hover {
            background-color: #fff;
            color: mediumpurple;
        }

        .inputs {
            width: calc(100% - 40px);
            height: 30px;
            margin-bottom: 15px;
            border: none;
            background-color: azure;
            border-bottom: 3px solid cyan;
            color: black;
            padding: 5px;
            font-size: 16px;
        }

        input::placeholder {
            color: black;
        }

        input, textarea {
            color: black;
            font-size: 16px;
            background: transparent;
        }

        footer {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h2>Sveiki atvykę!</h2>

<div class="container">
    <div class="loginas">
        <p style="font-size: 30px;"><strong><u>Prisijungti:</u></strong></p>
        <input id="vardas" class="inputs" minlength="3" maxlength="15" required placeholder="Prisijungimo Vardas" type="text">
        <input id="slaptazodis" class="inputs" minlength="7" maxlength="15" required placeholder="Slaptažodis" type="password">
        <button onclick="prisijungti()" id="loginas" type="button" class="buttonlogin"><strong> Prisijungti </strong></button>
        <button onclick="registruotis()" id="register" type="button" class="buttonregister"><strong> Registruotis </strong></button>
    </div>
</div>

<footer>
    <p>&copy; 2024 Filmų Svetainė</p>
</footer>

<script>
    function prisijungti() {
        const vardas = document.getElementById('vardas').value;
        const slaptazodis = document.getElementById('slaptazodis').value;

        if (vardas === "vardas123" && slaptazodis === "123456") {
            window.location = "vartotojas.html";
        } else if (vardas === "admin" && slaptazodis === "789456") {
            window.location = "admin.html";
        } else {
            alert('Slaptažodis arba prisijungimo vardas neteisingas!');
        }
    }
    function registruotis() {
        window.location.href = "reg.html";
    }
</script>
</body>
</html>

