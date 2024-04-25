import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL', style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/R.d0651c1aed9e99f012a30d0e4bcf885b?rik=LiqKUOmsywR%2fOw&riu=http%3a%2f%2f1.bp.blogspot.com%2f-a3e7LjwiOJE%2fVa2cswjfx7I%2fAAAAAAAAV00%2fomcFkLbkZdY%2fs1600%2fshenron-in-dragon-ball-z-2015-movie.jpg&ehk=BOwhmFYxJZ8nF7fMG3I4oa6HbK5SlPQDGtLeCo2ZGng%3d&risl=&pid=ImgRaw&r=0'),
        ),
      ),
    );
  }
}
