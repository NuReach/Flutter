import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    bool hide = false;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 187, 35, 169),
        appBar: _appBar(),
        body: InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: _buildBody(),
        ),
        drawer: _drawer(),
        bottomNavigationBar: _bottomNavigationBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.shopping_cart),
          onPressed: () {},
        ));
  }
}

Widget _buildBody() {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildEmailTextField(), _buildPasswordTextField(), _button()],
    ),
  );
}

Widget _buildEmailTextField() {
  return TextField(
    decoration: InputDecoration(
      icon: Icon(Icons.email, color: Colors.white),
      hintText: "Enter Email",
      hintStyle: TextStyle(color: Colors.white),
      label: Text("Email", style: TextStyle(color: Colors.white)),
    ),
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    style: TextStyle(color: Colors.white),
  );
}

Widget _buildPasswordTextField() {
  return TextField(
    obscureText: false,
    textInputAction: TextInputAction.go,
    decoration: InputDecoration(
      icon: Icon(Icons.password, color: Colors.white),
      hintText: "Enter Password",
      hintStyle: TextStyle(color: Colors.white),
      label: Text("Password", style: TextStyle(color: Colors.white)),
      suffixIcon: IconButton(
        icon: Icon(Icons.visibility, color: Colors.white),
        onPressed: () {},
      ),
    ),
    style: TextStyle(color: Colors.white),
  );
}

Widget _button() {
  return ElevatedButton(onPressed: () {}, child: Text("Login"));
}

Widget _drawer() {
  return Drawer(
    backgroundColor: Color.fromARGB(255, 54, 2, 47).withOpacity(0.8),
    child: ListView(
      children: [
        DrawerHeader(
            child: Image.network(
                "https://acledasecurities.com.kh/as/assets/listed_company/ABC/logo.png")),
        ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.home),
          title: Text("Home"),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.call),
          title: Text("Contact"),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.pin_drop),
          title: Text("Location"),
          trailing: Icon(Icons.navigate_next),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
              "https://play-lh.googleusercontent.com/MBVY5PdixeXkomZJFWSYoV7Bk4V55OiaG9_GtxZnZKDUBn_cB8ZRL0ht8U9PK16re9M"),
        )
      ],
    ),
  );
}

Widget _bottomNavigationBar() {
  return BottomAppBar(
    notchMargin: 10,
    shape: CircularNotchedRectangle(),
    color: Colors.amber,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
      ],
    ),
  );
}

AppBar _appBar() {
  return AppBar(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.pink,
    title: _buildSearchTextField(),
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.pink,
          Colors.indigo,
        ],
      )),
    ),
  );
}

Widget _buildSearchTextField() {
  return TextField(
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      hintText: "Search",
      hintStyle: TextStyle(color: Colors.white60),
      border: InputBorder.none,
      suffixIcon: IconButton(
        color: Colors.white,
        onPressed: () {},
        icon: Icon(Icons.search),
      ),
    ),
    textInputAction: TextInputAction.search,
  );
}
