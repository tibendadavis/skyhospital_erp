import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyhospital_erp/components/divider.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/tile.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/globalVariables.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: must_be_immutable
class homePage extends StatefulWidget {
  bool? menu;
  homePage({super.key, this.menu});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final ScrollController _scrollController = ScrollController();
  bool _atStart = true;

  @override
  void initState() {
    super.initState();

    // Start scrolling automatically

    // startScrolling();
  }

  @override
  void dispose() {
    // Stop scrolling when the widget is disposed
    stopScrolling();

    super.dispose();
  }

  void stopScrolling() {
    // Stop the scrolling timer
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<ChartData> chartData = [
      ChartData("Jan", 250),
      ChartData("Feb", 320),
      ChartData("Mar", 200),
      ChartData("Apr", 340),
      ChartData("May", 400),
      ChartData("Jun", 350),
      ChartData("Jul", 500),
      ChartData("Aug", 450),
      ChartData("Sept", 670),
      ChartData("Oct", 120),
      ChartData("Nov", 340),
      ChartData("Dec", 530),
    ];
    final List<ChartData> chartData3 = [
      ChartData("Jan", 400),
      ChartData("Feb", 230),
      ChartData("Mar", 560),
      ChartData("Apr", 340),
      ChartData("May", 670),
      ChartData("Jun", 320),
      ChartData("Jul", 560),
      ChartData("Aug", 120),
      ChartData("Sept", 450),
      ChartData("Oct", 320),
      ChartData("Nov", 340),
      ChartData("Dec", 560),
    ];
    return SizedBox(
      child: ListView(
        children: [
          Container(
            child: Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(
                          bottom: Insets().appPadding / 2,
                          left: Responsive.isDesktop(context)
                              ? Insets().appPadding
                              : Insets().appPadding,
                          right: Insets().appPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 30 : 25,
                            value: "Today's Overview",
                            fontWeight: FontWeight.w700,
                            color: Palette().primaryColor,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                context,
                                "/home",
                              );
                            },
                            child: Icon(
                              Icons.restart_alt_rounded,
                              size: 40,
                              color: Palette().primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Column(children: [
                        Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (Responsive.isDesktop(context)) ...[
                              Expanded(
                                  child: tile(
                                tileHeading: "Today's Overview",
                                tileLine1: "Total Patients",
                                tileLine2: "Male Patients",
                                tileLine3: "Female Patients",
                                tileLine4: "Returned Patients",
                                tileData1: "12345678",
                                tileData2: "882345 (45%)",
                                tileData3: "883456 (34%)",
                                tileData4: "8345 (23%)",
                              )),
                              Expanded(
                                  child: tile(
                                tileHeading: "Appointments Today",
                                tileLine1: "Total Patients",
                                tileLine2: "Male Patients",
                                tileLine3: "Female Patients",
                                tileLine4: "Returned Patients",
                                tileData1: "0",
                                tileData2: "0 (0%)",
                                tileData3: "0 (0%)",
                                tileData4: "0 (0%)",
                              )),
                              Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          right: Insets().appPadding),
                                      child: tile(
                                        tileHeading: "Scheduled for Surgery",
                                        tileLine1: "Total Patients",
                                        tileLine2: "Male Patients",
                                        tileLine3: "Female Patients",
                                        tileLine4: "Returned Patients",
                                        tileData1: "0",
                                        tileData2: "0 (0%)",
                                        tileData3: "0 (0%)",
                                        tileData4: "0 (0%)",
                                      )))
                            ],
                            if (!Responsive.isDesktop(context)) ...[
                              tile(
                                tileHeading: "Today's Overview",
                                tileLine1: "Total Patients",
                                tileLine2: "Male Patients",
                                tileLine3: "Female Patients",
                                tileLine4: "Returned Patients",
                                tileData1: "12345678",
                                tileData2: "882345 (45%)",
                                tileData3: "883456 (34%)",
                                tileData4: "8345 (23%)",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              tile(
                                tileHeading: "Appointments Today",
                                tileLine1: "Total Patients",
                                tileLine2: "Male Patients",
                                tileLine3: "Female Patients",
                                tileLine4: "Returned Patients",
                                tileData1: "0",
                                tileData2: "0 (0%)",
                                tileData3: "0 (0%)",
                                tileData4: "0 (0%)",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              tile(
                                tileHeading: "Scheduled for Surgery",
                                tileLine1: "Total Patients",
                                tileLine2: "Male Patients",
                                tileLine3: "Female Patients",
                                tileLine4: "Returned Patients",
                                tileData1: "0",
                                tileData2: "0 (0%)",
                                tileData3: "0 (0%)",
                                tileData4: "0 (0%)",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ]
                          ],
                        ),
                      ]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: Responsive.isDesktop(context) &&
                                          globalData.menu == true
                                      ? size.width - 60
                                      : Responsive.isDesktop(context) &&
                                              globalData.menu == false
                                          ? size.width - 250
                                          : size.width,
                                  height: Responsive.isDesktop(context)
                                      ? 280
                                      : null,
                                  child: SingleChildScrollView(
                                    controller: _scrollController,
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: Responsive.isDesktop(context)
                                              ? 520
                                              : size.width - 20,
                                          margin: EdgeInsets.only(
                                            left: Insets().appPadding,
                                          ),
                                          padding: EdgeInsets.only(
                                            right: Insets().appPadding,
                                            top: 5,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          child: Container(
                                              //Initialize the spark charts widget
                                              child: SfCartesianChart(
                                            title: ChartTitle(
                                                text: ' ',
                                                textStyle: GoogleFonts.openSans(
                                                    color: Palette()
                                                        .primaryColor)),
                                            primaryXAxis: CategoryAxis(
                                                majorGridLines:
                                                    MajorGridLines(width: 0),
                                                minorGridLines:
                                                    MinorGridLines(width: 0)),
                                            primaryYAxis: NumericAxis(
                                                title: AxisTitle(
                                                  text: "Patients",
                                                  textStyle:
                                                      GoogleFonts.openSans(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Palette()
                                                              .primaryColor,
                                                          fontSize: 17),
                                                  alignment:
                                                      ChartAlignment.center,
                                                ),
                                                majorGridLines:
                                                    MajorGridLines(width: 0),
                                                minorGridLines:
                                                    MinorGridLines(width: 0)),
                                            series: [
                                              SplineAreaSeries<ChartData,
                                                  String>(
                                                color: Palette().primaryColor,
                                                dataSource: chartData,
                                                xValueMapper:
                                                    (ChartData data, _) =>
                                                        data.x,
                                                yValueMapper:
                                                    (ChartData data, _) =>
                                                        data.y,
                                                // Enable data label
                                                dataLabelSettings:
                                                    DataLabelSettings(
                                                        isVisible: false),
                                                // Enable tooltip
                                                enableTooltip: true,
                                                splineType: SplineType.natural,
                                                animationDelay: 300,
                                                animationDuration: 2500,

                                                gradient: LinearGradient(
                                                    colors: [
                                                      Palette().primaryColor,
                                                      Colors.white
                                                    ],
                                                    stops: [
                                                      0.4,
                                                      1.0
                                                    ],
                                                    end: Alignment.bottomCenter,
                                                    begin: Alignment.topCenter),

                                                // Enable point interaction
                                                // enablePointSelection: true,
                                                // Handle point tap event
                                                // onPointTapped:
                                                //     (PointTapArgs args) {
                                                // Do something on point tap
                                                //  },
                                              ),
                                            ],
                                          )),
                                        ),
                                        Container(
                                          width: Responsive.isDesktop(context)
                                              ? 520
                                              : 520,
                                          margin: EdgeInsets.only(
                                            left: Insets().appPadding,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          child: SfCircularChart(
                                            series: <CircularSeries>[
                                              PieSeries<ChartData2, String>(
                                                dataSource: chartData2,
                                                enableTooltip: true,

                                                xValueMapper:
                                                    (ChartData2 data, _) =>
                                                        data.x,
                                                yValueMapper:
                                                    (ChartData2 data, _) =>
                                                        data.y,
                                                strokeColor:
                                                    Palette().primaryColor,
                                                radius: "90",
                                                explode: true,
                                                explodeOffset: '20%',
                                                explodeIndex: 0,
                                                animationDelay: 7,
                                                animationDuration: 1500,

                                                //enableSmartLabels: true,
                                                dataLabelMapper:
                                                    (ChartData2 data, _) =>
                                                        '${data.x} : ${data.y}',
                                                dataLabelSettings:
                                                    DataLabelSettings(
                                                  isVisible: true,
                                                  labelPosition:
                                                      ChartDataLabelPosition
                                                          .outside,
                                                  useSeriesColor: true,
                                                  textStyle:
                                                      GoogleFonts.openSans(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                  // labelIntersectAction:
                                                  //     LabelIntersectAction
                                                  //         .hide
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: Responsive.isDesktop(context)
                                              ? 520
                                              : size.width - 20,
                                          margin: EdgeInsets.only(
                                            left: Insets().appPadding,
                                          ),
                                          padding: EdgeInsets.only(
                                            right: Insets().appPadding,
                                            top: 5,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          child: Container(
                                              //Initialize the spark charts widget
                                              child: SfCartesianChart(
                                            title: ChartTitle(
                                                text: ' ',
                                                textStyle: GoogleFonts.openSans(
                                                    color: Palette()
                                                        .primaryColor)),
                                            primaryXAxis: CategoryAxis(
                                                majorGridLines:
                                                    MajorGridLines(width: 0),
                                                minorGridLines:
                                                    MinorGridLines(width: 0)),
                                            primaryYAxis: NumericAxis(
                                                title: AxisTitle(
                                                  text: "Patients",
                                                  textStyle:
                                                      GoogleFonts.openSans(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Palette()
                                                              .primaryColor,
                                                          fontSize: 17),
                                                  alignment:
                                                      ChartAlignment.center,
                                                ),
                                                majorGridLines:
                                                    MajorGridLines(width: 0),
                                                minorGridLines:
                                                    MinorGridLines(width: 0)),
                                            series: <SplineSeries<ChartData,
                                                String>>[
                                              SplineSeries<ChartData, String>(
                                                dataSource: chartData3,
                                                xValueMapper:
                                                    (ChartData data, _) =>
                                                        data.x,
                                                yValueMapper:
                                                    (ChartData data, _) =>
                                                        data.y,
                                                // Enable data label
                                                dataLabelSettings:
                                                    DataLabelSettings(
                                                        isVisible: false),
                                                // Enable tooltip
                                                enableTooltip: true,
                                                splineType: SplineType.natural,
                                                animationDelay: 300,
                                                animationDuration: 2500,
                                                color: Colors.blue,
                                                opacity: 1,
                                                width: 3,
                                              ),
                                              SplineSeries<ChartData, String>(
                                                dataSource: chartData,
                                                xValueMapper:
                                                    (ChartData data, _) =>
                                                        data.x,
                                                yValueMapper:
                                                    (ChartData data, _) =>
                                                        data.y,
                                                // Enable data label
                                                dataLabelSettings:
                                                    DataLabelSettings(
                                                        isVisible: false),
                                                // Enable tooltip
                                                enableTooltip: true,
                                                splineType: SplineType.natural,
                                                animationDelay: 300,
                                                animationDuration: 2500,
                                                color: Colors.pink,
                                                opacity: 1,
                                                width: 3,
                                              )
                                            ],
                                          )),
                                        ),
                                        Container(
                                            width: Responsive.isDesktop(context)
                                                ? 500
                                                : size.width - 20,
                                            margin: EdgeInsets.only(
                                              left: Insets().appPadding,
                                              right: Insets().appPadding,
                                            ),
                                            padding: EdgeInsets.only(
                                              right: Insets().appPadding,
                                              top: 5,
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appRadiusMin +
                                                            4)),
                                            child: SfCartesianChart(
                                              title: ChartTitle(
                                                  text: ' ',
                                                  textStyle:
                                                      GoogleFonts.openSans(
                                                          color: Palette()
                                                              .primaryColor)),
                                              primaryXAxis: CategoryAxis(
                                                  majorGridLines:
                                                      MajorGridLines(width: 0),
                                                  minorGridLines:
                                                      MinorGridLines(width: 0)),
                                              primaryYAxis: NumericAxis(
                                                  title: AxisTitle(
                                                    text: "Patients",
                                                    textStyle:
                                                        GoogleFonts.openSans(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Palette()
                                                                .primaryColor,
                                                            fontSize: 17),
                                                    alignment:
                                                        ChartAlignment.center,
                                                  ),
                                                  majorGridLines:
                                                      MajorGridLines(width: 0),
                                                  minorGridLines:
                                                      MinorGridLines(width: 0)),
                                              series: [
                                                ScatterSeries<ChartData,
                                                    String>(
                                                  dataSource: chartData,
                                                  xValueMapper:
                                                      (ChartData data, _) =>
                                                          data.x,
                                                  yValueMapper:
                                                      (ChartData data, _) =>
                                                          data.y,
                                                  markerSettings:
                                                      MarkerSettings(
                                                          isVisible: true,
                                                          shape: DataMarkerType
                                                              .circle,
                                                          color: Colors
                                                              .yellow.shade500,
                                                          borderWidth: 2,
                                                          width: 8,
                                                          borderColor:
                                                              Colors.black),
                                                ),
                                                ScatterSeries<ChartData,
                                                    String>(
                                                  dataSource: chartData3,
                                                  xValueMapper:
                                                      (ChartData data, _) =>
                                                          data.x,
                                                  yValueMapper:
                                                      (ChartData data, _) =>
                                                          data.y,
                                                  markerSettings:
                                                      MarkerSettings(
                                                          isVisible: true,
                                                          shape: DataMarkerType
                                                              .circle,
                                                          width: 8,
                                                          color: Colors
                                                              .brown.shade600,
                                                          borderWidth: 2,
                                                          borderColor:
                                                              Colors.black),
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                if (!_atStart)
                                  Positioned(
                                    left: 20,
                                    top: Responsive.isDesktop(context)
                                        ? 100
                                        : 130,
                                    child: InkWell(
                                      onTap: () {
                                        _scrollController.animateTo(
                                            duration:
                                                Duration(milliseconds: 1500),
                                            curve:
                                                Curves.fastLinearToSlowEaseIn,
                                            _scrollController
                                                .position.minScrollExtent);
                                        setState(() {
                                          _atStart = !_atStart;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Icon(
                                          Icons.navigate_before_rounded,
                                          color: Colors.grey[700],
                                          size: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                if (_atStart)
                                  Positioned(
                                    right: 20,
                                    top: Responsive.isDesktop(context)
                                        ? 100
                                        : 130,
                                    child: InkWell(
                                      onTap: () {
                                        _scrollController.animateTo(
                                            duration:
                                                Duration(milliseconds: 1500),
                                            curve:
                                                Curves.fastLinearToSlowEaseIn,
                                            _scrollController
                                                .position.maxScrollExtent);

                                        setState(() {
                                          _atStart = !_atStart;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Icon(
                                          Icons.navigate_next_rounded,
                                          color: Colors.grey[700],
                                          size: 50,
                                        ),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ]),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(
                          top: Insets().appPadding / 2,
                          left: Responsive.isDesktop(context)
                              ? Insets().appPadding
                              : Insets().appPadding,
                          right: Insets().appPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: HeadingText(
                              size: Responsive.isDesktop(context) ? 27 : 25,
                              value: "Highlights",
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        children: [
                          if (Responsive.isDesktop(context)) ...[
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/outPatientManagement");
                              },
                              child: tile2(
                                tileHeading: "Total Patients",
                                tileData: "146,700",
                                icon: Icons.person,
                              ),
                            )),
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/outPatientManagement");
                              },
                              child: tile2(
                                tileHeading: "Total Male Patients",
                                tileData: "73,000",
                                icon: Icons.person,
                              ),
                            )),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/outPatientManagement");
                                },
                                child: tile2(
                                  tileHeading: "Total Female Patients",
                                  tileData: "73,000",
                                  icon: Icons.person,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(
                                  right: Insets().appPadding * 2),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/outPatientManagement");
                                },
                                child: tile2(
                                  tileHeading: "Returned Patients",
                                  tileData: "700",
                                  icon: Icons.person,
                                ),
                              ),
                            )),
                          ],
                          if (!Responsive.isDesktop(context)) ...[
                            Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/outPatientManagement");
                                  },
                                  child: tile2(
                                    tileHeading: "Total Patients",
                                    tileData: "146,700",
                                    icon: Icons.person,
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/outPatientManagement");
                                  },
                                  child: tile2(
                                    tileHeading: "Total Male Patients",
                                    tileData: "73,000",
                                    icon: Icons.person,
                                  ),
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                right: Insets().appPadding,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/outPatientManagement");
                                },
                                child: tile2(
                                  tileHeading: "Total Female Patients",
                                  tileData: "73,000",
                                  icon: Icons.person,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                right: Insets().appPadding,
                                bottom: Insets().appPadding,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/outPatientManagement");
                                },
                                child: tile2(
                                  tileHeading: "Returned Patients",
                                  tileData: "700",
                                  icon: Icons.person,
                                ),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                    myDivider(),
                    Container(
                      child: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        children: [
                          if (Responsive.isDesktop(context)) ...[
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/theater");
                              },
                              child: tile2(
                                tileHeading: "Total Surgery",
                                tileData: "734",
                                icon: Icons.hotel,
                              ),
                            )),
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/theater");
                              },
                              child: tile2(
                                tileHeading: "Performed Surgery",
                                tileData: "532",
                                icon: Icons.done_all,
                              ),
                            )),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/theater");
                                },
                                child: tile2(
                                    tileHeading: "Pending Surgery",
                                    tileData: "202",
                                    icon: Icons.pending_actions_rounded),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(
                                  right: Insets().appPadding * 2),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/payments");
                                },
                                child: tile2(
                                  tileHeading: "Payments (Tzs)",
                                  tileData: "48,670,545",
                                  icon: Icons.payments,
                                ),
                              ),
                            )),
                          ],
                          if (!Responsive.isDesktop(context)) ...[
                            Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/theater");
                                  },
                                  child: tile2(
                                    tileHeading: "Total Surgery",
                                    tileData: "734",
                                    icon: Icons.hotel,
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/theater");
                                  },
                                  child: tile2(
                                      tileHeading: "Performed Surgery",
                                      icon: Icons.done_all,
                                      tileData: "532"),
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                right: Insets().appPadding,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/theater");
                                },
                                child: tile2(
                                    tileHeading: "Pending Surgery",
                                    icon: Icons.pending_actions_rounded,
                                    tileData: "202"),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                right: Insets().appPadding,
                                bottom: Insets().appPadding,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/payments");
                                },
                                child: tile2(
                                  tileHeading: "Payments",
                                  tileData: "48,670,545",
                                  icon: Icons.payments,
                                ),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                    myDivider(),
                    Container(
                      child: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        children: [
                          if (Responsive.isDesktop(context)) ...[
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/doctorConsultation");
                              },
                              child: tile2(
                                tileHeading: "Total Consultations",
                                tileData: "1,654",
                                icon: Icons.local_hospital_rounded,
                              ),
                            )),
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/doctorConsultation");
                              },
                              child: tile2(
                                  tileHeading: "Top Performing Doctor",
                                  icon: Icons.local_hospital_rounded,
                                  tileData: "456"),
                            )),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/appointments/Scheduling");
                                },
                                child: tile2(
                                    tileHeading: "Appointments",
                                    icon: Icons.schedule_rounded,
                                    tileData: "347"),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(
                                  right: Insets().appPadding * 2),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/reports/referrals");
                                },
                                child: tile2(
                                    icon: Icons.output_rounded,
                                    tileHeading: "Referrals",
                                    tileData: "1,307"),
                              ),
                            )),
                          ],
                          if (!Responsive.isDesktop(context)) ...[
                            Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/doctorConsultation");
                                  },
                                  child: tile2(
                                    tileHeading: "Total Consultations",
                                    tileData: "99999",
                                    icon: Icons.local_hospital_rounded,
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/doctorConsultation");
                                  },
                                  child: tile2(
                                      tileHeading: "Top Performing Doctor",
                                      icon: Icons.local_hospital_rounded,
                                      tileData: "120"),
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                right: Insets().appPadding,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/appointments/Categories");
                                },
                                child: tile2(
                                    tileHeading: "Appointments",
                                    icon: Icons.schedule_rounded,
                                    tileData: "120"),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                right: Insets().appPadding,
                                bottom: Insets().appPadding,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/reports/referrals");
                                },
                                child: tile2(
                                    tileHeading: "Referrals",
                                    icon: Icons.output_rounded,
                                    tileData: "140"),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  final String x;
  final y;

  ChartData(this.x, this.y);
}

class ChartData2 {
  final String x;
  final double y;
  List<Color>? gradientColors;

  ChartData2(this.x, this.y);
}

final List<ChartData2> chartData2 = [
  ChartData2(
    "xxxxxxxx xxxxxxxxx\n",
    149000000,
  ),
  ChartData2(
    'xxxxxxx xxxxxxxx\n',
    123000000,
  ),
  ChartData2(
    'xxxxxxxxx xxxxxx\n',
    35909000,
  ),
  ChartData2(
    'xxxxxxxxx xxxxxx\n',
    20909000,
  ),
  ChartData2(
    'xxxxxxxxx xxxxxx\n',
    29021203,
  ),
];
