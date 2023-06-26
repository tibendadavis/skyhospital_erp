import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/inputBigText.comp.dart';
import 'package:skyhospital_erp/components/inputMultpleRadio.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class socialHistory extends StatefulWidget {
  socialHistory({super.key});

  @override
  State<socialHistory> createState() => _socialHistoryState();
}

class _socialHistoryState extends State<socialHistory> {
  //bool _socialHistory = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Insets().appPadding,
                left: Insets().appPadding,
                right: Insets().appPadding,
                bottom: Insets().appPadding),
            padding: EdgeInsets.only(
                left: Insets().appPadding,
                right: Insets().appPadding,
                top: Insets().appGap + 2,
                bottom: Insets().appPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appRadiusMin + 4)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading3(
                        value: "Social History",
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              backgroundColor: Palette().primaryColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Insets().appPadding / 5))),
                          onPressed: () {},
                          child: Heading5(
                            value: "Save",
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 700
                                  : size.width,
                              child: Column(children: [
                                inputMultipleRadio(
                                  heading: "Smoking",
                                  onlyTwo: true,
                                  opt1: "Yes",
                                  opt2: "No",
                                  onSelect: (val) {},
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                inputMultipleRadio(
                                  heading: "Consumes Alcohol",
                                  onlyTwo: true,
                                  opt1: "Yes",
                                  opt2: "No",
                                  onSelect: (val) {},
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                inputMultipleRadio(
                                  heading: "Cough",
                                  onlyTwo: true,
                                  opt1: "Yes",
                                  opt2: "No",
                                  onSelect: (val) {},
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                inputTextField(
                                    title: "Education", hintText: ""),
                                SizedBox(
                                  height: 5,
                                ),
                                inputTextField(
                                    title: "Occupation", hintText: ""),
                                SizedBox(
                                  height: 5,
                                ),
                                inputBigText(title: "Others", hintText: ""),
                              ]),
                            ),
                          ]),
                    ],
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}
