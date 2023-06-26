import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/funcs_main.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class inputMultpleDate extends StatefulWidget {
  final String heading;
  final String subheading;
  String? value;
  inputMultpleDate(
      {super.key, required this.heading, required this.subheading, this.value});

  @override
  State<inputMultpleDate> createState() => _inputMultpleDateState();
}

class _inputMultpleDateState extends State<inputMultpleDate> {
  TextEditingController _date = TextEditingController();
  void initState() {
    super.initState();

    if (widget.value != null) _date.text = widget.value!;
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
              value: widget.heading),
          SizedBox(
            width: Responsive.isDesktop(context) ? 400 : size.width,
            height: Responsive.isDesktop(context) ? 40 : 40,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: Insets().appPadding / 2,
                right: Insets().appPadding / 2,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.grey),
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Insets().appPadding / 1.5)),
              child: TextFormField(
                  style: GoogleFonts.openSans(
                    fontSize: Responsive.isDesktop(context) ? 16 : 14,
                  ),
                  controller: _date,
                  readOnly: true,
                  onTap: () async {
                    final date =
                        await Funcs().selectDateRange(context: context);

                    setState(() {
                      _date.text = date.toString();
                    });
                  },
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_month_rounded,
                    ),
                    border: InputBorder.none,
                    hintText: widget.subheading,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
