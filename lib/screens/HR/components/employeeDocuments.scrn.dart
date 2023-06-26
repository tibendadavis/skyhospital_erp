import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputFile.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class employeeDocument extends StatefulWidget {
  employeeDocument({super.key});

  @override
  State<employeeDocument> createState() => _employeeDocumentState();
}

class _employeeDocumentState extends State<employeeDocument> {
  bool _addFile = false;
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
                  Heading3(
                    value: "Documents",
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //     if()
                  Visibility(
                    visible: !_addFile,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _addFile = true;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Palette().primaryColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Heading4(
                              value: "Add Files",
                              color: Palette().primaryColor),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _addFile,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(Insets().appPadding / 3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 6)),
                          child: SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? size.width / 2
                                  : null,
                              child: Column(
                                children: [
                                  inputTextField(
                                      title: "File name", hintText: ""),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  inputFile(heading: "Upload File"),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _addFile = false;
                                            });
                                          },
                                          child: Heading5(
                                            value: "Cancel",
                                            color: Colors.redAccent,
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _addFile = false;
                                            });
                                          },
                                          child: Heading5(
                                            value: "Submit",
                                            color: Palette().primaryColor,
                                          ))
                                    ],
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                                ? size.width / 7.3
                                : Responsive.isDesktop(context) &&
                                        size.width > 1600
                                    ? size.width / 5.7
                                    : 25,
                            showCheckboxColumn: false,
                            checkboxHorizontalMargin: 10,
                            showBottomBorder: true,
                            columns: [
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "File Name",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "File Type",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Date Added",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Action",
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
