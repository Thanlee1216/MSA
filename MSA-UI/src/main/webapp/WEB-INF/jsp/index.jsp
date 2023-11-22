<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <title>Move Blocks</title>
</head>

<body>
<div class="header">
    <div class="logo">Logo</div>
    <div class="menu">
        <div class="login-button">Login</div>
        <div class="signup-button">Sign Up</div>
    </div>
</div>
<div class="container">
    <div class="navigation">
        <div id="menuToggle" class="menu-toggle">&#9776; Menu</div>
        <div class="menu">
            <div class="menu-item">Menu Item 1</div>
            <div class="menu-item">Menu Item 2</div>
            <div class="menu-item">Menu Item 3</div>
        </div>
        <div id="hideButton" class="hide-button">Hide Menu</div>
    </div>
    <div class="main-content">
        <div class="title">작업 블록</div>
        <div class="sub-title">블록을 클릭하고 드래그하여 자유롭게 수정하세요!</div>
        <div id="content" class="content"></div>
    </div>
</div>
<script src="script.js"></script>
</body>

</html>
