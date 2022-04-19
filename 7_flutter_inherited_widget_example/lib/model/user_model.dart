import 'package:flutter/cupertino.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String brithDate;
  UserModel(
      {required this.name,
      required this.imgAvatar,
      required this.brithDate,
      required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
        imgAvatar != oldWidget.imgAvatar ||
        brithDate != oldWidget.brithDate;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();

    assert(userModel != null, 'UserModel not exists in BuildContext');
    return userModel!;
  }
}
