import 'package:flutter/material.dart';

// Aula 1
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//         backgroundColor: Colors.amber,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.add_link_outlined),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.airplane_ticket_outlined),
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: Center(
//           child: Text('Drawer aberto'),
//         ),
//       ),
//       endDrawer: Drawer(
//         child: Center(
//           child: Text('Drawer a direita'),
//         ),
//       ),
//       body: Center(child: Text('Home Page')),
//     );
//   }
// }

// aula Container
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           margin: EdgeInsets.all(10),
//           padding: EdgeInsets.all(10),
//           // color: Colors.red,
//           decoration: BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.circular(30),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black,
//                 blurRadius: 20,
//                 offset: Offset(10, 10),
//               ),
//               BoxShadow(
//                 color: Colors.green,
//                 blurRadius: 20,
//                 offset: Offset(-10, -10),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
            fontFamily: 'DancingScript',
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Custom Font',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              // color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20,
                    offset: Offset(10, 10),
                  ),
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 20,
                    offset: Offset(-10, -10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
