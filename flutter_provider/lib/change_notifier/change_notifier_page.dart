import 'package:flutter/material.dart';
import 'package:flutter_provider/change_notifier/provider_controller.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 2));
      context.read<ProviderController>().alterarDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Notifier')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO com selector
              Selector<ProviderController, String>(
                selector: (_, controller) => controller.imgAvatar,
                builder: (context, imgAvatar, child) {
                  print('BUILD value.imgAvatar');
                  return CircleAvatar(
                    backgroundImage: NetworkImage(
                      imgAvatar,
                    ),
                    radius: 60,
                  );
                },
              ),
              // TODO com consumer
              // Consumer<ProviderController>(
              //   builder: (context, value, child) {
              //     print('BUILD value.imgAvatar');
              //     return CircleAvatar(
              //       backgroundImage: NetworkImage(
              //         value.imgAvatar,
              //       ),
              //       radius: 60,
              //     );
              //   },
              // ),
              // TODO normal
              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //     context.watch<ProviderController>().imgAvatar,
              //   ),
              //   radius: 60,
              // ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO com selector
                  Selector<ProviderController, String>(
                    selector: (_, controller) => controller.name,
                    builder: (context, name, child) {
                      print('BUILD value.name');
                      return Text(
                        name,
                      );
                    },
                  ),
                  Selector<ProviderController, String>(
                    selector: (_, controller) => controller.birthDate,
                    builder: (context, birthDate, child) {
                      print('BUILD value.birthDate');
                      return Text(
                        ' (${birthDate})',
                      );
                    },
                  ),
                  // TODO com consumer
                  // Consumer<ProviderController>(
                  //   builder: (context, value, child) {
                  //     print('BUILD value.name');
                  //     return Text(
                  //       value.name,
                  //     );
                  //   },
                  // ),
                  // Consumer<ProviderController>(
                  //   builder: (context, value, child) {
                  //     print('BUILD value.birthDate');
                  //     return Text(
                  //       ' (${value.birthDate})',
                  //     );
                  //   },
                  // ),
                  // TODO normal
                  // Text(
                  //   context.watch<ProviderController>().name,
                  // ),
                  // Text(
                  //   ' (${context.watch<ProviderController>().birthDate})',
                  // )
                ],
              ),
              Selector<ProviderController, Tuple2<String, String>>(
                selector: (_, controller) =>
                    Tuple2(controller.birthDate, controller.name),
                builder: (context, tuple, child) {
                  print('BUILD tuple');
                  return Text(
                    '${tuple.item2} (${tuple.item1})',
                  );
                },
              ),
              ElevatedButton(
                onPressed: () =>
                    context.read<ProviderController>().alterarNome(),
                child: const Text('Alterar nome'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
