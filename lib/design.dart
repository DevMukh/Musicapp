import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:musicapp/Instrumental.dart';
import 'package:musicapp/arabic.dart';
import 'package:musicapp/hiphop.dart';
import 'package:musicapp/listcodereuse.dart';
import 'package:musicapp/qwali.dart';

class Design extends StatelessWidget {
  Design({super.key});
  final categores = [
    'Popular',
    'Instrumental',
    'Qwali',
    'HipHop',
    'Coke Studio',
    'Rap',
    'Paradox'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: GNav(
              backgroundColor: Colors.black45,
              activeColor: CupertinoColors.white,
              color: Colors.white,
              padding: const EdgeInsets.all(15),
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text(
                  'Select your choice...',
                  style: GoogleFonts.aladin(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                const SizedBox(
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
                      prefixIcon: const Icon(
                        Icons.search_sharp,
                        color: Colors.grey,
                      ),
                      hintText: 'Search..',
                      hintStyle: GoogleFonts.aladin(
                        color: Colors.grey,
                      ),
                      enabled: true,
                      suffixIcon: const Icon(
                        Icons.music_note,
                        color: Colors.grey,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white54),
                      ),
                      suffixStyle: const TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.black45,
                  height: 30,
                  child: ListView.builder(
                    itemCount: categores.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: CategoryTiles(
                              category: categores[index],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Listcodereuse(),
                      Instrumental(),
                      QwaliSongs(),
                      HipHop(),
                      ArabicMusic(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        //here we have to add more cards in vertical direction but we are facing bottom overflow errors
        // Expanded(child: ListView(
        //   scrollDirection: Axis.vertical,
        //   shrinkWrap: true,
        //   children: [
        //  //   ArabicMusic(),
        // ],))

        // Listview
      ),
    );
  }
}

class CategoryTiles extends StatelessWidget {
  final String category;
  const CategoryTiles({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      category,
      style: GoogleFonts.aladin(color: Colors.orangeAccent),
    );
  }
}
