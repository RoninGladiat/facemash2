\<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Facesmash</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
String[] castMarvel = {"Chris Hemsworth", "Chris Evans", "Elizabeth Olsen", "Robert Downey Jr", "Scarlett Johansson"};

Random rand = new Random();

int lunghezza = castMarvel.length;

int posizioneCasuale1 = rand.nextInt(lunghezza) + 1;

int posizioneCasuale2 = rand.nextInt(lunghezza);
do{
	posizioneCasuale2 = rand.nextInt(lunghezza) + 1;
}while(posizioneCasuale1==posizioneCasuale2);

%>
<div id="header">
	<h1><a href="index.jsp">FACEMASH2</a></h1>
</div>
<div id="main">
	<h3>Who's Hotter? Click to Choose</h3>
	<h2>Cast film Marvel</h2>
	<table>
		<tr>
			<td><a href="info-persona-scelta.jsp?nome=<%=castMarvel[posizioneCasuale1-1]%>&posizione=<%=posizioneCasuale1%>"><img src="img/<%=posizioneCasuale1%>.jpg"/></a></td>
			<td>OR</td>
			<td><a href="info-persona-scelta.jsp?nome=<%=castMarvel[posizioneCasuale2-1]%>&posizione=<%=posizioneCasuale2%>"><img src="img/<%=posizioneCasuale2%>.jpg" /></a></td>
		</tr>
	</table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>