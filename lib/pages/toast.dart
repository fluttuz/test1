import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatefulWidget {
  const ToastPage({Key? key}) : super(key: key);

  @override
  State<ToastPage> createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  forToast() {
    Fluttertoast.showToast(
      msg: "Bu toast title",
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.grey.shade200,
      textColor: Colors.black,
      fontSize: 15,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast Page"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  forToast();
                },
                child: Text(
                  "Toast",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
