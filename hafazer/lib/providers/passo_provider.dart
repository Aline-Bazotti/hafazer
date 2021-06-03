import 'package:flutter/cupertino.dart';
import 'package:sidebar_animation/models/passo.dart';
import 'package:sidebar_animation/repositorys/passo_repository.dart';

class PassoProvider with ChangeNotifier {
  PassoRepository _passoRepository = PassoRepository();

  List<Passo> _passos;

  PassoProvider(int codigoMeta) {
    _passoRepository.findAll(codigoMeta).then((passos) => setPassos(passos));
  }

  setPassos(List<Passo> passos) {
    _passos = passos;

    notifyListeners();
  }

  List<Passo> get all {
    return _passos;
  }

  int get count {
    if (_passos == null) {
      return 0;
    }

    return _passos.length;
  }

  savePasso(Passo passo) {
    _passoRepository.savePasso(passo);
  }

  updatePasso(Passo passo) {
    _passoRepository.updatePasso(passo);
  }

  deletePasso(Passo passo) {
    _passoRepository.deletePasso(passo);
  }
}
