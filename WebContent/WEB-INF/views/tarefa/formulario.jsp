<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<title>Formulario</title>
</head>
<body class="container">
	<h3>Adicionar tarefas</h3>
	
	<form:errors path="tarefa.descricao"/>
	<form class="form-group" action="adicionaTarefa" method="post">
		Descrição: <br />
		<textarea name="descricao" row="5" cols="100"></textarea><br>
		<input type="submit" value="Adicionar">
	</form>

</body>
</html>