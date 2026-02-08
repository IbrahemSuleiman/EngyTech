import 'package:engytech/shared/widgets.dart';
import 'package:engytech/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

// -----------------------------------------------------------------------------
class HomePageState extends State<HomePage> {
  // ---------------------------------------------------------------------------
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // ---------------------------------------------------------------------------
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            Text(
              'ENGY Solutions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildbottomNavigationBar(
                  'assets/home.svg',
                  context,
                  "Home",
                  onTap: () => {},
                  isSelected: true,
                ),
                buildbottomNavigationBar(
                  'assets/calculator.svg',
                  context,
                  "Calculator",
                  onTap: () => {},
                  isSelected: false,
                ),
                SizedBox(width: 7.0),
                buildbottomNavigationBar(
                  'assets/notes.svg',
                  context,
                  "Notes",
                  onTap: () => {},
                  isSelected: false,
                ),
                buildbottomNavigationBar(
                  'assets/settings.svg',
                  context,
                  "Settings",
                  onTap: () => {},
                  isSelected: false,
                ),
              ],
            ),
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppColors.visualGreen),
              child: Image.asset("assets/logo.png", width: 25, height: 25),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculator'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.functions),
              title: Text('Equations'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.visualTeal,
        child: Icon(Icons.add, color: AppColors.white),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: SizedBox(
                  width: double.infinity,
                  child: buildStartCard(
                    context,
                    "حسابات المضخة",
                    "تحديد نوع المضخة ومواصفاتها مع مراعات الأبعاد الحالية",
                    "assets/settings.svg",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
