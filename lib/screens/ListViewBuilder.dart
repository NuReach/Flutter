import 'package:flutter/material.dart';

class Listviewbuilder extends StatelessWidget {
  const Listviewbuilder({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class Post {
  final String title;
  final String content;
  final String author;

  Post({required this.title, required this.content, required this.author});
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Post> posts = [
      Post(
          title: 'Post 1',
          content: 'This is the content of post 1',
          author: 'Author 1'),
      Post(
          title: 'Post 2',
          content: 'This is the content of post 2',
          author: 'Author 2'),
      Post(
          title: 'Post 3',
          content: 'This is the content of post 3',
          author: 'Author 3'),
    ];

    const bg =
        "https://i.pinimg.com/736x/e3/08/f0/e308f0debd407e936d5b66b8050f1c02.jpg";

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          flexibleSpace: Image.network(
            bg,
            fit: BoxFit.cover,
          ),
          leading: Center(
            child: Text("Home"),
          ),
          title: Center(
            child: IconButton(
              icon: Image.network(
                "https://upload.wikimedia.org/wikipedia/en/2/23/Deadpool_%282016_poster%29.png",
                width: 50,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ]),
      body: Column(
        children: [
          const Text("Hello", style: TextStyle(color: Colors.white)),
          Expanded(
              child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final item = posts[index];
              return Column(
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/en/2/23/Deadpool_%282016_poster%29.png",
                    color: Colors.red.withOpacity(0.8),
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                  Text(
                    'Content : ${item.content}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    item.author,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              );
            },
          ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
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
        child: const Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
    );
  }
}
