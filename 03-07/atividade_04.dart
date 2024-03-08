//EX 01:
class Personagem {
  var id = 0;
  var usuarioId = 0;
  var nomeCompleto = '';

  Personagem(int id, int usuarioId, String nomeCompleto) {
    this.id = id;
    this.usuarioId = usuarioId;
    this.nomeCompleto = nomeCompleto;
  }

  setNomeCompleto(String nomeCompleto, Function(String) validarNomeCompleto) {
    if (validarNomeCompleto(nomeCompleto)) this.nomeCompleto = nomeCompleto;
  }

  bool _validarNomeCompleto(String nome) {
    return (nome.length <= 60);
  }
}

//EX 02:
class Usuario {
  var id = 0;
  var nomePerfil = '';
  var fotoPerfil = '';
  var fotoCapa = '';

  Usuario(int id, String nomePerfil, String fotoPerfil, String fotoCapa) {
    this.id = id;
    this.nomePerfil = nomePerfil;
    this.fotoPerfil = fotoPerfil;
    this.fotoCapa = fotoCapa;
  }

  setNomePerfil(String nomePerfil, Function(String) validarNomePerfil) {
    if (validarNomePerfil(nomePerfil))
      this.nomePerfil = nomePerfil;
  }

  bool _validarNomePerfil(String nome) {
    return (nome.length <= 40);
  }
}

//EX 03:
class Chat {
  var id = 0;
  var titulo = '';
  var permiteUsuario = true;
  var permitePersonagem = true;

  Chat(int id, String titulo, bool permiteUsuario, bool permitePersonagem) {
    this.id = id;
    this.titulo = titulo;
    this.permiteUsuario = permiteUsuario;
    this.permitePersonagem = permitePersonagem;
  }

  setTitulo(String titulo, Function(String) validarTitulo) {
    if (validarTitulo(titulo)) this.titulo = titulo;
  }

  bool _validarTitulo(String nome) {
    return (nome.length <= 30);
  }
}
