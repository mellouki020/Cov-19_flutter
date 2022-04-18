import 'package:cov_19/screens/bantuan_screen.dart';
import 'package:cov_19/screens/informasi_screen.dart';
import 'package:cov_19/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

import 'kasus_screen.dart';

class WrapperScreen extends StatefulWidget {
  const WrapperScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WrapperScreen> createState() => _WrapperScreenState();
 }
  class _WrapperScreenState extends State<WrapperScreen> {
    int selectedIndex = 0;

    final List<Widget> screens = const [
      KasusScreen(),
      InformasiScreen(),
      BantuanScreen(),
    ];
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomSheet: BottomNavigationWidget(
        selectedIndex: selectedIndex,
        onTap: (val) {
           setState(() {
             selectedIndex = val;
           });
        }
      ),
    );
    }
  }

