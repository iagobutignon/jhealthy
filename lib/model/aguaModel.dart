class AguaModel {
  String id;
  String usuario;
  int meta;
  int copo;

  AguaModel(this.id, this.usuario, this.meta, this.copo);

  AguaModel.fromMap(Map<String, dynamic> map, String id) {
    this.id = id ?? '';
    this.usuario = map['usuario'];
    this.meta = map['meta'];
    this.copo = map['copo'];
  }
}
