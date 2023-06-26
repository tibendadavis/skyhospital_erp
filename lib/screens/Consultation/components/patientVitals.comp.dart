import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class patientVitals extends StatefulWidget {
  patientVitals({super.key});

  @override
  State<patientVitals> createState() => _patientVitalsState();
}

class _patientVitalsState extends State<patientVitals> {
  bool _newVitals = false;
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
                        value: "Vital Signs",
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                      if (_newVitals)
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    _newVitals = false;
                                  });
                                },
                                child: Heading5(
                                  value: "Cancel",
                                  color: Colors.red,
                                )),
                            SizedBox(
                              width: 10,
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
                                )),
                          ],
                        )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Visibility(
                    visible: !_newVitals,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _newVitals = true;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Palette().primaryColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Heading5(
                              value: "New Vital",
                              fontWeight: FontWeight.bold,
                              color: Palette().primaryColor),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _newVitals,
                    child: Column(
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
                                    ? 570
                                    : size.width,
                                child: Column(children: [
                                  inputTextField(
                                      title: "Systotic B.P",
                                      hintText: "Systoic B.P"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Weight (Kg)",
                                      hintText: "Weight (Kg)"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "RespiratoryRate (/Min)",
                                      hintText: "RespiratoryRate (/Min)"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Blood Sugar",
                                      hintText: "Blood Sugar"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "AVPU",
                                    opt1: "",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Oxygen\nsupplementation",
                                    opt1: "",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(title: "SPO2", hintText: " "),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Mobility",
                                    opt1: "",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Comment", hintText: "Comment")
                                ]),
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context) ? 10 : 0,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 570
                                    : size.width,
                                child: Column(children: [
                                  inputTextField(
                                      title: "Diastotic B.P",
                                      hintText: "Diastotic B.P"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Height (cm)",
                                      hintText: "Height (cm)"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Heart Rate (BPM)",
                                      hintText: "Heart Rate (BPM)"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Blood Sugar(R)",
                                      hintText: "Blood Sugar(R)"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Trauma",
                                    opt1: "",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                    title: "Temperature (oC)",
                                    hintText: "",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "BMI (Kg/m2)", hintText: ""),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Urine Output", hintText: "")
                                ]),
                              )
                            ]),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(Insets().appPadding / 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Insets().appGap + 6)),
                    child: SizedBox(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                            dataRowHeight: 50,
                            headingTextStyle:
                                TextStyle(color: Palette().primaryColor),
                            horizontalMargin: 0,
                            columnSpacing: Responsive.isDesktop(context) &&
                                    size.width < 1600
                                ? size.width / 42
                                : Responsive.isDesktop(context) &&
                                        size.width > 1600
                                    ? size.width / 30
                                    : 25,
                            showCheckboxColumn: false,
                            checkboxHorizontalMargin: 10,
                            showBottomBorder: true,
                            columns: [
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Visit Type",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Date & Time",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "SBP",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "DBP",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Temp",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "RR",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "HR",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Urine OP",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "BS(F)",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "BS(R)",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "SPO2",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "AVPU",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Trauma",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Mobility",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Visit Taken",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                            ],
                            rows: []),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}
