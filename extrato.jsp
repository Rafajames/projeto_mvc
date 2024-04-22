<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="model.*" %>

<html>
	<head>
		<title>Biblioteca "Mundo Mágico da Leitura"</title>
	</head>
	
	<body>
	
	<h2>Sistema de Renovação de Empréstimos</h2>
	<%
		HttpSession sessao = request.getSession();
		Emprestimo emprestimo;
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		ArrayList colecao = (ArrayList)request.getAttribute("colecao");
	%>
	
	<h3>Extrato de Empréstimos</h3>
	<p>Usuário: <%= sessao.getAttribute("nome") %></p>
	<%
		if (colecao.size() == 0){
			out.println("<p>Não há empréstimos em aberto</p>");
		} else {
			out.println("<table border=\"1\">");
			out.println("<tr>");
			out.println("<th>Id Empréstimo</th>");
			out.println("<th>Data Empréstimo</th>");
			out.println("<th>Data Devolução</th>");
			out.println("<th>Dias com o livro</th>");
			out.println("<th>Id Livro</th>");
			out.println("<th>Título Livro</th>");
			out.println("<th>Situação</th>");
			out.println("</tr>");
			
			//verifica se há devoluções em atraso
			boolean atraso = false;
			// for (int i=0; i < colecao.size(); i++) {
				// emprestimo = (Emprestimo)colecao.get(i);
				// if (emprestimo.getDias() > 7){
					// atraso = true;
				// }
			// }
			
			//exibe os registros de empréstimo
			for (int i=0; i < colecao.size(); i++)
			{
				emprestimo = (Emprestimo)colecao.get(i);
				if (emprestimo.getDias() < 7){
					atraso = true;
				} else {
					atraso = false;
				}
				%>
				<tr>
				<td><%= emprestimo.getId() %></td>
				<td><%= sdf.format(emprestimo.getDataEmprestimo()) %></td>
				<td><%= sdf.format(emprestimo.getDataDevolucao()) %></td>
				<td><%= emprestimo.getDias() %></td>
				<td><%= emprestimo.getIdLivro() %></td>
				<td><%= emprestimo.getTitulo() %></td>
				<%
				if (atraso == false) {
					out.println("<td><a href=\"renovacao?" +
					"idEmprestimo=" +
					emprestimo.getId() + "&" +
					"idLivro=" +
					emprestimo.getIdLivro() + "&" +
					"idUsuario=" +
					sessao.getAttribute("id") +
					"\">Renovar</a></td>");
				} else {
					out.println("<td></td>");
				}
				%>
				</tr>
				<%
			} // fim for
			
		out.println("</table>");
	}
	%>
	<p><a href="logout.jsp">Sair do sistema</a></p>
	</body>
</html>