import 'package:flutter/material.dart';
import 'package:skyhospital_erp/screens/InPatient%20Management/components/bedTasks.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/InPatient%20Management/addPatientAdmission.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class bedStatusComp extends StatefulWidget {
  String? bedNo;
  bool? status;
  bedStatusComp({super.key, this.bedNo, this.status});

  @override
  State<bedStatusComp> createState() => _bedStatusCompState();
}

class _bedStatusCompState extends State<bedStatusComp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.status = widget.status;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (_) =>
                widget.status == true ? bedTasks() : addPatientAdmission());
      },
      child: SizedBox(
        width: 90,
        height: 90,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(Insets().appGap + 6)),
          child: Column(children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                color: Palette().primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadingText(
                    size: 16,
                    value: widget.bedNo!,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 60,
              height: 40,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: Icon(
                    widget.status == true ? Icons.hotel_sharp : Icons.bed,
                    color: widget.status == true
                        ? Colors.redAccent
                        : Colors.grey.shade700,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
