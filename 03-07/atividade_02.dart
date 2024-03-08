//EX 01:
class Personagem {
  var id = 0;
  var usuarioId = 0;
  var nomeCompleto = '';

  Personagem(
    int id,
    int usuarioId,
    [String nomeCompleto = 'NOME_DO_PERSONAGEM']) {
    this.id = id;
    this.usuarioId = usuarioId;
    this.nomeCompleto = nomeCompleto;
  }
}

//EX 02:
class Usuario {
  var id = 0;
  var nomePerfil = '';
  var fotoPerfil = '';
  var fotoCapa = '';

  Usuario(
    int id,
    String nomePerfil,
    [String fotoPerfil = 'img/fotos-de-perfil/minha-foto-de-perfil.jpg',
    String fotoCapa = 'img/fotos-de-capa/minha-foto-de-capa.jpg']) {

    this.id = id;
    this.nomePerfil = nomePerfil;
    this.fotoPerfil = fotoPerfil;
    this.fotoCapa = fotoCapa;
  }
}

//EX 03:
class Chat {
  var id = 0;
  var titulo = '';
  var permiteUsuario = true;
  var permitePersonagem = true;

  Chat(
    int id,
    String titulo,
    [bool permiteUsuario = true,
    bool permitePersonagem = true]) {

    this.id = id;
    this.titulo = titulo;
    this.permiteUsuario = permiteUsuario;
    this.permitePersonagem = permitePersonagem;
  }
}
