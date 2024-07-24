import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'color_constants.dart'; // Make sure this file is correctly defined

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: _bottomNavigationView(context),
      body: Column(
        children: [
          _mainContainer(context),
          SizedBox(
            height: 78,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _rowButton(context),
                _rowButton1(context),
                _rowButton2(context),
              ],
            ),
          ),
          _switchButton(context),
          _bottomSheet(context),
        ],
      ),
    );
  }

  Widget _mainContainer(BuildContext context) {
    final containerSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
      child: Container(
        height: containerSize.height * 0.42,
        width: containerSize.width * 0.98,
        decoration: BoxDecoration(
          gradient:
              maincolor, // Ensure 'maincolor' is defined in 'color_constants.dart'
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            _topbar(context),
            SizedBox(height: 10),
            _textContainer(context),
          ],
        ),
      ),
    );
  }

  Widget _topbar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
          ),
          Spacer(),
          _circularContainer(
              IconlyLight.notification, Colors.transparent, Colors.white),
          SizedBox(width: 8),
          _circularContainer(Icons.add, Colors.white, Colors.black),
        ],
      ),
    );
  }

  Widget _circularContainer(IconData icon, Color bgColor, Color borderColor) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: borderColor),
      ),
      child: Center(
        child: Icon(icon, color: borderColor),
      ),
    );
  }

  Widget _textContainer(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Main Wallet',
                style: TextStyle(fontSize: 32, color: Colors.white)),
            const SizedBox(width: 6),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.create, color: Colors.white, size: 20),
            ),
          ],
        ),
        Text('Main Wallet',
            style: TextStyle(
                fontFamily: 'sans-serif', fontSize: 20, color: Colors.white70)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.attach_money, color: Colors.white),
            Text('56919.95',
                style: TextStyle(
                    fontFamily: 'sans-serif',
                    fontSize: 35,
                    color: Colors.white)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buttonWidget('Send', Colors.blue[50]!, Icons.arrow_outward),
              SizedBox(width: 20),
              _buttonWidget('Send', Colors.grey[200]!, Icons.arrow_outward),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buttonWidget(String label, Color bgColor, IconData icon) {
    final buttonSize = MediaQuery.of(context).size / 0.50;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Container(
        height: buttonSize.height * 0.03,
        width: buttonSize.width * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: bgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20),
            Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rowButton(BuildContext context) {
    final buttonSize = MediaQuery.of(context).size / 0.50;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: buttonSize.width * 0.05,
        width: buttonSize.width * 0.20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white12,
        ),
        child: Center(
          child: Text(
            'Price options',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _rowButton1(BuildContext context) {
    final buttonSize = MediaQuery.of(context).size / 0.50;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: buttonSize.width * 0.05,
        width: buttonSize.width * 0.20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white12,
        ),
        child: Center(
          child: Text(
            'Wallet Connections',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _rowButton2(BuildContext context) {
    final buttonSize = MediaQuery.of(context).size / 0.50;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: buttonSize.width * 0.05,
        width: buttonSize.width * 0.20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white12,
        ),
        child: Center(
          child: Text(
            'Manage tokens',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _switchButton(BuildContext context) {
    final buttonSize = MediaQuery.of(context).size / 0.50;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Container(
              height: buttonSize.width * 0.06,
              width: buttonSize.width * 0.24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blueAccent,
              ),
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Tokens',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: buttonSize.width * 0.06,
              width: buttonSize.width * 0.24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white12,
              ),
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'NFTs',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomSheet(BuildContext context) {
    final sheetSize = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          height: sheetSize.height * 0.35,
          width: sheetSize.width * 0.99,
          decoration: BoxDecoration(
              gradient: sheetcolor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: _buildTokensView(context),
        ),
      ),
    );
  }

  Widget _buildTokensView(BuildContext context) {
    final sheetSize = MediaQuery.of(context).size / 0.50;

    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.topCenter,
            height: sheetSize.height * 0.045,
            width: sheetSize.width * 0.20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black54,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset('assets/abt.png'),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dive wallets Tokens',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '+5.57',
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '14000000 DWT',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '-\$876549',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _bottomNavigationView(BuildContext context) {
    _SelectedTab _selectedTab = _SelectedTab.home;

    void _handleIndexChanged(int index) {
      setState(() {
        _selectedTab = _SelectedTab.values[index];
      });
    }

    return CrystalNavigationBar(
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.black87,
      height: 90,
      currentIndex: _selectedTab.index,
      onTap: (index) {
        _handleIndexChanged(index);
      },
      items: <CrystalNavigationBarItem>[
        CrystalNavigationBarItem(icon: IconlyLight.home),
        CrystalNavigationBarItem(icon: IconlyLight.search),
        CrystalNavigationBarItem(icon: IconlyLight.chart),
        CrystalNavigationBarItem(icon: IconlyLight.profile),
      ],
    );
  }
}

enum _SelectedTab { home, search, chart, profile }
