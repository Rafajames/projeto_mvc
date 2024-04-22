<%

  String status = "";
  sessao = request.getSession().getAttribute("nome");
  if (nomeSessao == null) {
    // Não fez o Login

    status = "Nenhum usuaario Logado, faça o login!";
  } else {
    // Esta Logado

      status = "Usuario autenticado: " + nomeSessao;
  }
%>
<html>
  <head>
    <title>Biblioteca "Mundo Magico da Leitura"</title>
  </head>
  
  <body>

    <%= status %>
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
