<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<title>Formulario de Login</title>
</head>
<body class="container">
	<h2>Página de Login das Tarefas</h2>
	<form action="efetuaLogin" method="post">
		Login: <input type="text" name="login" /> <br />
		Senha: <input type="password" name="senha" /> <br />
		<input class="btn btn-success" type="submit" value="Entrar nas tarefas" />
	</form>

</body>
</html>