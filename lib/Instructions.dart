import 'package:flutter/material.dart';
import 'design.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            //IN app constant size for avatar
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('img/cir.jpg'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'RhythmiX',
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Introducing [Name of Music App], the ultimate music experience for Android users.You can enjoy your favorite songs, discover new music, and create playlists that perfectly match your mood.',
              style: TextStyle(color: Colors.orangeAccent),
            ),
            const Text(
              'Additionally, the app displays album and artist information, as well as lyrics for supported tracks, providing a comprehensive music experience.',
              style: TextStyle(color: Colors.orangeAccent),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                'Always enjoy your music even when you are not connected to the internet.',
                style: TextStyle(
                  color: Colors.orangeAccent,
                )),
            const SizedBox(
              height: 250,
            ),
            Padding(
              //here we add a button to  move next
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Design()));
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    child: Row(
                      children: const [
                        Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_circle_right,
                          size: 16,
                          color: Colors.orangeAccent,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
