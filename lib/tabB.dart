import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'danhsach.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Color.fromARGB(255, 255, 0, 0)),
    debugShowCheckedModeBanner: false,
    home: TabB(),
  ));
}

class TabB extends StatelessWidget {
  const TabB({super.key});
  void _handleDS(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DanhSachPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    String _selectedItem = 'Chọn trạng thái';
    List<String> _dropdownItems = [
      'Chọn trạng thái',
      'Option 2',
      'Option 3',
      'Option 4',
    ];

    String _selectedItem1 = 'Chọn loại đơn';
    List<String> _dropdownItems1 = [
      'Chọn loại đơn',
      'Option 2',
      'Option 3',
      'Option 4',
    ];

    bool _rememberMe = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(200, 181, 181, 181),
                Color.fromARGB(200, 181, 181, 181),
              ],
            ),
          ),
          child: Column(
            children: [
              Text(
                'Tra cứu đơn thư',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Tìm kiếm ...",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Từ ngày',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: "_/_/__",
                        prefixIcon: Icon(Icons.calendar_month),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Đến ngày',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: " _ / _ / __",
                        prefixIcon: Icon(Icons.calendar_month),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Trạng thái',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: " Chọn trạng thái",
                        suffixIcon: Icon(Icons.arrow_drop_down),
                      ),
                      onTap: () {
                        // Mở DropdownButton khi người dùng chạm vào TextField
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Chọn một mục'),
                              content: Container(
                                width: double.minPositive,
                                child: DropdownButton(
                                  value: _selectedItem,
                                  onChanged: (String? newValue) {},
                                  items: _dropdownItems.map((String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    );
                                  }).toList(),
                                  style: TextStyle(color: Colors.black),
                                  dropdownColor: Colors.white,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Loại đơn',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: " Chọn loại đơn",
                        suffixIcon: Icon(Icons.arrow_drop_down),
                      ),
                      onTap: () {
                        // Mở DropdownButton khi người dùng chạm vào TextField
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Chọn một mục'),
                              content: Container(
                                width: double.minPositive,
                                child: DropdownButton(
                                  value: _selectedItem,
                                  onChanged: (String? newValue) {},
                                  items: _dropdownItems.map((String value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    );
                                  }).toList(),
                                  style: TextStyle(color: Colors.black),
                                  dropdownColor: Colors.white,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ])),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Reset',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => _handleDS(context),
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ])),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Tra cứu',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
