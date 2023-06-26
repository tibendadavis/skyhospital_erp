import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class presentingComplaint extends StatefulWidget {
  presentingComplaint({super.key});

  @override
  State<presentingComplaint> createState() => _presentingComplaintState();
}

class _presentingComplaintState extends State<presentingComplaint> {
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
                        value: "Presenting Complaint",
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    child: Column(
                      children: [
                        Flex(
                            direction: Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 550
                                    : size.width,
                                child: Column(children: [
                                  inputTextField(
                                    title: "Complaint",
                                    hintText:
                                        "Search for presenting complaints",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 10),
                                              backgroundColor:
                                                  Palette().primaryColor,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Insets().appPadding /
                                                              5))),
                                          onPressed: () {},
                                          child: Heading5(
                                            value: "Add",
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ]),
                              ),
                              Container(
                                width: size.width,
                                height: 250,
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 2,
                                  right: Insets().appPadding / 2,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appPadding / 2)),
                                child: Heading5(
                                  value: "Presenting Complaints",
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Heading3(
                    value: "Initial Complaint",
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  Visibility(
                    child: Column(
                      children: [
                        Flex(
                            direction: Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width,
                                height: 250,
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 2,
                                  right: Insets().appPadding / 2,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    color: Colors.grey.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(
                                        Insets().appPadding / 2)),
                                child: Heading5(
                                  value: "Initial Complaints",
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ]),
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}
