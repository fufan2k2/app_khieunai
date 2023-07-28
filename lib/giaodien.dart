import 'package:flutter/material.dart';
import 'tabA.dart';
import 'tabB.dart';
import 'tabC.dart';

void main() {
  runApp(GiaoDien());
}

class GiaoDien extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GiaoDien> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    TabA(),
    TabB(),
    TabC(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 242, 67, 90),
          title: Align(
            alignment: Alignment.centerRight,
            child: Text('Quản trị hệ thống'),
          ),
          actions: [
            FloatingActionButton(
              onPressed: () {
                // Thêm xử lý khi người dùng nhấn vào nút hình tròn ở đây
              },
              backgroundColor: Colors.blue, // Đặt màu đỏ cho nút hình tròn
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.backpack),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: ' ',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
