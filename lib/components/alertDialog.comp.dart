import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading5.dart';

// ignore: must_be_immutable
class alert extends StatefulWidget {
  String? title;
  String? content;
  Icon? icon;
  alert({super.key, this.content, this.title, this.icon});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.icon!,
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading3(value: widget.title!),
                Heading5(
                  value: widget.content!,
                ),
              ],
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
            onPressed: () {},
            child: Heading4(
              value: "OK",
            ))
      ],
    );
  }
}
