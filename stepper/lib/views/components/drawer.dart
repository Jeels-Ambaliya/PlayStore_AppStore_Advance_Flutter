import 'package:flutter/material.dart';
import 'package:stepper/views/components/alertDialog.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://tse2.mm.bing.net/th?id=OIP.EifB-xnx-aPWXVwA50i2DgHaHa&pid=Api&P=0"),
            ),
            accountName: Text(
              "Jeels",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            accountEmail: Text("github.com/Jeels-Ambaliya"),
          ),
          Expanded(
            flex: 3,
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.home_filled),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Accounts"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("About Us"),
                ),
              ],
            ),
          ),
          const Divider(
            indent: 8,
            endIndent: 8,
            thickness: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 50,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (e) => const alertDialog(),
                  );
                },
                child: Container(
                  width: 180,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        "ADD",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
