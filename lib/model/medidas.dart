class Medidas {
  String id;
  String usuario;
  int idade;
  double peso;
  double altura;
  double ombro;
  double torax;
  double bracoDireito;
  double bracoEsquerdo;
  double antebracoDireito;
  double antebracoEsquerdo;
  double cintura;
  double gluteo;
  double coxaDireita;
  double coxaEsquerda;
  double panturrilhaDireita;
  double panturrilhaEsquerda;

  Medidas(this.id, this.usuario, this.idade, this.peso, this.altura, this.ombro,
          this.torax, this.bracoDireito, this.bracoEsquerdo, this.antebracoDireito,
          this.antebracoEsquerdo, this.cintura, this.gluteo, this.coxaDireita,
          this.coxaEsquerda, this.panturrilhaDireita, this.panturrilhaEsquerda);

  Medidas.fromMap(Map<String, dynamic> map, String id) {
    this.id = id ?? '';
    this.usuario = map['usuario'];
    this.idade = map['idade'];
    this.peso = map['peso'];
    this.altura = map['altura'];
    this.ombro = map['ombro'];
    this.torax = map['torax'];
    this.bracoDireito = map['bracoDireito'];
    this.bracoEsquerdo = map['bracoEsquerdo'];
    this.antebracoDireito = map['antebracoDireito'];
    this.antebracoEsquerdo = map['antebracoEsquerdo'];
    this.cintura = map['cintura'];
    this.gluteo = map['gluteo'];
    this.coxaDireita = map['coxaDireita'];
    this.coxaEsquerda = map['coxaEsquerda'];
    this.panturrilhaDireita = map['panturrilhaDireita'];
    this.panturrilhaEsquerda = map['panturrilhaEsquerda'];
  }
}
