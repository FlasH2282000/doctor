import 'package:flutter/material.dart';
import 'package:petshop/theme/sharedTextStyleAndColor.dart';
import 'package:petshop/widgets/searchIcon.dart';

class HomePage extends StatefulWidget {
  List<Map<String, dynamic>> dataDrawer = [
    {'txt': 'Wishlist', 'icon': Icons.favorite},
    {'txt': 'Appointment', 'icon': Icons.favorite},
    {'txt': 'Settings', 'icon': Icons.settings},
    {'txt': 'About Us', 'icon': Icons.info},
    {'txt': 'Contact Us', 'icon': Icons.phone}
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Welcome', style: primaryTextStyle),
        iconTheme: IconThemeData(color: primaryColor, size: 30),
        actions: [SearchButton()],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHkLGi5iLRaMgTbPBCnKo0dbSLtycSyHn07Q&usqp=CAU'),
                    fit: BoxFit.fill),
              ),
              alignment: Alignment.center,
              child: ListTile(
                leading: CircleAvatar(
                  maxRadius: 30,
                  minRadius: 30,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/8d/b5/7a/8db57a7607f365a82ceedea6db2d93db.jpg'),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
