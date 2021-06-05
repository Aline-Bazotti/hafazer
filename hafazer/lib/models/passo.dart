class Passo {
  int _id;
  int _codigoMeta;
  String _descricao;
  bool _concluido;

  Passo(this._id, this._codigoMeta, this._descricao, this._concluido);

  set id(int id) => _id = id;
  set descricao(String descricao) => _descricao = descricao;

  // métodos getters
  int get id => _id;
  int get codigoMeta => _codigoMeta;
  String get descricao => _descricao;
  bool get concluido => _concluido;

  factory Passo.fromMap(Map<String, dynamic> json) => new Passo(json["id"],
      json["codigoMeta"], json["descricao"], json["concluido"] == 1);

  // para facilitar o insert/update utilizamos o método toMap
  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'codigoMeta': _codigoMeta,
      'descricao': _descricao,
      'concluido': _concluido ? 1 : 0
    };
  }
}
