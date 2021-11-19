import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/circle_avatar/image_avatar.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
      ),
      body: Column(
        children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //       'https://cdn.thedevconf.com.br/photos/0e6cb8243cc101bc6b53228cc889a038459a723f.jpg',
          //     ),
          //   ),
          // ),
          ImageAvatar(
            urlImage:
                'https://cdn.thedevconf.com.br/photos/0e6cb8243cc101bc6b53228cc889a038459a723f.jpg',
          ),
        ],
      ),
    );
  }
}
