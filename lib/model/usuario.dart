class Usuario {
  String id;
  String usuario;
  String senha;
  int sexo;
  String nome;
  String email;

  Usuario(this.id, this.usuario, this.senha,
          this.sexo, this.nome, this.email);

  Usuario.fromMap(Map<String, dynamic> map, String id) {
    this.id = id ?? '';
    this.usuario = map['usuario'];
    this.senha = map['senha'];
    this.sexo = map['sexo'];
    this.nome = map['nome'];
    this.email = map['email'];
  }
}
