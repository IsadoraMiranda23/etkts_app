import 'package:etkts_app/components/cards/card_produto_carrinho.component.dart';
import 'package:etkts_app/types.dart';
import 'package:flutter/widgets.dart';

class AppState {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static ValueNotifier<bool> isLogged = ValueNotifier(false);
  static EventoHome? eventoSelecionado;
  static CardapioHome cardapioSelecionado = CardapioHome(id: 0);
  static CardProdutoCarrinhoData itemSelecionado = CardProdutoCarrinhoData(
    id: 0,
    nome: "",
    imagem: "",
    valor: 0,
    data: "",
    quantidade: 0,
    isIngresso: false,
    descricao: "",
  );
  static ValueNotifier<Map<int, CardProdutoCarrinhoData>> itemsSelecionados =
      ValueNotifier({});
}
