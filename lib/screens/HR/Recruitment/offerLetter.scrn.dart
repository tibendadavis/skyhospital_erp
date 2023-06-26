import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/offerLetterDetails.comp.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/sendDialog.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/main.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addOfferLetter.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class offerLetter extends StatefulWidget {
  bool? heading;
  offerLetter({super.key, this.heading});

  @override
  State<offerLetter> createState() => _offerLetterState();
}

class _offerLetterState extends State<offerLetter> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.heading == null)
      setState(() {
        widget.heading = true;
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
        children: [
          if (widget.heading!)
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
                value: "Offer Letters",
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade800,
              ),
            ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            children: [
              if (Responsive.isDesktop(context)) ...[
                Expanded(
                    child: tile3(
                  icon: Icons.label_important_rounded,
                  link: addOfferLetter(),
                  linkTitle: "New Offer",
                )),
                Expanded(
                    child: tile2(tileHeading: "Total Offers", tileData: "24")),
                Expanded(
                    child:
                        tile2(tileHeading: "Accepted Offers", tileData: "12")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Declined Offers", tileData: "12"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.label_important_rounded,
                      link: addOfferLetter(),
                      linkTitle: "New Offer",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Total Offers", tileData: "24")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child:
                        tile2(tileHeading: "Accepted Offers", tileData: "12")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child:
                        tile2(tileHeading: "Declined Offers", tileData: "12")),
              ]
            ],
          ),
          searchBar(
            title: "Search for Job",
            opt2: searchInputOptions(
              title: "Status",
              opt1: "All",
              opt2: "Pending",
              opt3: "Draft",
              opt4: "Withdraw",
              opt5: "Accepted",
              opt6: "Declined",
            ),
            opt3: searchInputOptions(
              title: "Duration",
              opt1: "Today",
              opt2: "Last 30 Days",
              opt3: "Last Month",
              opt4: "Last 6 Months",
              opt5: "Last 1 Year",
            ),
          ),
          downloadBar(
            results: '7',
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
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(Insets().appPadding / 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appGap + 6)),
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                        dataRowHeight: 55,
                        headingTextStyle:
                            TextStyle(color: Palette().primaryColor),
                        horizontalMargin: 0,
                        columnSpacing: Responsive.isDesktop(context) &&
                                size.width < 1600
                            ? size.width / 17.3
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 11.8
                                : 25,
                        showCheckboxColumn: true,
                        checkboxHorizontalMargin: 10,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Job",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Job Applicant",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Offer Expire On",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Expected Joining Date",
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
                              value: "Action",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                        ],
                        rows: [
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr. John Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "25-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Withdraw",
                              opt1: "Pending",
                              opt3: "Accept",
                              opt4: "Decline",
                              opt5: "Draft",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: offerLetterDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addOfferLetter());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => sendDialog());
                                    },
                                    tooltip: "Send",
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr. John Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "25-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Withdraw",
                              opt1: "Pending",
                              opt3: "Accept",
                              opt4: "Decline",
                              opt5: "Draft",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: offerLetterDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addOfferLetter());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => sendDialog());
                                    },
                                    tooltip: "Send",
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr. John Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "25-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Withdraw",
                              opt1: "Pending",
                              opt3: "Accept",
                              opt4: "Decline",
                              opt5: "Draft",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: offerLetterDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addOfferLetter());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => sendDialog());
                                    },
                                    tooltip: "Send",
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr. John Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "25-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Withdraw",
                              opt1: "Pending",
                              opt3: "Accept",
                              opt4: "Decline",
                              opt5: "Draft",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: offerLetterDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addOfferLetter());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => sendDialog());
                                    },
                                    tooltip: "Send",
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr. John Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "25-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Withdraw",
                              opt1: "Pending",
                              opt3: "Accept",
                              opt4: "Decline",
                              opt5: "Draft",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: offerLetterDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addOfferLetter());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => sendDialog());
                                    },
                                    tooltip: "Send",
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                              ],
                            )),
                          ]),
                        ]),
                  ),
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
