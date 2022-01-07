import 'package:flutter/material.dart';
import 'package:flutterapp_airplane/ui/pages/home_page.dart';
import 'package:flutterapp_airplane/ui/pages/transaction_page.dart';
import 'package:flutterapp_airplane/ui/widgets/custom_button_navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(
                bottom: 30, left: defaultMargin, right: defaultMargin),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButtonNavigationItem(
                  imageUrl: 'assets/icon_home.png',
                  isSelected: true,
                ),
                CustomButtonNavigationItem(imageUrl: 'assets/icon_booking.png'),
                CustomButtonNavigationItem(imageUrl: 'assets/icon_card.png'),
                CustomButtonNavigationItem(imageUrl: 'assets/icon_setting.png'),
              ],
            ),
          ));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
