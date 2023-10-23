<?php

require_once 'helper/connection.php';
session_start();
if (isset($_POST['masuk'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];

  $sql = "SELECT * FROM login WHERE username='$username' and password='$password' LIMIT 1";
  $result = mysqli_query($connection, $sql);

  $row = mysqli_fetch_assoc($result);
  if ($row) {
    $_SESSION['login'] = $row;
    header('Location: login.php');
  }
}

if (isset($_POST['daftar'])) {
  $nama = $_POST['name'];
  $email = $_POST['email'];
  $username = $_POST['username'];
  $password = $_POST['password'];

  $query = "INSERT INTO user (nama, email, username, password) VALUES ('$nama', '$email', '$username', '$password')";
  mysqli_query($connection, $query);

  // Redirect ke halaman setelah mendaftar
  header('Location: user/index.php');
  exit();
}
?>

<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Welcome - CampusSeminarHub</title>
    <link rel="icon" href="assets/images/logo2.png" type="image/x-icon">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
  </head>

  <body>
    <div class="container" id="container">
      <div class="form-container sign-up-container">
        <form method="POST" action="">
          <h1>Buat Akun</h1>
          <span><br></span>
          <input type="text" name="name" placeholder="Nama" required/>
          <input type="email" name="email" placeholder="Email" required/>
          <input type="text" name="username" placeholder="Username" required/>
          <input type="password" name="password" placeholder="Password" required/>

          <button type="submit" name="daftar">Daftar</button>
        </form>
      </div>
      <div class="form-container sign-in-container">
        <form method="POST" action="index.php">
          <h1>Login</h1>
          <?php 
          if(isset($_GET['pesan'])){
            if($_GET['pesan']=="gagal"){
              echo "<div class='alert'>Username dan Password tidak sesuai !</div>";
            }
          }
          ?>
          <span><br></span>
          <?php if(isset($_GET['msg'])) echo $_GET['msg']?>
          <input type="text" name="username" placeholder="Username" />
          <input type="password" name="password" placeholder="Password" />
          <a href="#">Forgot your password?</a>
          <button type="submit" name="masuk">Masuk</button>
        </form>
      </div>
      <div class="overlay-container">
        <div class="overlay">
          <div class="overlay-panel overlay-left">
            <h1>Hello, Friend!</h1>
            <p>Masukkan detail pribadi Anda dan mulailah perjalanan bersama kami.<br><br>
              <span style="white-space: nowrap;">
                &#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472; atau &#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;
              </span>
            </p>
            <button class="ghost" id="signIn">Masuk</button>
          </div>
          <div class="overlay-panel overlay-right">
            <h1>Welcome Back!</h1>
            <p>Untuk tetap terhubung dengan kami, silakan masuk dengan informasi pribadi Anda.<br><br>
              <span style="white-space: nowrap;">
                &#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472; atau &#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;
              </span>
            </p>
            <button class="ghost" id="signUp">Daftar</button>
          </div>
        </div>
      </div>
    </div>

    <footer>
      <p>
      Copyright © 2023 <a href="#">CampusSeminarHub</a>. All rights reserved. 
      </p>
    </footer>

    <script src="assets/js/custom.js"></script>
  </body>

</html>
