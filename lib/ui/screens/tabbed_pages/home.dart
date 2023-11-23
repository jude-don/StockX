import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockx/resources/ui_resources.dart';

import '../../../models/Stock.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      GlobalKey<AnimatedCircularChartState>();
  List<Stock> stocks = [
    Stock(
      image: 'assets/images/meta.png',
      stockName: AppStrings.meta,
      companyName: AppStrings.metaPlatform,
      amount: '339.97',
      difference: '-4.93',
    ),
    Stock(
      image: 'assets/images/ford.png',
      stockName: AppStrings.ford,
      companyName: AppStrings.fordMotor,
      amount: '339.97',
      difference: '-4.93',
    ),
    Stock(
      image: 'assets/images/tesla.png',
      stockName: AppStrings.tesla,
      companyName: AppStrings.teslaCompany,
      amount: '339.97',
      difference: '-4.93',
    ),
    Stock(
      image: 'assets/images/meta.png',
      stockName: AppStrings.meta,
      companyName: AppStrings.metaPlatform,
      amount: '339.97',
      difference: '-4.93',
    ),
    Stock(
      image: 'assets/images/ford.png',
      stockName: AppStrings.ford,
      companyName: AppStrings.fordMotor,
      amount: '339.97',
      difference: '-4.93',
    ),
    Stock(
      image: 'assets/images/tesla.png',
      stockName: AppStrings.tesla,
      companyName: AppStrings.teslaCompany,
      amount: '339.97',
      difference: '-4.93',
    )
  ];

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.primaryColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light),
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: AppColors.primaryColor,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 12.0, bottom: 12.0),
          child: Image(
            image: const AssetImage('assets/images/stockx_logo_white.png'),
            height: deviceSize.height * 0.03,
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Image(
                  image: const AssetImage(
                    'assets/images/notifications.png',
                  ),
                  height: deviceSize.height * 0.028)),
          const SizedBox(
            width: 17,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 12.0, bottom: 12.0, right: 18.0),
            child: Image(
              image: const AssetImage('assets/images/settings.png'),
              height: deviceSize.height * 0.028,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [_buildUpperContent(), _buildLowerContent()],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildUpperContent() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.totalValue,
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: AppColors.primaryVariantColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70.47, left: 80),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "\$ 25,658.23",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.surfaceColor,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal)),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "2.7%",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color(0xFF07AA00),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal)),
                  ),
                  const SizedBox(width: 1.72),
                  const Image(
                    image: AssetImage('assets/images/arrowup.png'),
                    height: 7.23,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/add.png'),
                  height: 15.0,
                ),
                const SizedBox(
                  width: 11.0,
                ),
                Text(AppStrings.topUp,
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.surfaceColor,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal)))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLowerContent() {
    return Container(
      padding: const EdgeInsets.only(right: 18.0, left: 18.0, top: 30, bottom: 20 ),
      decoration: const BoxDecoration(color: AppColors.surfaceColor),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _recentInvestmentCard(),
          const SizedBox(height: 26),
          Text(
            AppStrings.todayStocks,
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: AppColors.textColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal)),
          ),
          const SizedBox(
            height: 15.0,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: stocks.length,
            itemBuilder: (context,index){
             Stock item = stocks[index];
              return _listItem(
                item.image ?? '',
                item.stockName ?? '',
                item.companyName ?? '',
                item.amount ?? '',
                item.difference ?? ''
              );
            },
          )
        ],
      ),
    );
  }

  Widget _recentInvestmentCard() {
    return Card(
      color: AppColors.surfaceColor,
      surfaceTintColor: AppColors.surfaceColor,
      elevation: 0.8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: AppColors.borderColor, width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.recentInvestment,
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: AppColors.textColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal))),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: AnimatedCircularChart(
                    duration: const Duration(milliseconds: 5000),
                    key: _chartKey,
                    size: const Size(180.0, 180.0),
                    initialChartData: const <CircularStackEntry>[
                      CircularStackEntry(
                        <CircularSegmentEntry>[
                          CircularSegmentEntry(
                            40,
                            AppColors.graphColor2,
                            rankKey: 'Apple',
                          ),
                          CircularSegmentEntry(
                            26,
                            AppColors.graphColor1,
                            rankKey: 'Starbucks',
                          ),
                          CircularSegmentEntry(
                            34,
                            AppColors.graphColor3,
                            rankKey: 'Nike',
                          ),
                        ],
                        rankKey: 'progress',
                      ),
                    ],
                    chartType: CircularChartType.Radial,
                    percentageValues: true,
                    holeLabel: '10,358',
                    holeRadius: 30,
                    labelStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                const SizedBox(width: 24.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _cardRowContent(
                        color: AppColors.graphColor2,
                        text: AppStrings.apple,
                        amount: "5,500"),
                    const SizedBox(height: 15),
                    _cardRowContent(
                        color: AppColors.graphColor3,
                        text: AppStrings.nike,
                        amount: "2,500"),
                    const SizedBox(height: 15),
                    _cardRowContent(
                        color: AppColors.graphColor1,
                        text: AppStrings.starbucks,
                        amount: "2,358")
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardRowContent(
      {required Color color, required String text, required String amount}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 18,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal)),
            ),
            const SizedBox(height: 5.0),
            Text(
              "+ $amount \$",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: AppColors.alternateTextColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal)),
            )
          ],
        )
      ],
    );
  }

  Widget _listItem(String imageLogo, String stockName, String stockCompany, String amount, String difference) {
    return Card(
      color: AppColors.surfaceColor,
      surfaceTintColor: AppColors.surfaceColor,
      elevation: 0.8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: AppColors.borderColor, width: 0.3)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.surfaceColor,
                  border: Border.all(color: AppColors.borderColor, width: 1)
              ),
              child: ClipOval(
                child: Image(
                  image: AssetImage(imageLogo),
                  width: 6,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      stockName,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: AppColors.textColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal
                          )
                      )
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                      stockCompany,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: AppColors.alternateTextColor,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal
                          )
                      )
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      amount,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: AppColors.textColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal
                          )
                      )
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                      difference,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Color(0xFFE20000),
                              fontSize: 10.0,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal
                          )
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
