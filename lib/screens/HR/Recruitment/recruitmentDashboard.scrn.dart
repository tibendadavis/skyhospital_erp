import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/main.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/candidateDatabase.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/interviewSchedule.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/jobApplication.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/offerLetter.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/jobs.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class recruitmentDashboard extends StatefulWidget {
  const recruitmentDashboard({super.key});

  @override
  State<recruitmentDashboard> createState() => _recruitmentDashboardState();
}

class _recruitmentDashboardState extends State<recruitmentDashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
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
              value: "Recruitment Dashboard",
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
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        page: jobs(),
                      ),
                    ));
                  },
                  child: tile2(
                    tileHeading: "Total Openings",
                    tileData: "24",
                    icon: Icons.open_in_browser,
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        page: jobApplication(),
                      ),
                    ));
                  },
                  child: tile2(
                    tileHeading: "Total Applications",
                    tileData: "21",
                    icon: Icons.settings_applications,
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        page: offerLetter(),
                      ),
                    ));
                  },
                  child: tile2(
                    tileHeading: "Total Hired",
                    tileData: "12",
                    icon: Icons.work,
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyHomePage(
                          page: jobApplication(),
                        ),
                      ));
                    },
                    child: tile2(
                        tileHeading: "Total Rejected",
                        tileData: "9",
                        icon: Icons.clear),
                  ),
                )),
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: jobs(),
                          ),
                        ));
                      },
                      child: tile2(
                        tileHeading: "Total Openings",
                        tileData: "24",
                        icon: Icons.open_in_browser,
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: jobApplication(),
                          ),
                        ));
                      },
                      child: tile2(
                        tileHeading: "Total Applications",
                        tileData: "2",
                        icon: Icons.settings_applications,
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: offerLetter(),
                          ),
                        ));
                      },
                      child: tile2(
                        tileHeading: "Total Hired",
                        tileData: "12",
                        icon: Icons.work,
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: jobApplication(),
                          ),
                        ));
                      },
                      child: tile2(
                          tileHeading: "Total Rejected",
                          tileData: "1",
                          icon: Icons.clear),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: jobApplication(),
                          ),
                        ));
                      },
                      child: tile2(
                        tileHeading: "New Applications",
                        tileData: "1",
                        icon: Icons.new_label_rounded,
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: candidateDB(),
                          ),
                        ));
                      },
                      child: tile2(
                        tileHeading: "Shortlisted Candidate",
                        tileData: "1",
                        icon: Icons.short_text_rounded,
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: interviewSchedule(),
                          ),
                        ));
                      },
                      child: tile2(
                          tileHeading: "Today's Interview",
                          tileData: "0",
                          icon: Icons.today_rounded),
                    )),
              ]
            ],
          ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            children: [
              if (Responsive.isDesktop(context)) ...[
                SizedBox(
                  width:
                      Responsive.isDesktop(context) ? size.width / 1.53 : null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyHomePage(
                              page: jobApplication(),
                            ),
                          ));
                        },
                        child: tile2(
                          tileHeading: "New Applications",
                          tileData: "0",
                          icon: Icons.new_label_rounded,
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyHomePage(
                              page: candidateDB(),
                            ),
                          ));
                        },
                        child: tile2(
                          tileHeading: "Shortlisted Candidate",
                          tileData: "1",
                          icon: Icons.short_text_rounded,
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: Insets().appPadding * 2),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                page: interviewSchedule(),
                              ),
                            ));
                          },
                          child: tile2(
                              tileHeading: "Today's Interview",
                              tileData: "9",
                              icon: Icons.today_rounded),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                left: Insets().appPadding, bottom: Insets().appPadding),
            padding: EdgeInsets.only(
                left: Insets().appPadding,
                right: Insets().appPadding,
                top: Insets().appGap + 2,
                bottom: Insets().appPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appGap + 6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading3(
                    value: "Total Applications",
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold),
                SizedBox(
                  height: 300,
                  child: ListView(children: [
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
                              dataRowHeight: 55,
                              columnSpacing: Responsive.isDesktop(context) &&
                                      size.width < 1600
                                  ? size.width / 10
                                  : Responsive.isDesktop(context) &&
                                          size.width > 1600
                                      ? size.width / 8.5
                                      : 25,
                              headingTextStyle:
                                  TextStyle(color: Palette().primaryColor),
                              horizontalMargin: 0,
                              showCheckboxColumn: true,
                              checkboxHorizontalMargin: 10,
                              showBottomBorder: true,
                              columns: [
                                DataColumn(
                                    label: Expanded(
                                  child: HeadingText(
                                    size: 14,
                                    value: "Jobs",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: Expanded(
                                  child: HeadingText(
                                    size: 14,
                                    value: "Applied",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: Expanded(
                                  child: HeadingText(
                                    size: 14,
                                    value: "Phone Screen",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: Expanded(
                                  child: HeadingText(
                                    size: 14,
                                    value: "Interview",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: Expanded(
                                  child: HeadingText(
                                    size: 14,
                                    value: "Hired",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: Expanded(
                                  child: HeadingText(
                                    size: 14,
                                    value: "Rejected",
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
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                if (Responsive.isDesktop(context)) ...[
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Insets().appPadding,
                            bottom: Insets().appPadding),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading3(
                                value: "Application Sources",
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.bold),
                            SfCircularChart(
                              series: <CircularSeries>[
                                PieSeries<ChartData2, String>(
                                  dataSource: chartData2,
                                  enableTooltip: true,

                                  xValueMapper: (ChartData2 data, _) => data.x,
                                  yValueMapper: (ChartData2 data, _) => data.y,
                                  strokeColor: Palette().primaryColor,
                                  radius: "90",
                                  explode: true,
                                  explodeOffset: '20%',
                                  explodeIndex: 0,
                                  animationDelay: 7,
                                  animationDuration: 1500,

                                  //enableSmartLabels: true,
                                  dataLabelMapper: (ChartData2 data, _) =>
                                      '${data.x} : ${data.y}',
                                  dataLabelSettings: DataLabelSettings(
                                    isVisible: true,
                                    labelPosition:
                                        ChartDataLabelPosition.outside,
                                    useSeriesColor: true,
                                    textStyle: GoogleFonts.openSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    // labelIntersectAction:
                                    //     LabelIntersectAction
                                    //         .hide
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(
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
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heading3(
                              value: "Application Status",
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold),
                          SfCircularChart(
                            series: <CircularSeries>[
                              PieSeries<ChartData2, String>(
                                dataSource: chartData3,
                                enableTooltip: true,

                                xValueMapper: (ChartData2 data, _) => data.x,
                                yValueMapper: (ChartData2 data, _) => data.y,
                                strokeColor: Palette().primaryColor,
                                radius: "90",
                                explode: true,
                                explodeOffset: '20%',
                                explodeIndex: 0,
                                animationDelay: 7,
                                animationDuration: 1500,

                                //enableSmartLabels: true,
                                dataLabelMapper: (ChartData2 data, _) =>
                                    '${data.x} : ${data.y}',
                                dataLabelSettings: DataLabelSettings(
                                  isVisible: true,
                                  labelPosition: ChartDataLabelPosition.outside,
                                  useSeriesColor: true,
                                  textStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                  // labelIntersectAction:
                                  //     LabelIntersectAction
                                  //         .hide
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                if (!Responsive.isDesktop(context)) ...[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: 15),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Column(
                        children: [
                          Heading3(
                              value: "Application Sources",
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold),
                          SfCircularChart(
                            series: <CircularSeries>[
                              PieSeries<ChartData2, String>(
                                dataSource: chartData2,
                                enableTooltip: true,

                                xValueMapper: (ChartData2 data, _) => data.x,
                                yValueMapper: (ChartData2 data, _) => data.y,
                                strokeColor: Palette().primaryColor,
                                radius: "90",
                                explode: true,
                                explodeOffset: '20%',
                                explodeIndex: 0,
                                animationDelay: 7,
                                animationDuration: 1500,

                                //enableSmartLabels: true,
                                dataLabelMapper: (ChartData2 data, _) =>
                                    '${data.x} : ${data.y}',
                                dataLabelSettings: DataLabelSettings(
                                  isVisible: true,
                                  labelPosition: ChartDataLabelPosition.outside,
                                  useSeriesColor: true,
                                  textStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                  // labelIntersectAction:
                                  //     LabelIntersectAction
                                  //         .hide
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        left: Insets().appPadding,
                        bottom: 15,
                        right: Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Column(
                        children: [
                          Heading3(
                              value: "Application Sources",
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold),
                          SfCircularChart(
                            series: <CircularSeries>[
                              PieSeries<ChartData2, String>(
                                dataSource: chartData3,
                                enableTooltip: true,

                                xValueMapper: (ChartData2 data, _) => data.x,
                                yValueMapper: (ChartData2 data, _) => data.y,
                                strokeColor: Palette().primaryColor,
                                radius: "90",
                                explode: true,
                                explodeOffset: '20%',
                                explodeIndex: 0,
                                animationDelay: 7,
                                animationDuration: 1500,

                                //enableSmartLabels: true,
                                dataLabelMapper: (ChartData2 data, _) =>
                                    '${data.x} : ${data.y}',
                                dataLabelSettings: DataLabelSettings(
                                  isVisible: true,
                                  labelPosition: ChartDataLabelPosition.outside,
                                  useSeriesColor: true,
                                  textStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                  // labelIntersectAction:
                                  //     LabelIntersectAction
                                  //         .hide
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ]
              ]),
          Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                if (Responsive.isDesktop(context)) ...[
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Insets().appPadding,
                            bottom: Insets().appPadding),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading3(
                                value: "Open Jobs",
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.bold),
                            SizedBox(
                              height: 250,
                              child: ListView(children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding:
                                      EdgeInsets.all(Insets().appPadding / 3),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appGap + 6)),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                          dataRowHeight: 55,
                                          columnSpacing: Responsive.isDesktop(
                                                      context) &&
                                                  size.width < 1600
                                              ? size.width / 13
                                              : Responsive.isDesktop(context) &&
                                                      size.width > 1600
                                                  ? size.width / 10.3
                                                  : 25,
                                          headingTextStyle: TextStyle(
                                              color: Palette().primaryColor),
                                          horizontalMargin: 0,
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
                                                value: "End Date",
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )),
                                            DataColumn(
                                                label: Expanded(
                                              child: HeadingText(
                                                size: 14,
                                                value: "Recruiter",
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
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(
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
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heading3(
                              value: "Today's Interview",
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold),
                          SizedBox(
                            height: 250,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                if (!Responsive.isDesktop(context)) ...[
                  Container(
                    width: size.width,
                    margin: EdgeInsets.only(
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
                        borderRadius:
                            BorderRadius.circular(Insets().appRadiusMin + 4)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading3(
                            value: "Open Jobs",
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold),
                        SizedBox(
                          height: 250,
                          child: ListView(children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(Insets().appPadding / 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appGap + 6)),
                              child: SizedBox(
                                width: double.infinity,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DataTable(
                                      dataRowHeight: 55,
                                      columnSpacing:
                                          Responsive.isDesktop(context) &&
                                                  size.width < 1600
                                              ? size.width / 13
                                              : Responsive.isDesktop(context) &&
                                                      size.width > 1600
                                                  ? size.width / 10.3
                                                  : 25,
                                      headingTextStyle: TextStyle(
                                          color: Palette().primaryColor),
                                      horizontalMargin: 0,
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
                                            value: "End Date",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: Expanded(
                                          child: HeadingText(
                                            size: 14,
                                            value: "Recruiter",
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
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin: EdgeInsets.only(
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
                        borderRadius:
                            BorderRadius.circular(Insets().appRadiusMin + 4)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading3(
                            value: "Today's Interview",
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold),
                        SizedBox(
                          height: 250,
                        ),
                      ],
                    ),
                  ),
                ]
              ])
        ],
      )),
    );
  }
}

class ChartData2 {
  final String x;
  final double y;
  List<Color>? gradientColors;

  ChartData2(this.x, this.y);
}

final List<ChartData2> chartData2 = [
  ChartData2(
    "LinkedIn\n",
    2,
  ),
  ChartData2(
    'Facebook\n',
    1,
  ),
  ChartData2(
    'Instagram\n',
    1,
  ),
  ChartData2(
    'Twitter\n',
    1,
  ),
  ChartData2(
    'Other\n',
    1,
  ),
];
final List<ChartData2> chartData3 = [
  ChartData2(
    "Applied\n",
    2,
  ),
  ChartData2(
    'Phone Screen\n',
    1,
  ),
  ChartData2(
    'Interview\n',
    1,
  ),
  ChartData2(
    'Hired\n',
    1,
  ),
  ChartData2(
    'Rejected\n',
    1,
  ),
];
