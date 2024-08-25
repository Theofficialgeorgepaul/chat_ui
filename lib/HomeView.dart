import 'package:chat_ui/Home_body.dart';
import 'package:chat_ui/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/profile_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

@override
class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home Screen')), // Replace with actual Home screen
    Center(child: Text('Search Screen')),
    Center(child: Text('Camera Screen')), // For camera functionality
    Center(child: Text('HUB Screen')),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Messages",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          text: 'Direct Messages',
                        ),
                        Tab(text: 'Video Call')
                      ],
                    ),
                  ))),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            20,
                            (index) => HomeBody(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            IndexedStack(
              index: _selectedIndex,
              children: _widgetOptions,
            )
          ],
        ),
        bottomNavigationBar:
            BottomNav(currentIndex: _selectedIndex, onTap: _onItemTapped),
      ),
    );
  }
}
