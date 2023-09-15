<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="StyleSheets/User.css">
<link type="text/css" rel="stylesheet" href="StyleSheets/User2.css">
</head>
<body>
	<%
			if(session.getAttribute("UserName")==null)
				response.sendRedirect("index.jsp");
	%>
    <div class="NavHead">
        <span class="logo">Neelam Cineplex, Jalna</span>
        <span class="NavBtn">
            <span>
                <button id="HomeBtn">Home</button>
            </span>
            <span>
            <form action="UserLogOUt" method="post">
                <button>Log-Out</button>
            </form>
            </span>
            <span>
                <button>About Us</button>
            </span>
            <span>
                <button>Location</button>
            </span>
            <span>
                <button>Contact</button>
            </span>
        </span>
    </div>
    <div class="container">
        <div class="SideBar">
            <span>
                <button id="showProfileBtn">Profile</button>
            </span>
            <span>
                <button id="showTdBtn">Shows For Today</button>
            </span>
            <span>
                <button id="showAvlstBtn">Available Seats</button>
            </span>
            <span>
                <button id="showScreenBtn">Screens</button>
            </span>
            <span>
                <button id="showBookFormBtn">Book your Movie</button>
            </span>
        </div>
        <div class="PosterWall">
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.VEQZvF9VcaCtzSvKyTBZkAHaMO?w=182&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ycdgKbKqfKc7P4XGdjabBAHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ENGXVkPyXJk1eEeDLjWWvAHaKs?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.eN3homKZcJ8CVgdc_BZnXQHaKu?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.dEbPxj18bNj9l-euThiMMgHaKq?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.suKqVyET3FMiZ67w8cQ8cQHaKg?w=182&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ddR0cODI4lTRXMKKivmWhgHaK-?w=182&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.x4WOIeDJwUfa38gGWl6f3AHaKH?w=182&h=250&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.LSs0XPuTWEC8zl8_Gqx4DQHaJ4?w=182&h=242&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.pvL4A7WPqec_KMbZ00S9dgHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.p9j5ofVZSj-IOEpFzdM9pgHaLh?w=182&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.N-IfXzWBl0h_gXcp9tYftwHaJ4?w=182&h=243&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.VEQZvF9VcaCtzSvKyTBZkAHaMO?w=182&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ycdgKbKqfKc7P4XGdjabBAHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ENGXVkPyXJk1eEeDLjWWvAHaKs?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.eN3homKZcJ8CVgdc_BZnXQHaKu?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.dEbPxj18bNj9l-euThiMMgHaKq?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.suKqVyET3FMiZ67w8cQ8cQHaKg?w=182&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ddR0cODI4lTRXMKKivmWhgHaK-?w=182&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.x4WOIeDJwUfa38gGWl6f3AHaKH?w=182&h=250&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.LSs0XPuTWEC8zl8_Gqx4DQHaJ4?w=182&h=242&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.pvL4A7WPqec_KMbZ00S9dgHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.p9j5ofVZSj-IOEpFzdM9pgHaLh?w=182&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.N-IfXzWBl0h_gXcp9tYftwHaJ4?w=182&h=243&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.VEQZvF9VcaCtzSvKyTBZkAHaMO?w=182&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ycdgKbKqfKc7P4XGdjabBAHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ENGXVkPyXJk1eEeDLjWWvAHaKs?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.eN3homKZcJ8CVgdc_BZnXQHaKu?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.dEbPxj18bNj9l-euThiMMgHaKq?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.suKqVyET3FMiZ67w8cQ8cQHaKg?w=182&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ddR0cODI4lTRXMKKivmWhgHaK-?w=182&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.x4WOIeDJwUfa38gGWl6f3AHaKH?w=182&h=250&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.LSs0XPuTWEC8zl8_Gqx4DQHaJ4?w=182&h=242&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.pvL4A7WPqec_KMbZ00S9dgHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.p9j5ofVZSj-IOEpFzdM9pgHaLh?w=182&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.N-IfXzWBl0h_gXcp9tYftwHaJ4?w=182&h=243&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.VEQZvF9VcaCtzSvKyTBZkAHaMO?w=182&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ycdgKbKqfKc7P4XGdjabBAHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ENGXVkPyXJk1eEeDLjWWvAHaKs?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.eN3homKZcJ8CVgdc_BZnXQHaKu?w=182&h=264&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.dEbPxj18bNj9l-euThiMMgHaKq?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.suKqVyET3FMiZ67w8cQ8cQHaKg?w=182&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.ddR0cODI4lTRXMKKivmWhgHaK-?w=182&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.x4WOIeDJwUfa38gGWl6f3AHaKH?w=182&h=250&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.LSs0XPuTWEC8zl8_Gqx4DQHaJ4?w=182&h=242&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.pvL4A7WPqec_KMbZ00S9dgHaLG?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.p9j5ofVZSj-IOEpFzdM9pgHaLh?w=182&h=283&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
            <div class="MoviePoster">
                <img
                    src="https://th.bing.com/th/id/OIP.N-IfXzWBl0h_gXcp9tYftwHaJ4?w=182&h=243&c=7&r=0&o=5&dpr=1.3&pid=1.7">
            </div>
        </div>
    </div>
    <div class="AlHiddenDv" id="AlHiddenDv1">
        <div class="TodayShow">
               <h2>All Movies Detail</h2>
            <table>
                <tr><th>Movie Title</th><th>Slot</th><th>Screen</th></tr>
                  		
            </table>
            <button id="hideTOshwBtn">Back</button>
        </div>
    </div>
    <div class="AlHiddenDv" id="AlHiddenDv2">
        <div class="AvlSeat">
            <table>
                <tr>
                    <th>Movie Title</th>
                    <th>Available Seats</th>
                    <th>Slot</th>
                </tr>
                
            </table>
            <button id="hideAvlstBtn">Back</button>
        </div>
    </div>
    <div class="profilDIv" id="profilDIv">
    		<h2>Customer Name : <%= session.getAttribute("UserName") %></h2>
    		<h2>Customer Email : <%= session.getAttribute("UserEmail") %></h2>
    </div>
    <div class="AlHiddenDv" id="AlHiddenDv3">
        <div class="Screen">
            <table>
                <tr>
                    <th>Screen No.</th>
                    <th>Slot</th>
                    <th>Movie Title</th>
                </tr>
                
            </table>
            <button id="hideScreenTb">Back</button>
        </div>
    </div>
    <div class="AlHiddenDv" id="AlHiddenDv4">
        <div class="BookingForm" id="BookingForm">
            <form>
                <h1>Booking Form</h1>
                <table>
                    <tr>
                        <td>
                            <label>Select Movie : </label>
                        </td>
                        <td>
                            <select>
                                <option value="0">--Select Your Movie--</option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Select Movie Slot : </label>
                        </td>
                        <td>
                            <select>
                                <option value="0">--Select Slot--</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Select Screen : </label>
                        </td>
                        <td>
                            <select>
                                <option value="0">--Select Screen--</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Select Ticket category : </label>
                        </td>
                        <td>
                            <select>
                                <option value="0">--Select--</option>
                                <option value="Diamond">Diamond</option>
                                <option value="Gold">Gold</option>
                                <option value="Silver">Silver</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Enter Number of Seats:</label>
                        </td>
                        <td>
                            <input type="number" min="1" max="10" required>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button type="submit">Book</button>
                            <button type="menu" id="hideBookFormBtn">Back</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <script src="scripts/User.js"></script>
    <script src="scripts/User2.js"></script>
</body>
</html>