import 'package:flutter/cupertino.dart';

class ProviderController extends ChangeNotifier {
  String name = 'nome';
  String imgAvatar =
      'https://www.pixelstalk.net/wp-content/uploads/2016/08/Best-Amazing-Images-For-Desktop.jpg';
  String birthDate = 'Data';

  void alterarDados() {
    name = 'Daniel K. Morita';
    imgAvatar =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9hLqQ8v2T9ejeKXTUAyc9KDzBqSaiBSCW-GOWhS1ao8KwpSJaAgjw3lR00fB1brio8rg&usqp=CAU';
    birthDate = '12/10/1986';
    notifyListeners();
  }

  void alterarNome() {
    name = 'academia do flutter';
    notifyListeners();
  }
}
