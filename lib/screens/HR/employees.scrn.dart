import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/main.dart';
import 'package:skyhospital_erp/screens/HR/addEmployee.scrn.dart';
import 'package:skyhospital_erp/screens/HR/components/employeeView.comp.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class employees extends StatefulWidget {
  const employees({super.key});

  @override
  State<employees> createState() => _employeesState();
}

class _employeesState extends State<employees> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              value: "Employees",
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
                  icon: Icons.supervised_user_circle_sharp,
                  link: addEmployee(),
                  linkTitle: "New Employee",
                )),
                Expanded(
                    child:
                        tile2(tileHeading: "Total Employees", tileData: "240")),
                Expanded(
                    child:
                        tile2(tileHeading: "Male Employees", tileData: "120")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child:
                      tile2(tileHeading: "Female Employees", tileData: "120"),
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
                      link: addEmployee(),
                      linkTitle: "New Employee",
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
                    child:
                        tile2(tileHeading: "Male Employees", tileData: "120")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Female Employees", tileData: "120")),
              ]
            ],
          ),
          searchBar(
              title: "Search for Employee",
              opt1: searchInputOptions(
                title: "Department",
                opt1: "All",
              ),
              opt2: searchInputOptions(
                title: "Designation",
                opt1: "All",
              ),
              opt3: searchInputOptions(
                title: "Role",
                opt1: "All",
              ),
              opt4: searchInputOptions(
                title: "Status",
                opt1: "All",
              )),
          downloadBar(
            results: '27',
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
                            ? size.width / 17
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 12
                                : 25,
                        showCheckboxColumn: true,
                        checkboxHorizontalMargin: 10,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Employee ID",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Email",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "User Role",
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
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 13,
                              value: "EMP-10",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 13,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 13,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "vernice19@example.com",
                            )),
                            DataCell(searchInputOptions(
                              value: "Employee",
                              opt3: "Admin",
                              opt2: "Manager",
                              opt1: "Employee",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Active",
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: employeeView(),
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
                                          builder: (_) => addEmployee());
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
