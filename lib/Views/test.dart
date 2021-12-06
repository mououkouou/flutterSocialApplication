//  import 'package:flutter/material.dart';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('BottomNavigationBar')),
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         notchMargin: 8.0,
//         clipBehavior: Clip.antiAlias,
//         child: Container(
//           height: kBottomNavigationBarHeight,
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border(
//                 top: BorderSide(
//                   color: Colors.grey,
//                   width: 0.5,
//                 ),
//               ),
//             ),
//             child: BottomNavigationBar(
//                 currentIndex: _currentIndex,
//                 backgroundColor: Colors.blue,
//                 selectedItemColor: Colors.white,
//                 onTap: (index) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//                 items: [
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.category), label: 'Category'),
//                   BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.settings_outlined), label: 'Setting')
//                 ]),
//           ),
//         ),
//       ),
//       floatingActionButtonLocation:
//           FloatingActionButtonLocation.miniCenterDocked,
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: FloatingActionButton(
//           backgroundColor: _currentIndex == 1 ? Colors.blue : Colors.blueGrey,
//           child: Icon(Icons.home),
//           onPressed: () => setState(() {
//             _currentIndex = 1;
//           }),
//         ),
//       ),
//     );
//   }
// }