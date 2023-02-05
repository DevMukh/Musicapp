import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:musicapp/arabic.dart';
import 'package:musicapp/hiphop.dart';
import 'package:musicapp/qwali.dart';
import 'Instrumental.dart';
import 'listcodereuse.dart';

class Design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = 0;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: GNav(
              backgroundColor: Colors.black45,
              activeColor: CupertinoColors.white,
              color: Colors.white,
              padding: EdgeInsets.all(15),
              tabs: [
                /*first we use navbar and its requried tab,
                then we use gbutton for icon and text,
                decleare its background ,active color its padding and again we add container of its bar
                 onpresed used for future navigations
                 */
                GButton(
                  icon: Icons.construction,
                  text: 'Home',
                  textColor: Colors.orangeAccent,
                  onPressed: () {},
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Favourite',
                  textColor: Colors.orangeAccent,
                  onPressed: () {},
                ),
                GButton(
                  icon: Icons.recommend,
                  iconSize: 37,
                  iconActiveColor: Colors.orangeAccent,
                  onPressed: () {},
                ),
                GButton(
                  icon: Icons.schedule,
                  text: 'Shedule',
                  textColor: Colors.orangeAccent,
                  onPressed: () {},
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                  textColor: Colors.orangeAccent,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Text(
                'Select your choice...',
                style: GoogleFonts.aladin(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              SizedBox(
                height: 35,
              ),
              /* first we use a google font
                  then decoration input hint prefix icon,
                  border circular or any other,
                  border enable means showing grey before click,
                  focusborder helps when click,
                  style help to change input color
                   */
              TextField(
                keyboardType: TextInputType.text,
                style: GoogleFonts.aladin(
                    color: Colors.grey, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: Colors.grey,
                    ),
                    hintText: 'Search..',
                    hintStyle: GoogleFonts.aladin(
                      color: Colors.grey,
                    ),
                    enabled: true,
                    suffixIcon: Icon(Icons.music_note,color: Colors.grey,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54),
                    ),
                    suffixStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.black45,
                height: 30,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular',
                          style: GoogleFonts.aladin(color: Colors.orangeAccent),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Instrumental',
                          style: GoogleFonts.aladin(color: Colors.orangeAccent),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Qwali',
                          style: GoogleFonts.aladin(color: Colors.orangeAccent),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'HipHop',
                          style: GoogleFonts.aladin(color: Colors.orangeAccent),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Coke Studio',
                          style: GoogleFonts.aladin(color: Colors.orangeAccent),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Rap',
                          style: GoogleFonts.aladin(color: Colors.orangeAccent),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Paradox',
                          style: GoogleFonts.aladin(color: Colors.orangeAccent),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Listcodereuse(),
                    Instrumental(),
                    QwaliSongs(),
                    HipHop(),
                    ArabicMusic(),
                  ],
                ),
              ),
              //here we have to add more cards in vertical direction but we are facing bottom overflow errors
              // Expanded(child: ListView(
              //   scrollDirection: Axis.vertical,
              //   shrinkWrap: true,
              //   children: [
              //  //   ArabicMusic(),
              // ],))
            ],
            // Listview
          ),
        ),
      ),
    );
  }
}