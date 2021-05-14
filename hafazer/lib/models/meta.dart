class Meta {
  int _id;
  String _descricao;
  bool _concluida;

  Meta(this._id, this._descricao, this._concluida);

  set id(int id) => _id = id;

  // métodos getters
  int get id => _id;
  String get name => _descricao;
  bool get concluida => _concluida;

  // para facilitar o insert/update utilizamos o método toMap
  Map<String, dynamic> toMap() {
    return {'id': _id, 'descricao': _descricao, 'concluida': _concluida};
  }
}
