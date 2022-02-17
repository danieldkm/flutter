import 'package:desafio_flutter_maonamassa/widgets/image_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstaPage extends StatelessWidget {
  const InstaPage({Key? key}) : super(key: key);

  List<Widget> getAvatars() {
    List<Widget> list = [];
    List.generate(10, (index) {
      list.add(Column(
        children: const [
          ImageAvatar(
            urlImage:
                'https://cdn.thedevconf.com.br/photos/0e6cb8243cc101bc6b53228cc889a038459a723f.jpg',
          ),
          Text(
            'teste',
            style: TextStyle(color: Colors.white),
          )
        ],
      ));

      list.add(
        const SizedBox(
          width: 10,
        ),
      );
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram', style: GoogleFonts.lobster()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Icon(Icons.add_box_outlined),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Icon(Icons.favorite_border),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Icon(Icons.send_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: [
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: getAvatars(),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(3),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://cdn.thedevconf.com.br/photos/0e6cb8243cc101bc6b53228cc889a038459a723f.jpg',
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'meu nome',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.list,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Image.network(
                'https://ciclovivo.com.br/wp-content/uploads/2018/10/iStock-536613027-696x464.jpg',
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.turned_in_not,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '1.111 curtidas',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'teste.teste123 awdawda wdawd wadawdwad awdiluasdhflukahskagh dslkhf alksdhflkaj dshflksdf',
                style: TextStyle(color: Colors.white),
                softWrap: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(3),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://cdn.thedevconf.com.br/photos/0e6cb8243cc101bc6b53228cc889a038459a723f.jpg',
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'meu nome',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.list,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Image.network(
                'https://ciclovivo.com.br/wp-content/uploads/2018/10/iStock-536613027-696x464.jpg',
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.turned_in_not,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '1.111 curtidas',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'teste.teste123 awdawda wdawd wadawdwad awdiluasdhflukahskagh dslkhf alksdhflkaj dshflksdf',
                style: TextStyle(color: Colors.white),
                softWrap: true,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_collection_outlined,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.all(3),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://cdn.thedevconf.com.br/photos/0e6cb8243cc101bc6b53228cc889a038459a723f.jpg',
                    ),
                  ),
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
