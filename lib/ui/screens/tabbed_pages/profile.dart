import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockx/resources/ui_resources.dart';
import 'package:stockx/ui/components/app_button.dart';
import 'package:stockx/ui/components/setting_card.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
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
          "Profile",
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
        color: AppColors.primaryColor
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 18.0, right: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 16),
              decoration: const BoxDecoration(
                  color: AppColors.primaryVariantColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                AppStrings.username,
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: AppColors.surfaceColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal)),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/crown.png'),
                  height: 26.0,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(AppStrings.goldMember,
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.premiumColor,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal)))
              ],
            ),
            const SizedBox(
              height: 18.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLowerContent() {
    return Container(
      padding: const EdgeInsets.only(top: 30.0, right: 18.0, left: 18.0, bottom: 10),
      decoration: const BoxDecoration(color: AppColors.surfaceColor),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 1,
                  child: settingsCard("assets/images/heart.png",
                      AppStrings.referTitle, AppStrings.referSubtext)),
              Expanded(
                  flex: 1,
                  child: settingsCard(
                      "assets/images/account_details.png",
                      AppStrings.accountDetailsTitle,
                      AppStrings.accountDetailsSubtext))
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
          appButton(AppStrings.logout, () => null)
        ],
      ),
    );
  }
}
