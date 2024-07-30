import 'package:flutter/material.dart';

class Week1 extends StatelessWidget {
  const Week1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text("កម្មវិធីខ្មែរឹយើង"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.indigo,
            ],
          )),
        ),
      ),
      body: Center(
          child: Image.network(
              "https://resizing.flixster.com/LjP_YBdwVIehvFE04lJgajPtOoc=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzU5M2FmN2I4LTBjYTQtNDI2NS05MTJkLTg4MWZiOGI2MDRhNi5qcGc=")),
      endDrawer: Drawer(
        width: 200,
        child: Image.network(
          "https://lumiere-a.akamaihd.net/v1/images/p_insideout2_798_9b5e9941.jpeg",
          fit: BoxFit.cover,
        ),
      ),
      drawer: Drawer(
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
      ),
      bottomNavigationBar: BottomAppBar(
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
    );
  }
}
