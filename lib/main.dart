import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'giaodien.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Color.fromARGB(255, 255, 0, 0)),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // Hàm xử lý khi người dùng bấm vào nút "ĐĂNG NHẬP"
  void _handleLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GiaoDien()),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                Color(0xFF8A2387),
                Color(0xFFE94057),
              ])),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset('images/logo.jpg'),
              SizedBox(
                height: 20,
              ),
              Text(
                'HỆ THỐNG THÔNG TIN QUẢN LÝ KHIẾU NẠI TỐ CÁO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 400,
                width: 325,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 191, 191),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'ĐĂNG NHẬP',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Tên đăng nhập',
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Mật khẩu',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CheckboxListTile(
                      title: Text(
                        'Ghi nhớ đăng nhập',
                        style: TextStyle(fontSize: 16),
                        textDirection: TextDirection.rtl,
                      ),
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: false,
                      onChanged: (bool? value) {},
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () => _handleLogin(context), 
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
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
                            'ĐĂNG NHẬP',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
