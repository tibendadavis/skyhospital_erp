import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/funcs_main.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/addAttendance.scrn.dart';
import 'package:skyhospital_erp/screens/HR/components/attendanceDetails.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class attendance extends StatefulWidget {
  const attendance({super.key});

  @override
  State<attendance> createState() => _attendanceState();
}

class _attendanceState extends State<attendance> {
  var _month;
  var _year;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (_month == null)
      setState(() {
        _month = DateTime.now().month;
        _year = DateTime.now().year;
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<DateTime> daysInMonth = [];

    DateTime firstDay = DateTime(_year, _month, 1);

    int days = DateTime(_year as int, _month + 1, 0).day;

    for (int i = -1; i < days + 1; i++) {
      daysInMonth.add(firstDay.add(Duration(days: i)));
    }

    return Container(
      child: Expanded(
          child: Column(
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
              value: "Attendance",
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
                  icon: Icons.check,
                  link: addAttendance(),
                  linkTitle: "Mark Attendance",
                )),
                Expanded(
                    child:
                        tile2(tileHeading: "Total Employees", tileData: "240")),
                Expanded(
                    child: tile2(tileHeading: "Presentees", tileData: "120")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Absentees", tileData: "120"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.person,
                      link: addAttendance(),
                      linkTitle: "Mark Attendance",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child:
                        tile2(tileHeading: "Total Employee", tileData: "240")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Presentees", tileData: "120")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Absentees", tileData: "120")),
              ]
            ],
          ),
          searchBar(
              title: "Search for Employee",
              opt1: searchInputOptions(
                title: "Department",
                opt1: "All",
                onSelect: (value) {
                  setState(() {});
                },
              ),
              opt2: searchInputOptions(
                title: "Designation",
                opt1: "All",
                onSelect: (value) {
                  setState(() {});
                },
              ),
              opt3: searchInputOptions(
                title: "Month",
                opt1: "January",
                opt2: "February",
                opt3: "March",
                opt4: "April",
                opt5: "May",
                opt6: "June",
                opt7: "July",
                opt8: "August",
                opt9: "September",
                opt10: "October",
                opt11: "November",
                opt12: "December",
                onSelect: (value) {
                  setState(() {
                    _month = value;
                    _month = Funcs().monthSelect(_month);
                  });
                },
              ),
              opt4: searchInputOptions(
                title: "Year",
                opt1: "2023",
                opt2: "2022",
                opt3: "2021",
                opt4: "2020",
                opt5: "2019",
                opt6: "2018",
                opt7: "2017",
                opt8: "2016",
                opt9: "2015",
                opt10: "2014",
                opt11: "2013",
                opt12: "2012",
                onSelect: (value) {
                  setState(() {
                    _year = value;
                    _year = Funcs().yearSelect(_year);
                  });
                },
              ),
              opt5: searchInputOptions(
                title: "Late",
                opt1: "All",
                opt2: "Yes",
                opt3: "No",
                onSelect: (value) {
                  setState(() {});
                },
              )),
          downloadBar(
            icons: true,
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      dataRowHeight: 58,
                      showCheckboxColumn: false,
                      headingTextStyle:
                          TextStyle(color: Palette().primaryColor),
                      horizontalMargin: 0,
                      columnSpacing: Responsive.isDesktop(context) &&
                              size.width < 1600
                          ? size.width / 125
                          : Responsive.isDesktop(context) && size.width > 1600
                              ? size.width / 82
                              : 25,
                      showBottomBorder: true,
                      columns: daysInMonth.map((day) {
                        if ((day.month < _month || day.year < _year) &&
                            day.day >= 28)
                          return DataColumn(
                            label: SizedBox(
                              width: 140,
                              child: HeadingText(
                                size: 14,
                                value: "Employee",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          );
                        if ((day.month > _month || day.year > _year) &&
                            day.day == 1)
                          return DataColumn(
                            label: SizedBox(
                              width: 40,
                              child: HeadingText(
                                size: 14,
                                value: "Total",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          );
                        return DataColumn(
                          label: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(
                                size: 14,
                                value: DateFormat('d').format(day),
                                fontWeight: FontWeight.bold,
                              ),
                              HeadingText(
                                size: 11,
                                value: "${DateFormat('EEE').format(day)}",
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                      rows: [
                        DataRow(
                          onSelectChanged: (value) {},
                          cells: daysInMonth.map((day) {
                            if ((day.month < _month || day.year < _year) &&
                                day.day >= 28)
                              return DataCell(Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      radius: Insets().appRadiusMid - 4),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HeadingText(
                                        size: 13,
                                        value: "Kwilasa, Minda Busobe",
                                        fontWeight: FontWeight.w600,
                                      ),
                                      HeadingText(
                                        size: 12,
                                        value: "Senior",
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                            if ((day.month > _month || day.year > _year) &&
                                day.day == 1)
                              return DataCell(
                                SizedBox(
                                  width: 40,
                                  child: HeadingText(
                                    size: 14,
                                    value: "0/${days}",
                                  ),
                                ),
                              );
                            return DataCell(
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) =>
                                                attendanceDetails(date: day));
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: Color.fromRGBO(153, 165, 181, 1),
                                        size: 15,
                                      )),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        DataRow(
                          onSelectChanged: (value) {},
                          cells: daysInMonth.map((day) {
                            if ((day.month < _month || day.year < _year) &&
                                day.day >= 28)
                              return DataCell(Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      radius: Insets().appRadiusMid - 4),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HeadingText(
                                        size: 13,
                                        value: "Kwilasa, Minda Busobe",
                                        fontWeight: FontWeight.w600,
                                      ),
                                      HeadingText(
                                        size: 12,
                                        value: "Senior",
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                            if ((day.month > _month || day.year > _year) &&
                                day.day == 1)
                              return DataCell(
                                SizedBox(
                                  width: 40,
                                  child: HeadingText(
                                    size: 14,
                                    value: "0/${days}",
                                  ),
                                ),
                              );
                            return DataCell(
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) =>
                                                attendanceDetails(date: day));
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: Color.fromRGBO(153, 165, 181, 1),
                                        size: 15,
                                      )),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        DataRow(
                          onSelectChanged: (value) {},
                          cells: daysInMonth.map((day) {
                            if ((day.month < _month || day.year < _year) &&
                                day.day >= 28)
                              return DataCell(Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      radius: Insets().appRadiusMid - 4),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HeadingText(
                                        size: 13,
                                        value: "Kwilasa, Minda Busobe",
                                        fontWeight: FontWeight.w600,
                                      ),
                                      HeadingText(
                                        size: 12,
                                        value: "Senior",
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                            if ((day.month > _month || day.year > _year) &&
                                day.day == 1)
                              return DataCell(
                                SizedBox(
                                  width: 40,
                                  child: HeadingText(
                                    size: 14,
                                    value: "0/${days}",
                                  ),
                                ),
                              );
                            return DataCell(
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) =>
                                                attendanceDetails(date: day));
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: Color.fromRGBO(153, 165, 181, 1),
                                        size: 15,
                                      )),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        DataRow(
                          onSelectChanged: (value) {},
                          cells: daysInMonth.map((day) {
                            if ((day.month < _month || day.year < _year) &&
                                day.day >= 28)
                              return DataCell(Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      radius: Insets().appRadiusMid - 4),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HeadingText(
                                        size: 13,
                                        value: "Kwilasa, Minda Busobe",
                                        fontWeight: FontWeight.w600,
                                      ),
                                      HeadingText(
                                        size: 12,
                                        value: "Senior",
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                            if ((day.month > _month || day.year > _year) &&
                                day.day == 1)
                              return DataCell(
                                SizedBox(
                                  width: 40,
                                  child: HeadingText(
                                    size: 14,
                                    value: "0/${days}",
                                  ),
                                ),
                              );
                            return DataCell(
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) =>
                                                attendanceDetails(date: day));
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: Color.fromRGBO(153, 165, 181, 1),
                                        size: 15,
                                      )),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        DataRow(
                          onSelectChanged: (value) {},
                          cells: daysInMonth.map((day) {
                            if ((day.month < _month || day.year < _year) &&
                                day.day >= 28)
                              return DataCell(Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      radius: Insets().appRadiusMid - 4),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HeadingText(
                                        size: 13,
                                        value: "Kwilasa, Minda Busobe",
                                        fontWeight: FontWeight.w600,
                                      ),
                                      HeadingText(
                                        size: 12,
                                        value: "Senior",
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                            if ((day.month > _month || day.year > _year) &&
                                day.day == 1)
                              return DataCell(
                                SizedBox(
                                  width: 40,
                                  child: HeadingText(
                                    size: 14,
                                    value: "0/${days}",
                                  ),
                                ),
                              );
                            return DataCell(
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) =>
                                                attendanceDetails(date: day));
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: Color.fromRGBO(153, 165, 181, 1),
                                        size: 15,
                                      )),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ]),
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
