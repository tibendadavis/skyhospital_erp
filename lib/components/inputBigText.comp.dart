import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class inputBigText extends StatefulWidget {
  final String title;
  final String hintText;
  String? value;
  inputBigText(
      {super.key, required this.title, required this.hintText, this.value});

  @override
  State<inputBigText> createState() => _inputBigTextState();
}

class _inputBigTextState extends State<inputBigText> {
  TextEditingController value = TextEditingController();
  void initState() {
    super.initState();
    value.text = "";
    if (widget.value != null) value.text = widget.value!;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Flex(
        direction:
            Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: Responsive.isDesktop(context)
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          HeadingText(
              size: Responsive.isDesktop(context) ? 15 : 14,
              value: widget.title),
          SizedBox(
            width: Responsive.isDesktop(context) ? 400 : size.width,
            height: Responsive.isDesktop(context) ? 120 : 80,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: Insets().appPadding / 2,
                right: Insets().appPadding / 2,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appPadding / 2)),
              child: TextFormField(
                  style: GoogleFonts.openSans(
                    fontSize: Responsive.isDesktop(context) ? 16 : 14,
                  ),
                  controller: value,
                  onChanged: (val) {
                    widget.value = val;
                  },
                  onEditingComplete: () {
                    setState(() {
                      value.text = widget.value!;
                    });
                    print(value.text);
                  },
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: double.maxFinite.floor(),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
