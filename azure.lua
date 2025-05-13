<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Kocsten - Premium Content</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      color: #333;
      text-align: center;
      padding: 20px;
    }

    /* Navigation Menu */
    nav {
      background-color: #333;
      overflow: hidden;
    }

    nav a {
      float: left;
      display: block;
      color: white;
      text-align: center;
      padding: 14px 20px;
      text-decoration: none;
    }

    nav a:hover {
      background-color: #ddd;
      color: black;
    }

    h1 {
      color: #4CAF50;
    }

    #premium-content {
      display: none;
      margin-top: 20px;
      background-color: #4CAF50;
      color: white;
      padding: 20px;
      border-radius: 5px;
    }

    button {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
      border-radius: 5px;
    }

    button:hover {
      background-color: #45a049;
    }

    .alert {
      color: red;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <!-- Navigation Menu -->
  <nav>
    <a href="#home">Home</a>
    <a href="#premium">Premium Content</a>
    <a href="#contact">Contact</a>
  </nav>

  <h1>Welcome to Kocsten!</h1>
  <p>This is a demo website with Premium features just for you.</p>

  <!-- Premium Content -->
  <div id="premium-content">
    <h2>This is the Premium Content of Kocsten</h2>
    <p>Only users with access rights can view this content.</p>
  </div>

  <!-- Alert when not a Premium user -->
  <p id="alert-message" class="alert" style="display: none;">You need to upgrade your account to view this content.</p>

  <!-- Button to view Premium Content -->
  <button onclick="showPremiumContent()">View Premium Content</button>

  <script>
    // Function to check access rights and display premium content
    function showPremiumContent() {
      const isLoggedIn = confirm("Are you a Premium user of Kocsten?");
      const alertMessage = document.getElementById("alert-message");
      
      if (isLoggedIn) {
        document.getElementById("premium-content").style.display = "block";
        alertMessage.style.display = "none"; // Hide alert when the user is Premium
      } else {
        alertMessage.style.display = "block"; // Show alert when not a Premium user
        document.getElementById("premium-content").style.display = "none"; // Hide premium content
      }
    }
  </script>
</body>
</html>