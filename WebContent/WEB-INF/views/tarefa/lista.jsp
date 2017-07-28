<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Lista de Tarefas</title>
</head>
<body class="container">

	<script type="text/javascript">
		function finalizaAgora(id) {
			$.post("finalizaTarefa", {'id' : id}, function(resposta){
				//selecionando o elementro html através da
				//ID e alterando o HTML dele
				$("#tarefa_"+id).html(resposta);
			});
		};
			
		function removeTarefa(id) {
			$.post("removeTarefa", {'id' : id}, function(){
				$("#tarefa_"+id).hide();
			});
		};
	</script>
	
	<a class="btn btn-success" href="novaTarefa">Cria nova tarefa</a>
	
	<br /> <br />
	
	<table class="table table-responsive table-bordered">
		<tr class="bg-primary">
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalização?</th>
			<th>Data de finalização</th>
			<th>Função Remover</th>
			<th>Função Alterar</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id }">
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false }">
					<td>
						<a href="#" onClick="finalizaAgora(${tarefa.id})">
							Finalizar
						</a>
					</td>
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
					<a href="#" onClick="removeTarefa(${tarefa.id})">
						Remove agora!
					</a>
				</td>
				<td>
					<a href="mostraTarefa?id=${tarefa.id}">Alterar</a> 
				</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>