import 'package:bloc/bloc.dart';
import 'package:sidebar_animation/pages/metas_abertas_page%20copy.dart';
import '../pages/coisas_hafazer_page.dart';
import '../pages/coisas_feitas_page.dart';

import '../pages/metas_alcancadas_page.dart';

enum NavigationEvents {
  CoisasHafazerPageClickedEvent,
  CoisasFeitasPageClickedEvent,
  MetasAbertasClickedEvent,
  MetasAlcancadasClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => CoisasHafazerPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.CoisasHafazerPageClickedEvent:
        yield CoisasHafazerPage();
        break;
      case NavigationEvents.CoisasFeitasPageClickedEvent:
        yield CoisasFeitasPage();
        break;
      case NavigationEvents.MetasAbertasClickedEvent:
        yield MetasAbertasPage();
        break;
      case NavigationEvents.MetasAlcancadasClickedEvent:
        yield MetasAlcancadasPage();
        break;
    }
  }
}
