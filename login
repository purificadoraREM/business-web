<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <style>
    body {
      font-family: Arial;
      background: #f3f3f3;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .login-box {
      background: white;
      padding: 20px;
      border-radius: 10px;
      width: 300px;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
    }
    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      width: 100%;
      padding: 10px;
      border: none;
      background: #007bff;
      color: white;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background: #0056b3;
    }
    #error {
      color: red;
      margin-top: 10px;
      text-align: center;
    }
  </style>
</head>
<body>

  <div class="login-box">
    <h3 style="text-align:center;">Iniciar Sesión</h3>

    <input type="text" id="user" placeholder="Usuario">
    <input type="password" id="pass" placeholder="Contraseña">

    <button onclick="login()">Entrar</button>

    <div id="error"></div>
  </div>

<script>
  function login() {
    const u = document.getElementById("user").value;
    const p = document.getElementById("pass").value;

    // Usuario y contraseña fijos (solo por ahora)
    const USER = "admin";
    const PASS = "1234";

    if (u === USER && p === PASS) {
      window.location.href = "index.html"; // <-- tu página principal
    } else {
      document.getElementById("error").innerText = "Usuario o contraseña incorrectos";
    }
  }
</script>

</body>
</html>
