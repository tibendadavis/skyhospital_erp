import 'package:flutter/cupertino.dart';
import 'package:skyhospital_erp/controllers/funcs_main.dart';

class careersite extends StatefulWidget {
  const careersite({super.key});

  @override
  State<careersite> createState() => _careersiteState();
}

class _careersiteState extends State<careersite> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Funcs().openLink(url: "https://skyconnect.co.tz/");
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Offstage();
  }
}
