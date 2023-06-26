import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputBigText.comp.dart';
import 'package:skyhospital_erp/components/inputFile.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class hospitalDetails extends StatefulWidget {
  const hospitalDetails({super.key});

  @override
  State<hospitalDetails> createState() => _hospitalDetailsState();
}

class _hospitalDetailsState extends State<hospitalDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
                top: Insets().appPadding,
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Insets().appGap),
            child: HeadingText(
              size: Responsive.isDesktop(context) ? 35 : 30,
              value: "Hospital Details",
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade800,
            ),
          ),
          Expanded(
            child: ListView(children: [
              Container(
                margin: EdgeInsets.only(
                  left:
                      Responsive.isDesktop(context) ? Insets().appPadding : 13,
                  right:
                      Responsive.isDesktop(context) ? Insets().appPadding : 13,
                ),
                padding: EdgeInsets.all(Insets().appPadding / 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appGap + 6)),
                child: Column(
                  children: [
                    Container(
                      child: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Responsive.isDesktop(context)
                                ? MediaQuery.of(context).size.width / 2.5
                                : MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                                top: Insets().appPadding,
                                right: Insets().appPadding,
                                left: Insets().appPadding),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputTextField(
                                  title: "Hospital Name",
                                  hintText: "Hospital Name",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                  title: "Hospital Email",
                                  hintText: "Hospital Email",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputBigText(
                                    title: "Hospital Address",
                                    hintText: "Hospital Address"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: Responsive.isDesktop(context)
                                ? MediaQuery.of(context).size.width / 2.5
                                : MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                                top: Insets().appPadding,
                                left: Insets().appPadding,
                                right: Insets().appPadding),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Current Hospital Logo: "),
                                SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: ClipOval(
                                        child: Image.asset(
                                            "assets/img/skylogo2.png")),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputFile(heading: "Hospital Logo")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Responsive.isDesktop(context) ? 30 : 25,
                    ),
                    Flex(
                      direction: Responsive.isDesktop(context)
                          ? Axis.horizontal
                          : Axis.vertical,
                      mainAxisAlignment: Responsive.isDesktop(context)
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.start,
                      crossAxisAlignment: Responsive.isDesktop(context)
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: Insets().appPadding,
                            bottom: Insets().appPadding,
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 0,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 0,
                          ),
                          child: SizedBox(
                            width: Responsive.isDesktop(context)
                                ? 400
                                : size.width,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(
                                    left: Insets().appPadding / 2,
                                    right: Insets().appPadding / 2,
                                  ),
                                  backgroundColor: Palette().primaryColor,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appPadding / 1.5))),
                              onPressed: () {},
                              child: Center(
                                  child: HeadingText(
                                size: Responsive.isDesktop(context) ? 18 : 14,
                                value: "Update Hospital Details",
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
