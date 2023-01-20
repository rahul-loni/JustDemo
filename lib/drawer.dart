import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        // DrawerHeader(
        //   child: Text(
        //     "Hey Flutter App",
        //     style: TextStyle(fontSize: 30, color: Colors.white),
        //   ),
        //   decoration: BoxDecoration(color: Colors.purple),
        // ),
        UserAccountsDrawerHeader(
          accountName: Text("Rahul Kumar"),
          accountEmail: Text("rahulloni000@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          ),
        ),

        ListTile(
          leading: Icon(Icons.person),
          iconColor: Colors.black,
          title: Text("Account"),
          subtitle: Text("Personal"),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          iconColor: Colors.black,
          title: Text("Account"),
          subtitle: Text("+9779876463798"),
          trailing: Icon(Icons.phone),
        ),
        ListTile(
          leading: Icon(Icons.email),
          iconColor: Colors.black,
          title: Text("Email"),
          subtitle: Text("rahulloni000@gmail.com"),
          trailing: Icon(Icons.send),
        )
      ],
    ));
  }
}
