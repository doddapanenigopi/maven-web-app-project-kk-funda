<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KK FUNDA | AWS DevOps Portal</title>
<link href="images/kkfunda.jpg" rel="icon">

<!-- Add Google Fonts and CSS styling -->
<style>
    body {
        background: linear-gradient(135deg, #1e3c72, #2a5298);
        color: #fff;
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
    }
    h1, h3 {
        text-align: center;
        margin: 10px 0;
    }
    hr {
        border: 0;
        height: 2px;
        background: #ffcc00;
        width: 80%;
        margin: 20px auto;
    }
    .ip-section {
        background-color: rgba(255,255,255,0.1);
        border-radius: 12px;
        width: 60%;
        margin: 20px auto;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0,0,0,0.3);
        text-align: center;
    }
    .footer {
        background-color: rgba(0,0,0,0.3);
        text-align: center;
        padding: 15px;
        margin-top: 40px;
    }
    .footer a {
        color: #ffcc00;
        text-decoration: none;
    }
    .footer a:hover {
        text-decoration: underline;
    }
    .contact {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 15px;
        flex-wrap: wrap;
        margin: 20px auto;
    }
    .contact img {
        border-radius: 10px;
        width: 100px;
        height: 100px;
    }
    .contact span {
        font-weight: bold;
        text-align: left;
    }
    a.service-link {
        color: #00ffff;
        font-weight: bold;
        text-decoration: none;
    }
    a.service-link:hover {
        color: #ffcc00;
    }
</style>
</head>
<body>

<h1>🌟 Welcome to AWS DevOps Portal 🌟</h1>
<h1>🚀 KK FUNDA</h1>

<hr>

<div class="ip-section">
    <h3>🌐 Server Side IP Address</h3>
    <%
        String ip = "";
        InetAddress inetAddress = InetAddress.getLocalHost();
        ip = inetAddress.getHostAddress();
        out.println("<p><b>Server Host Name:</b> " + inetAddress.getHostName() + "</p>");
        out.println("<p><b>Server IP Address:</b> " + ip + "</p>");
    %>
</div>

<div class="ip-section">
    <h3>💻 Client Side IP Address</h3>
    <%
        out.print("<p><b>Client IP Address:</b> " + request.getRemoteAddr() + "</p>");
        out.print("<p><b>Client Host Name:</b> " + request.getRemoteHost() + "</p>");
    %>
</div>

<hr>

<div class="contact">
    <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
    <span>
        KK FUNDA, Beasant Rd ,Vijayawada<br>
        📞 +91-9676831734 | ✉️ <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a><br>
        <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
    </span>
</div>

<hr>

<p style="text-align:center;">
    🔍 Service: 
    <a class="service-link" href="services/employee/getEmployeeDetails">Get Employee Details</a>
</p>

<div class="footer">
    <p>KK FUNDA Training & Development Center © 2024<br>
    Made with ❤️ by <a href="https://google.com/">KK FUNDA</a></p>
</div>

</body>
</html>
