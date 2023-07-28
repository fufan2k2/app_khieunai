import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Color.fromARGB(255, 255, 0, 0)),
    debugShowCheckedModeBanner: false,
    home: TabC(),
  ));
}

class TabC extends StatelessWidget {
  const TabC({super.key});

  @override
  Widget build(BuildContext context) {
    bool _rememberMe = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(16), // You can adjust the padding as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Thông tin đơn thư được nhắc nhở giải quyết!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '- Đơn khiếu nại việc bồi thường đất đai',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '+ Mã đơn: 3879',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              '+ Người gửi : Nguyễn Văn An',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              '+ Người đang giải quyết: Trần Thị Cẩm Tú',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              '+ Thời gian: Đã quá hạn 5 ngày',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              '- Đơn tố cáo chiếm đoạt tài sản',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '+ Mã đơn: 3501',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              '+ Người gửi : Lưu Vĩnh Phúc',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              '+ Người bị tố cáo: Trần Văn Hổ Báo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              '+ Thời gian: Đã quá hạn 1 ngày',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
