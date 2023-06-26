import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class investigationProcedure extends StatefulWidget {
  investigationProcedure({super.key});

  @override
  State<investigationProcedure> createState() => _investigationProcedureState();
}

class _investigationProcedureState extends State<investigationProcedure> {
  bool _investigationProcedure = false;
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
                        value: "Investigation/Procedure",
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                      if (_investigationProcedure)
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    _investigationProcedure = false;
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
                    visible: !_investigationProcedure,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _investigationProcedure = true;
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
                              value: "New Procedure",
                              fontWeight: FontWeight.bold,
                              color: Palette().primaryColor),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _investigationProcedure,
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
                                    ? 600
                                    : size.width,
                                child: Column(children: [
                                  inputTextField(
                                      title: "Investigation/Procedure",
                                      hintText: "Investigation/Procedure"),
                                ]),
                              ),
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
                                ? size.width / 11
                                : Responsive.isDesktop(context) &&
                                        size.width > 1600
                                    ? size.width / 9
                                    : 25,
                            showCheckboxColumn: false,
                            checkboxHorizontalMargin: 10,
                            showBottomBorder: true,
                            columns: [
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Investigation/Procedure",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Result",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Status",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "STAT",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "OT Required",
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
