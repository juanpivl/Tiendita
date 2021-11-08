import 'package:e_shop/Authentication/authenication.dart';
import 'package:e_shop/Config/config.dart';
import 'package:e_shop/Address/addAddress.dart';
import 'package:e_shop/Store/Search.dart';
import 'package:e_shop/Store/cart.dart';
import 'package:e_shop/Orders/myOrders.dart';
import 'package:e_shop/Store/storehome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 10),
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.pink, Colors.lightGreenAccent],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(
              children: [
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  elevation: 8,
                  child: Container(
                    height: 160,
                    width: 160,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        EcommerceApp.sharedPreferences
                            .getString(EcommerceApp.userAvatarUrl),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    EcommerceApp.sharedPreferences
                        .getString(EcommerceApp.userName),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 1),
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.pink, Colors.lightGreenAccent],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => StoreHome());
                  Navigator.pushReplacement(context, route);
                },
              ),
              Divider(height: 10, color: Colors.white),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Mis pedidos",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => MyOrders());
                  Navigator.pushReplacement(context, route);
                },
              ),
              Divider(height: 10, color: Colors.white),
              ListTile(
                leading: Icon(
                  Icons.car_rental,
                  color: Colors.white,
                ),
                title: Text(
                  "Carrito",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => CartPage());
                  Navigator.pushReplacement(context, route);
                },
              ),
              Divider(height: 10, color: Colors.white),
              ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                title: Text(
                  "Buscar",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => SearchProduct());
                  Navigator.pushReplacement(context, route);
                },
              ),
              Divider(height: 10, color: Colors.white),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                title: Text(
                  "Nueva direccion",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => AddAddress());
                  Navigator.pushReplacement(context, route);
                },
              ),
              Divider(height: 10, color: Colors.white),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Salir",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  EcommerceApp.auth.signOut().then((c) {
                    Route route = MaterialPageRoute(
                        builder: (context) => AuthenticScreen());
                    Navigator.pushReplacement(context, route);
                  });
                },
              ),
              Divider(height: 10, color: Colors.white),
            ]),
          ),
        ],
      ),
    );
  }
}
