import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drawerItems = ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('ပိုင်ရှင်'),
          accountEmail: Text(
            'abc@gmail.com',
            style: TextStyle(fontFamily: 'pr'),
          ),
          currentAccountPicture: CircleAvatar(
            child: Text(
              '3D',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 56,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'pr'),
            ),
            backgroundColor: Colors.white,
          ),
          otherAccountsPictures: <Widget>[
            CircleAvatar(
              //child: Text('***'),
              child: Icon(Icons.flag),
              backgroundColor: Colors.limeAccent,
            ),
          ],
        ),
//        DrawerHeader(
//          decoration: BoxDecoration(
//              image: DecorationImage(
//                  image: AssetImage("images/twl.jpeg"), fit: BoxFit.cover)),
//          child: Text("Header"),
//        ),
        ListTile(
          title: Text(
            'ရောင်းမယ်',
            style: TextStyle(fontFamily: 'pr'),
          ),
          leading: Icon(Icons.playlist_add),
          onTap: () => Navigator.pushNamed(context, '/cashiersale'),
        ),
        ListTile(
          title: Text(
            'စာရင်းချုပ်',
            style: TextStyle(fontFamily: 'pr'),
          ),
          leading: Icon(Icons.library_books),
          onTap: () => Navigator.pushNamed(context, '/tabulate'),
        ),
        ListTile(
          title: Text(
            'ထိုးပြီးဂဏန်း',
            style: TextStyle(fontFamily: 'pr'),
          ),
          leading: Icon(Icons.sync_disabled),
          onTap: () => Navigator.pushNamed(context, '/saled'),
        ),
        ListTile(
          title: Text(
            'ကျန်ရှိဂဏန်း',
            style: TextStyle(fontFamily: 'pr'),
          ),
          leading: Icon(Icons.event_available),
          onTap: () => Navigator.pushNamed(context, '/avanum'),
        ),

        ListTile(
          title: Text(
            'ပေါက်သီး',
            style: TextStyle(fontFamily: 'pr'),
          ),
          leading: Icon(Icons.filter_vintage),
          onTap: () => Navigator.pushNamed(context, '/cert'),
        ),

        ListTile(
          title: Text(
            'ပေါက်စာရင်း',
            style: TextStyle(fontFamily: 'pr'),
          ),
          leading: Icon(Icons.monetization_on),
          onTap: () => Navigator.pushNamed(context, '/salemoney'),
        ),

        ListTile(
          title: Text(
            'ဆက်တင်',
            style: TextStyle(fontFamily: 'pr'),
          ),
          leading: Icon(Icons.settings),
          onTap: () => Navigator.pushNamed(context, '/setting'),
        ),

        ListTile(
          title: Text(
            'ထွက်ရန်',
            style: TextStyle(fontFamily: 'pr'),
          ),
          leading: Icon(Icons.exit_to_app),
          onTap: () => Navigator.pushNamed(context, '/exit'),
        ),
      ],
    );
    final homeItems = GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1 / 0.7,
        crossAxisCount: 2,
      ),
      padding: EdgeInsets.all(4.0),
      children: <Widget>[
        Card(
          color: Colors.blue.shade200,
          child: InkWell(
            splashColor: Colors.yellow.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.playlist_add,
                  size: 36,
                ), // icon
                Text('ရောင်းမယ်', style: TextStyle(fontSize: 18)), // text
              ],
            ),
            onTap: () => Navigator.pushNamed(context, '/cashiersale'),
          ),
        ),
        Card(
          color: Colors.yellow.shade300,
          child: InkWell(
            splashColor: Colors.blue.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.library_books,
                  size: 36,
                ), // icon
                Text('စာရင်းချုပ်', style: TextStyle(fontSize: 18)), // text
              ],
            ),
            onTap: () {},
          ),
        ),
        Card(
          color: Colors.red.shade200,
          child: InkWell(
            splashColor: Colors.greenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.sync_disabled,
                  size: 36,
                ), // icon
                Text('ထိုးပြီးဂဏန်း', style: TextStyle(fontSize: 18)), // text
              ],
            ),
            onTap: () {},
          ),
        ),
        Card(
          color: Colors.greenAccent,
          child: InkWell(
            splashColor: Colors.red.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.event_available,
                  size: 36,
                ), // icon
                Text('ကျန်ရှိဂဏန်း', style: TextStyle(fontSize: 18)), // text
              ],
            ),
            onTap: () {},
          ),
        ),
        Card(
          color: Colors.green,
          child: InkWell(
            splashColor: Colors.brown.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.looks,
                  size: 36,
                ), // icon
                Text('ပေါက်သီး', style: TextStyle(fontSize: 18)), // text
              ],
            ),
            onTap: () {},
          ),
        ),
        Card(
          color: Colors.brown.shade200,
          child: InkWell(
            splashColor: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.format_list_numbered_rtl,
                  size: 36,
                ), // icon
                Text('ပေါက်စာရင်း', style: TextStyle(fontSize: 18)), // text
              ],
            ),
            onTap: () {},
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ကိုယ်စားလှယ်',
        ),
        actions: <Widget>[
          Icon(Icons.account_circle),
        ],
      ),
      body: homeItems,
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
