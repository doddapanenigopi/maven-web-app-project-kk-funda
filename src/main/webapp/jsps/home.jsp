<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA Home Page</title>
    <link href="images/Gopichand.jpg" rel="icon">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #f0f8ff, #e6f7ff);
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #006699;
        }

        h3 {
            color: #003366;
        }

        hr {
            border: none;
            height: 2px;
            background: #0099cc;
            margin: 20px 0;
        }

        .header {
            text-align: center;
            padding: 30px;
            background-color: #e0f7fa;
        }

        .container {
            padding: 20px 40px;
        }

        .footer {
            background-color: #004d66;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .contact-info {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .contact-info img {
            width: 100px;
            border-radius: 50%;
            border: 3px solid #0099cc;
        }

        .contact-info span {
            font-size: 14px;
            color: #003333;
        }

        a {
            color: #0077cc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
            color: #004080;
        }

        .highlight {
            font-weight: bold;
            color: #cc0000;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Welcome AWS DevOps</h1>
        <h1>KK FUNDA 🚀</h1>
    </div>

    <hr>

    <div class="container">
        <h3>🌐 Server Side IP Address</h3>
        <p>
            <% 
                String ip = "";
                InetAddress inetAddress = InetAddress.getLocalHost();
                ip = inetAddress.getHostAddress();
            %>
            <span class="highlight">Server Host Name:</span> <%= inetAddress.getHostName() %><br>
            <span class="highlight">Server IP Address:</span> <%= ip %>
        </p>

        <h3>🖥️ Client Side IP Address</h3>
        <p>
            <span class="highlight">Client IP Address:</span> <%= request.getRemoteAddr() %><br>
            <span class="highlight">Client Host Name:</span> <%= request.getRemoteHost() %>
        </p>

        <hr>

        <div class="contact-info">
            <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
            <span>
                <strong>KK FUNDA</strong><br>
                Martha Halli, Bangalore<br>
                📞 +91-9652823187<br>
                ✉️ <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a><br>
                💌 <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
            </span>
        </div>

        <hr>

        <p>🧰 Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>

    </div>

    <hr>

    <div class="footer">
        <p>KK FUNDA Training & Development Center.</p>
        <small>Copyright © 2024 |
            <a href="https://google.com/" style="color: white;">KK FUNDA</a>
        </small>
    </div>

</body>
</html>
