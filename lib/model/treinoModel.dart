class TreinoModel {
  String id;
  String usuario;
  String dia;
  String titulo;
  String descricao;

  TreinoModel(this.id, this.usuario, this.dia, this.titulo, this.descricao);

  TreinoModel.fromMap(Map<String, dynamic> map, String id) {
    this.id = id ?? '';
    this.usuario = map['usuario'];
    this.dia = map['dia'];
    this.titulo = map['titulo'];
    this.descricao = map['descricao'];
  }
}
