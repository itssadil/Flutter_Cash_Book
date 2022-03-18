import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradebook/login/logInPage.dart';
import 'package:tradebook/widgets/routeAnimition.dart';

class drawerbar extends StatefulWidget {
  const drawerbar({Key? key}) : super(key: key);

  @override
  _drawerbarState createState() => _drawerbarState();
}

class _drawerbarState extends State<drawerbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Adil Hussain"),
            accountEmail: Text("adilhussain@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text("A"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text("B"),
              ),
            ],
          ),
          tileFun(
            mtxt: "Account Type",
            icn: Icon(Icons.account_circle),
            stxt: "Personal",
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      RouteAnimation(
                        widget: LogInPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tileFun({Icon? icn, String? mtxt, stxt}) {
    return ListTile(
      leading: CircleAvatar(child: icn),
      title: Text(
        "$mtxt",
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      subtitle: Text("$stxt"),
    );
  }
}
