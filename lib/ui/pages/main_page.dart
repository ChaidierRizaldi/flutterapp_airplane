import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp_airplane/cubit/page_cubit.dart';
import 'package:flutterapp_airplane/ui/pages/home_page.dart';
import 'package:flutterapp_airplane/ui/pages/setting_page.dart';
import 'package:flutterapp_airplane/ui/pages/transaction_page.dart';
import 'package:flutterapp_airplane/ui/pages/wallet_page.dart';
import 'package:flutterapp_airplane/ui/widgets/custom_bottom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return MainPage();
      }
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
                  index: 0,
                ),
                CustomButtonNavigationItem(
                  imageUrl: 'assets/icon_booking.png',
                  index: 1,
                ),
                CustomButtonNavigationItem(
                  imageUrl: 'assets/icon_card.png',
                  index: 2,
                ),
                CustomButtonNavigationItem(
                  imageUrl: 'assets/icon_setting.png',
                  index: 3,
                ),
              ],
            ),
          ));
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
