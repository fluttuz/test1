import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
class AdialogPage extends StatefulWidget {
  const AdialogPage({Key? key}) : super(key: key);

  @override
  State<AdialogPage> createState() => _AdialogPageState();
}

class _AdialogPageState extends State<AdialogPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedButton(
              text: 'Succes Dialog',
              color: Colors.green,
              pressEvent: () {
                AwesomeDialog(
                  context: context,
                  headerAnimationLoop: true,

                  showCloseIcon: true,
                  title: 'Succes',
                  desc:
                  'Dialog description here..................................................',
                  btnOkOnPress: () {
                    debugPrint('OnClcik');
                  },
                  btnOkIcon: Icons.check_circle,
                  onDissmissCallback: (type) {
                    debugPrint('Dialog Dissmiss from callback $type');
                  },
                ).show();
              },
            ),
          ],
        ),
      )
    );
  }
}
