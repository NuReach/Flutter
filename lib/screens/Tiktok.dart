import 'package:flutter/material.dart';

class Tiktok extends StatelessWidget {
  const Tiktok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}

List<String> images = [
  "https://m.media-amazon.com/images/M/MV5BNzRiMjg0MzUtNTQ1Mi00Y2Q5LWEwM2MtMzUwZDU5NmVjN2NkXkEyXkFqcGc@._V1_.jpg",
  "https://qph.cf2.quoracdn.net/main-qimg-3f91ba5b722fec39675feffd94f4a3df-lq",
  "https://vakilsearch.com/blog/wp-content/uploads/2024/04/todd-philips-joker-folie-a-deux-2024-fan-casting-poster-398307-large.jpg",
  "https://m.media-amazon.com/images/M/MV5BMjM5MDk2NDIxMF5BMl5BanBnXkFtZTgwNjU5NDk3NTM@._V1_FMjpg_UX1000_.jpg",
  "https://m.media-amazon.com/images/I/81RGhVSVAjL._AC_UF1000,1000_QL80_.jpg",
];

Widget _buildBody() {
  return ListView(
    physics: BouncingScrollPhysics(),
    children: [
      _buildStoryListView(),
      _buildImageListView(),
    ],
  );
}

Widget _buildImageListView() {
  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    cacheExtent: 1000,
    itemCount: images.length,
    itemBuilder: (context, index) {
      return _buildItem(images[index]);
    },
  );
}

Widget _buildItem(String item) {
  return Container(
    padding: EdgeInsets.all(10),
    height: 300,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(item),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget _buildStoryListView() {
  return Container(
    height: 300,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return _buildStoryItem(images[index]);
      },
    ),
  );
}

Widget _buildStoryItem(String item) {
  return Container(
    width: 180,
    padding: EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(item),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}


// Widget _buildImagePageView() {
//   return PageView.builder(
//     scrollDirection: Axis.vertical,
//     physics: BouncingScrollPhysics(),
//     itemCount: images.length,
//     itemBuilder: (context, index) {
//       return _buildPageItem(images[index]);
//     },
//   );
// }

// Widget _buildPageItem(String item) {
//   return Stack(
//     children: [
//       Positioned.fill(child: Image.network(item, fit: BoxFit.cover)),
//       Align(
//         alignment: Alignment.topCenter,
//         child: Padding(
//           padding:
//               const EdgeInsets.only(top: 3), // Adjust the top padding as needed
//           child: Text("Following"),
//         ),
//       ),
//       Positioned(
//         right: 10,
//         bottom: 40,
//         child: _buildIconColumn(),
//       ),
//     ],
//   );
// }

// Widget _buildIconColumn() {
//   return Column(
//     children: [
//       IconButton(
//         onPressed: () {},
//         icon: Icon(Icons.face, color: Colors.white),
//       ),
//       IconButton(
//         onPressed: () {},
//         icon: Icon(Icons.favorite, color: Colors.white),
//       ),
//       IconButton(
//         onPressed: () {},
//         icon: Icon(Icons.bookmark, color: Colors.white),
//       ),
//     ],
//   );
// }

// Widget _buildStoryListView() {
//   return Container(
//     height: 300,
//     child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       physics: BouncingScrollPhysics(),
//       itemCount: images.length,
//       itemBuilder: (context, index) {
//         return _buildStoryItem(images[index]);
//       },
//     ),
//   );
// }

// Widget _buildStoryItem(String item) {
//   return Container(
//     width: 180,
//     padding: EdgeInsets.all(10),
//     child: Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         image: DecorationImage(
//           image: NetworkImage(item),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//   );
// }
