import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockx/resources/ui_resources.dart';
import 'package:stockx/ui/components/appButton.dart';

class Withdraw extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WithdrawState();
  }
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var deviceSize = MediaQuery.of(context).size;
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
        title: Text(
          "Withdraw",
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: AppColors.surfaceColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal)),
        ),
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
          children: [
            _buildUpperContent(),
            _buildLowerContent()
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildUpperContent() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [AppColors.gradient1, AppColors.gradient2])),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 18.0, right: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.enterAmount,
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: '\$0.00'),
                inputFormatters: <TextInputFormatter>[
                  CurrencyTextInputFormatter(
                    locale: 'en',
                    decimalDigits: 0,
                    symbol: '\$',
                  ),
                ],
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: AppColors.textColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal))),
            const SizedBox(
              height: 62.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLowerContent() {
    return Container(
      padding: const EdgeInsets.only(right: 18.0, left: 18.0, bottom: 10),
      decoration: const BoxDecoration(color: AppColors.surfaceColor),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            AppStrings.recipientAcc,
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: AppColors.textColor,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal)),
          ),
          const SizedBox(
            height: 17.0,
          ),
          Card(
            color: AppColors.surfaceColor,
            surfaceTintColor: AppColors.surfaceColor,
            elevation: 0.8,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side:
                    const BorderSide(color: AppColors.borderColor, width: 0.3)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 28.0, horizontal: 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/chase_bank_logo.png'),
                    height: 11.0,
                  ),
                  Text(AppStrings.accNo,
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: AppColors.textColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal)))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Divider(
            height: 1.0,
            color: AppColors.dividerColor,
          ),
          const SizedBox(height: 16.0),
          Text(
            AppStrings.withdrawCharge,
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: AppColors.textColor,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal)),
          ),
          const SizedBox(height: 17.0),
          _chargesInfo(AppStrings.vat, "\$ 4.00", AppColors.alternateTextColor, FontWeight.w400),
          const SizedBox(height: 15.0),
          _chargesInfo(AppStrings.eTax, "\$ 1.20", AppColors.alternateTextColor, FontWeight.w400),
          const SizedBox(height: 15.0),
          _chargesInfo(AppStrings.totalCharge, "\$ 5.20", AppColors.textColor, FontWeight.w700),
          const SizedBox(height: 60.0),
          appButton(AppStrings.withdraw, () => null),
          const SizedBox(height: 60.0),
        ],
      ),
    );
  }

  Widget _chargesInfo(String text, String textInfo, Color color, FontWeight fontWeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: color,
                  fontSize: 14.0,
                  fontWeight: fontWeight,
                  fontStyle: FontStyle.normal)
          ),
        ),
        Text(
          textInfo,
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: AppColors.textColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal)),
        ),
      ],
    );
  }
}
