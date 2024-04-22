<%
  sessao = request.getSession().getAttribute("nome");

%>
<html>
  <head>
    <title>Biblioteca "Mundo Magico da Leitura"</title>
  </head>
  
  <body>
    <h2>Sistema de Renovacao de Emprestimos</h2>
    
    <form action="autenticacao" method="post">
      
      Nome de Usuario:
      <input type="text" name="nomeUsuario"> <br>
      
      Senha:
      <input type="password" name="senha"> <br>
      
      <input type="submit" value="Entrar">
    </form>
    
  </body>
  
</html>
