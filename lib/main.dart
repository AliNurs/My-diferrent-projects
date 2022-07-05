import 'package:flutter/material.dart';

import 'my_list.dart';

void main() => runApp(MyHyperMind());

class MyHyperMind extends StatelessWidget {
  MyHyperMind({Key? key}) : super(key: key);

  final List name = [
    'Bold',
    'Нурсултан',
    'Mediym',
    'Нурсултан',
    'Light',
    'Нурсултан',
    'Back',
    'Нурсултан',
    'Regular',
    'Нурсултан',
    'Нурсултан',
    'Light',
    'Нурсултан',
    'Back',
    'Нурсултан',
    'Regular',
    'Нурсултан',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(actions: [Text('data')]),
          body: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(name[index]),
                      subtitle: Text("Будуший миллиардер который Бог любить"),
                      leading: Image.asset('image/profile.jpg'),
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    color: Colors.amber,
                    thickness: 5,
                  ),
              itemCount: name.length)),
    );
  }
}






// import 'package:flutter/material.dart';

// void main() async {
//   runApp(
//     MaterialApp(debugShowCheckedModeBanner: false, initialRoute: '/', routes: {
//       '/': (context) => RouteOne(),
//       '/detail': (context) => RouteTwo(image: '', name: ''),
//     }),
//   );
// }

// class PhotoItem {
//   final String image;
//   final String name;
//   PhotoItem(this.image, this.name);
// }

// class RouteOne extends StatelessWidget {
//   final List<PhotoItem> _items = [
//     PhotoItem(
//         "https://images.pexels.com/photos/1772973/pexels-photo-1772973.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Stephan Seeber"),
//     PhotoItem(
//         "https://images.pexels.com/photos/1758531/pexels-photo-1758531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Liam Gant"),
//     PhotoItem(
//         "https://images.pexels.com/photos/1130847/pexels-photo-1130847.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Stephan Seeber"),
//     PhotoItem(
//         "https://images.pexels.com/photos/45900/landscape-scotland-isle-of-skye-old-man-of-storr-45900.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Pixabay"),
//     PhotoItem(
//         "https://images.pexels.com/photos/165779/pexels-photo-165779.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Scott Webb"),
//     PhotoItem(
//         "https://images.pexels.com/photos/548264/pexels-photo-548264.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Krivec Ales"),
//     PhotoItem(
//         "https://images.pexels.com/photos/188973/matterhorn-alpine-zermatt-mountains-188973.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Pixabay"),
//     PhotoItem(
//         "https://images.pexels.com/photos/795188/pexels-photo-795188.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Melanie Wupper"),
//     PhotoItem(
//         "https://images.pexels.com/photos/5222/snow-mountains-forest-winter.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Jaymantri"),
//     PhotoItem(
//         "https://images.pexels.com/photos/789381/pexels-photo-789381.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Riciardus"),
//     PhotoItem(
//         "https://images.pexels.com/photos/326119/pexels-photo-326119.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Pixabay"),
//     PhotoItem(
//         "https://images.pexels.com/photos/707344/pexels-photo-707344.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Eberhard"),
//     PhotoItem(
//         "https://images.pexels.com/photos/691034/pexels-photo-691034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Mirsad Mujanovic"),
//     PhotoItem(
//         "https://images.pexels.com/photos/655676/pexels-photo-655676.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Vittorio Staffolani"),
//     PhotoItem(
//         "https://images.pexels.com/photos/592941/pexels-photo-592941.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
//         "Tobi"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen one ☝️'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(14),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisSpacing: 4,
//             mainAxisSpacing: 2,
//             crossAxisCount: 2,
//           ),
//           itemCount: _items.length,
//           itemBuilder: (context, index) {
//             return new GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => RouteTwo(
//                         image: _items[index].image, name: _items[index].name),
//                   ),
//                 );
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.elliptical(129, 80)),
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: NetworkImage(_items[index].image),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class RouteTwo extends StatelessWidget {
//   final String image;
//   final String name;

//   RouteTwo({Key? key, required this.image, required this.name})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen two ✌️'),
//       ),
//       body: Column(
//         children: [
//           AspectRatio(
//             aspectRatio: 1,
//             child: Padding(
//               padding: const EdgeInsets.all(12),
//               child: Container(
//                 width: double.infinity,
//                 child: Image(
//                   image: NetworkImage(image),
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.all(2.0),
//             child: Center(
//               child: Text(
//                 name,
//                 style: TextStyle(fontSize: 40),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
