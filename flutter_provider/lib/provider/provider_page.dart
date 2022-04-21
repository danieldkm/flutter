import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/produto_model.dart';
import 'package:flutter_provider/provider/produto_widget.dart';
import 'package:flutter_provider/provider/user_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);
    // var user = context.read<UserModel>();
    // var imageAvar =
    //     context.select<UserModel, String>((userModel) => userModel.imgAvatar);
    // var user = context.watch<UserModel>();
    return Provider(
      create: (context) => ProdutoModel(name: "awad"),
      child: Scaffold(
        appBar: AppBar(title: const Text('Provider')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(user.imgAvatar),
                  radius: 60,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user.name),
                    Text(
                      ' (${user.birthDate})',
                    )
                  ],
                ),
                const ProdutoWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
