import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QwaliSongs extends StatelessWidget {
  const QwaliSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(20), //this radius for full card
              color: Colors.black45 //color for a card
              ),
          //cliprrect class in a flutter that clips its child using a rectangle extra r is for rounded
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), //this radius is for pic rounding
                child: Image.asset('img/qwal.jpg'),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Qwali\'s',
                    style: GoogleFonts.aladin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Suggest best qwali\'s',
                    style: GoogleFonts.aladin(
                        fontSize: 14, color: Colors.blueGrey),
                  )
                ],
              ),
              const SizedBox(
                height: 2.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'watched',
                    style: GoogleFonts.macondo(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                        color: Colors.orange,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 28,
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
