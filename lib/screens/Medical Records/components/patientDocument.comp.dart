import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/inputFile.comp.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class patientDocument extends StatefulWidget {
  patientDocument({super.key});

  @override
  State<patientDocument> createState() => _patientDocumentState();
}

class _patientDocumentState extends State<patientDocument> {
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
                        value: "Patient Documents",
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appPadding / 5))),
                              onPressed: () {},
                              child: Icon(
                                Icons.search,
                                color: Colors.blueAccent,
                                size: 22,
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appPadding / 5))),
                              onPressed: () {},
                              child: Icon(
                                Icons.file_upload_outlined,
                                color: Palette().primaryColor,
                                size: 22,
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appPadding / 5))),
                              onPressed: () {},
                              child: Icon(
                                Icons.delete,
                                color: Colors.grey.shade600,
                                size: 22,
                              )),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
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
                                    ? 490
                                    : size.width,
                                child: Column(children: [
                                  inputOptions(
                                    title: "Folder",
                                    opt1: "Doctor",
                                    opt2: "PatientPhoto",
                                    opt3: "HR",
                                    opt4: "MIS",
                                    opt5: "Mortuary",
                                    opt6: "MRD",
                                    opt7: "Nurse",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputFile(heading: "Choose File")
                                ]),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.6, color: Colors.grey),
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(
                                  Insets().appPadding / 2)),
                          child: Column(
                            children: [
                              Container(
                                width: size.width,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                decoration: BoxDecoration(
                                    color:
                                        Palette().primaryColor.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(
                                        Insets().appPadding / 2)),
                                child: Heading5(
                                  value: "Folder Name",
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                height: 400,
                                child: ListView(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Heading5(
                                        value: "Patient Photo",
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Heading5(
                                        value: "Doctor",
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Heading5(
                                        value: "Nurse",
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Heading5(
                                        value: "HR",
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Heading5(
                                        value: "MIS",
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Heading5(
                                        value: "Mortuary",
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Heading5(
                                        value: "MRD",
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Heading5(
                                        value: "OFD",
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 450,
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.6, color: Colors.grey),
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(
                                  Insets().appPadding / 2)),
                          child: Column(
                            children: [
                              Container(
                                width: size.width,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                decoration: BoxDecoration(
                                    color:
                                        Palette().primaryColor.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(
                                        Insets().appPadding / 2)),
                                child: Heading5(
                                  value: "Patient Photo",
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                height: 400,
                                child: ListView(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Icon(
                                                Icons.person,
                                                color: Palette().primaryColor,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ],
      )),
    );
  }
}
