<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Tarefas</title>
</head>
<body>
	
	<a href="novaTarefa">Cria nova tarefa</a>
	
	<br /> <br />
	
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalização?</th>
			<th>Data de finalização</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false }">
					<td>Não Finalizado</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true }">
					<td>Finalizado</td>
				</c:if>
				<td>
					<fmt:formatDate 
						value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy"/>
				</td>
				<td>
					<a href="removeTarefa?id=${tarefa.id}">Remover</a>
			</tr>
		</c:forEach>
	</table>

</body>
</html>