class DietaModel {
  String id;
  String usuario;
  int proteinas;
  int carboidratos;
  int lipidios;

  DietaModel(this.id, this.usuario, this.proteinas, this.carboidratos, this.lipidios);

  DietaModel.fromMap(Map<String, dynamic> map, String id) {
    this.id = id ?? '';
    this.usuario = map['usuario'];
    this.proteinas = map['proteinas'];
    this.carboidratos = map['carboidratos'];
    this.lipidios = map['lipidios'];
  }
}
