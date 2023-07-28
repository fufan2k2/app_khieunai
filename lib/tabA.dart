import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Color.fromARGB(255, 255, 0, 0)),
    debugShowCheckedModeBanner: false,
    home: TabA(),
  ));
}

class TabA extends StatelessWidget {
  const TabA({super.key});

  @override
  Widget build(BuildContext context) {
    bool _rememberMe = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(
            15.0), // Padding to add space between the borders and the content
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 1.0), // Large border
          borderRadius:
              BorderRadius.circular(8.0), // Border radius for the large border
        ),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Canh trái cột chứa các Wrap
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0), // Canh trái cách lề 15
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    // Wrap the row with a Container to add a border around both Icon and Text
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.notifications, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Giải quyết khiếu nại',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Add borders to other Wrap widgets in a similar way
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.note_outlined, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Số đơn chờ giải quyết',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.blue),
                          ),
                          SizedBox(width: 98),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Số đơn sắp hết hạn giải quyết',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.green),
                          ),
                          SizedBox(width: 40),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Số đơn quá hạn giải quyết',
                            style: TextStyle(fontSize: 16.0, color: Colors.red),
                          ),
                          SizedBox(width: 65),
                          Icon(Icons.plus_one, color: Colors.blue),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.notifications, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Giải quyết tố cáo',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Add borders to other Wrap widgets in a similar way
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.note_outlined, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Số đơn chờ giải quyết',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.blue),
                          ),
                          SizedBox(width: 98),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Số đơn sắp hết hạn giải quyết',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.green),
                          ),
                          SizedBox(width: 40),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Số đơn quá hạn giải quyết',
                            style: TextStyle(fontSize: 16.0, color: Colors.red),
                          ),
                          SizedBox(width: 65),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.notifications, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Xử lý đơn thư',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Add borders to other Wrap widgets in a similar way
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.note_outlined, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Số đơn thư chờ xử lý',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.blue),
                          ),
                          SizedBox(width: 98),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.note_outlined, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Số đơn cơ quan khác chuyển đến',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.blue),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.notifications, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Thi hành quyết định',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Add borders to other Wrap widgets in a similar way
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.note_outlined, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Thi hành QĐ giải quyết khiếu nại',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.blue),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1.0),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.note_outlined, color: Colors.blue),
                          SizedBox(width: 15),
                          Text(
                            'Thi hành QĐ xử lý tố cáo',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.blue),
                          ),
                          SizedBox(width: 65),
                          Icon(Icons.plus_one, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
