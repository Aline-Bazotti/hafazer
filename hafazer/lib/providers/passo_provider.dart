import 'package:flutter/cupertino.dart';
import 'package:sidebar_animation/models/passo.dart';
import 'package:sidebar_animation/repositorys/passo_repository.dart';

class PassoProvider with ChangeNotifier {
  PassoRepository _passoRepository = PassoRepository();
  int codigoMeta = 1;
  List<Passo> _passos = [];
  List<Passo> _passosConcluidos = [];

  PassoProvider(int codigoMeta) {
    codigoMeta = 1;
    buscarDados(codigoMeta);
  }

  void buscarDados(int codigoMeta) {
    _passoRepository.findAll(codigoMeta, 0).then((passos) => setPassos(passos));
    _passoRepository
        .findAll(codigoMeta, 1)
        .then((passosConcluidos) => setPassosConcluidos(passosConcluidos));
  }

  setPassos(List<Passo> passos) {
    if (passos != null) {
      _passos = passos;
    }

    notifyListeners();
  }

  setPassosConcluidos(List<Passo> passosConcluidos) {
    if (passosConcluidos != null) {
      _passosConcluidos = passosConcluidos;
    }

    notifyListeners();
  }

  List<Passo> get all {
    return _passos;
  }

  List<Passo> get concluidos {
    return _passosConcluidos;
  }

  int get count {
    if (_passos == null) {
      return 0;
    }

    return _passos.length;
  }

  int get countConcluidos {
    if (_passosConcluidos == null) {
      return 0;
    }

    return _passosConcluidos.length;
  }

  savePasso(Passo passo) {
    if (passo.id != null) {
      _passoRepository.updatePasso(passo);
    } else {
      _passoRepository.insertPasso(passo);
    }
    buscarDados(codigoMeta);
    notifyListeners();
  }

  savePassoOnChange(Passo passo) {
    if (passo.id != null) {
      _passoRepository.updatePasso(passo);
    } else {
      _passoRepository.insertPasso(passo);
    }
  }

  deletePasso(Passo passo) {
    if (passo != null) {
      _passoRepository.deletePasso(passo);
      _passos.remove(passo);
    }
    buscarDados(codigoMeta);
    notifyListeners();
  }

  createPasso() {
    Passo passo = new Passo(null, codigoMeta, "", false);
    _passoRepository.insertPasso(passo).then((passo) => _passos.add(passo));
    notifyListeners();
  }
}
