import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horus_university/services/drawer_file.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late String _para = ' ';
  final String _parag1 =
      "HUE Vision \nExcellence and leadership in education services and scientific research locally, regionally and internationally.";
  final String _parag2 =
      "HUE Mission \nA private educational research institution of a number of faculties, centers, and specialized units, HUE seeks the development of patterns of thought, scientific research, human values, the reinforcement of national loyalty and giving birth to a generation of professional, specialized alumni who can meet the requirements of the regional as well as the international community.";
  final String _parag3 = "HUE Code of Conduct\n  \n » Quality and Distinction: "
      "\nHUE is committed to quality criteria issued by The National Authority for Quality Assurance and Accreditation."
      "\n » Leadership and Teamwork Spirit:"
      "\nHUE is committed to respect the role of individual and institutional leadership, along with the importance of teamwork spirit."
      "\n » Equality and integrity:"
      "\nHUE members are committed to the highest degree of honesty, respect and ethical consideration."
      "\n » Transparency and accountability:"
      "\nEvery members of HUE community are committed to respecting their values in all scientific and academic activities alike."
      "\n » Continuous learning:\nThe University is committed to supporting continuous learning within and outside its community.";
  final String _parag4 = "HUE Goals"
      "\n - Improving the competitive profile of the university through raising its institutional capacity."
      "\n - Supporting and reinforcing HUE’s educational system and achieving excellence in teaching and learning."
      "\n - Developing the capacity and skills of the staff members and improving the provided services."
      "\n - Supporting and reinforcing the university’s partnerships with the civil society and global institutions."
      "\n - Developing the students’ skills of creative thinking, scientific research and entrepreneurship.";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'WRKAiD8B-LI',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _para = _parag1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
        tooltip: 'Messenger',
      ),
      key: _scaffoldKey,
      drawer: const Draw(),
      body: ListView(
        children: [
          Stack(
            fit: StackFit.passthrough,
            children: [
              Container(
                width: 50,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background/blueb.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: const Color.fromRGBO(182, 139, 26, 1),
              ),
              Positioned(
                top: 0,
                left: MediaQuery.of(context).size.width * 0.02,
                height: 85,
                child: SizedBox(
                  child: Image.asset('assets/images/logos/mlogo.png'),
                ),
              ),
              Positioned(
                top: 5,
                right: MediaQuery.of(context).size.width * 0.06 * 3,
                child: IconButton(
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 5,
                right: MediaQuery.of(context).size.width * 0.03 * 2,
                child: IconButton(
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 5,
                right: MediaQuery.of(context).size.width * 0.001,
                child: IconButton(
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 5,
                right: MediaQuery.of(context).size.width * 0.04 * 3,
                child: IconButton(
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 50,
                right: MediaQuery.of(context).size.width * 0.001,
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/img/master.jpg'),
          ),
          Container(
            height: 160,
            color: const Color.fromRGBO(182, 139, 26, 1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/banner/better.png',
                    scale: 12,
                  ),
                  RaisedButton(
                    splashColor: const Color.fromRGBO(182, 139, 26, 1),
                    color: const Color.fromRGBO(32, 17, 98, 1),
                    onPressed: () {},
                    child: Text(
                      "Apply Now",
                      style: GoogleFonts.robotoSlab(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //The First Step Towards Excellence
          Container(
            color: const Color.fromRGBO(232, 236, 221, 1),
            child: Image.asset(
              'assets/images/banner/panner.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background/blueb.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Image.asset('assets/images/banner/banner1.png',
                fit: BoxFit.cover),
          ),
          Container(
            color: const Color.fromRGBO(253, 247, 237, 1),
            child: Column(
              children: [
                Container(
                  //width: MediaQuery.of(context).size.width * 0.7,
                  child: Image.asset(
                      'assets/images/persons/presidentwelcom.png',
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(232, 212, 175, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14, right: 14, top: 20),
                          child: Text(
                            "Vision & Mission & Code of",
                            style: GoogleFonts.robotoSlab(
                              fontSize: 21,
                              color: const Color.fromRGBO(32, 17, 98, 20),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          child: Text(
                            "Conduct",
                            style: GoogleFonts.robotoSlab(
                              fontSize: 21,
                              color: const Color.fromRGBO(32, 17, 98, 20),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(253, 247, 237, 1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      border: const Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 5.0,
                                        ),
                                        top: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          // width: 10.0,
                                        ),
                                        right: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 10.0,
                                        ),
                                        left: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 10.0,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                      //borderRadius: BorderRadius.all(20),
                                    ),
                                    child: RaisedButton(
                                      child: Text(
                                        " >> Vision",
                                        style: GoogleFonts.robotoSlab(
                                          //fontSize: 16,
                                          color: const Color.fromRGBO(
                                              32, 17, 98, 20),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      color: const Color.fromRGBO(
                                          253, 247, 237, 1),
                                      splashColor: Colors.tealAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          _para = _parag1;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      border: const Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 5.0,
                                        ),
                                        top: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          // width: 10.0,
                                        ),
                                        right: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 10.0,
                                        ),
                                        left: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 10.0,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                      //borderRadius: BorderRadius.all(20),
                                    ),
                                    child: RaisedButton(
                                      child: Text(
                                        ">> Mission",
                                        style: GoogleFonts.robotoSlab(
                                          //fontSize: 16,
                                          color: const Color.fromRGBO(
                                              32, 17, 98, 20),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      color: const Color.fromRGBO(
                                          253, 247, 237, 1),
                                      splashColor: Colors.tealAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          _para = _parag2;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      border: const Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 5.0,
                                        ),
                                        top: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          // width: 10.0,
                                        ),
                                        right: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 10.0,
                                        ),
                                        left: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 10.0,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                      //borderRadius: BorderRadius.all(20),
                                    ),
                                    child: RaisedButton(
                                      child: Text(
                                        ">> Code of \n    Conduct",
                                        style: GoogleFonts.robotoSlab(
                                          //fontSize: 16,
                                          color: const Color.fromRGBO(
                                              32, 17, 98, 20),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      color: const Color.fromRGBO(
                                          253, 247, 237, 1),
                                      splashColor: Colors.tealAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          _para = _parag3;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 40,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      border: const Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 5.0,
                                        ),
                                        top: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          // width: 10.0,
                                        ),
                                        right: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 10.0,
                                        ),
                                        left: BorderSide(
                                          color:
                                              Color.fromRGBO(182, 139, 26, 1),
                                          //width: 10.0,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                      //borderRadius: BorderRadius.all(20),
                                    ),
                                    child: RaisedButton(
                                      child: Text(
                                        ">> Goals",
                                        style: GoogleFonts.robotoSlab(
                                          //fontSize: 16,
                                          color: const Color.fromRGBO(
                                              32, 17, 98, 20),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      color: const Color.fromRGBO(
                                          253, 247, 237, 1),
                                      splashColor: Colors.tealAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          _para = _parag4;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    child: Text(
                                      _para,
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.robotoSlab(
                                        //fontSize: 16,
                                        color: const Color.fromRGBO(
                                            32, 17, 98, 20),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 45,
                    right: 45,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/background/blueb.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "University",
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Tour",
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 24,
                                  color: const Color.fromRGBO(182, 139, 26, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: YoutubePlayer(
                                controller: _controller,
                                showVideoProgressIndicator: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 45,
                    right: 45,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/background/blueb.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "International",
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Cooperation",
                                style: GoogleFonts.robotoSlab(
                                  fontSize: 24,
                                  color: const Color.fromRGBO(182, 139, 26, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              child: ImageSlideshow(
                                width: 320,
                                autoPlayInterval: 4000,
                                isLoop: true,
                                indicatorBackgroundColor:
                                    const Color.fromRGBO(182, 139, 26, 1),
                                indicatorColor:
                                    const Color.fromRGBO(32, 17, 98, 1),
                                children: [
                                  Image.asset(
                                    'assets/images/logos/plymouth.jpg',
                                    scale: 1.2,
                                  ),
                                  Image.asset(
                                    'assets/images/logos/brainins.png',
                                    scale: 4.1,
                                  ),
                                  Image.asset(
                                    'assets/images/logos/logotsm.png',
                                    scale: 1.2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/blueb.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/banner/banner2.png'),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background/banner.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 30,
                      left: 30,
                      bottom: 10,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          labelText: 'First & Last Name',
                          labelStyle: GoogleFonts.robotoSlab(
                            fontSize: 14,
                            color: const Color.fromRGBO(182, 139, 26, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 30,
                      left: 30,
                      bottom: 10,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 0.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          labelText: 'Mobile Number',
                          labelStyle: GoogleFonts.robotoSlab(
                            fontSize: 14,
                            color: const Color.fromRGBO(182, 139, 26, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 30,
                      left: 30,
                      bottom: 10,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 0.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.all(15),
                          labelText: 'Your E-mail',
                          labelStyle: GoogleFonts.robotoSlab(
                            fontSize: 14,
                            color: const Color.fromRGBO(182, 139, 26, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 30,
                      left: 30,
                      bottom: 5,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: TextField(
                        maxLines: 5,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 0.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.all(15),
                          labelText: 'Write Your Query',
                          labelStyle: GoogleFonts.robotoSlab(
                            fontSize: 14,
                            color: const Color.fromRGBO(182, 139, 26, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      right: 30,
                      left: 30,
                      bottom: 10,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.double_arrow_rounded,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Send Message'.toUpperCase(),
                              style: GoogleFonts.robotoSlab(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        color: const Color.fromRGBO(32, 17, 98, 1),
                        splashColor: const Color.fromRGBO(182, 139, 26, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //nnn
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/banner/banner7.png'),
              ),
            ),
          ),
          Container(
            color: const Color.fromRGBO(32, 17, 98, 1),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/banner/panner8.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
              bottom: 10,
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background/whiteb.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "What People Said About Us",
                        style: GoogleFonts.robotoSlab(
                          fontSize: 24,
                          color: const Color.fromRGBO(132, 43, 43, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Testimonials",
                        style: GoogleFonts.robotoSlab(
                          fontSize: 24,
                          color: const Color.fromRGBO(32, 17, 98, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  ImageSlideshow(
                    width: double.infinity,
                    height: 500,
                    autoPlayInterval: 8000,
                    isLoop: true,
                    indicatorBackgroundColor:
                        const Color.fromRGBO(182, 139, 26, 1),
                    indicatorColor: const Color.fromRGBO(32, 17, 98, 1),
                    children: [
                      Image.asset(
                        'assets/images/persons/Yasmen.png',
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        'assets/images/persons/Mohamed.png',
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        'assets/images/persons/Rawan.png',
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        'assets/images/persons/Sherif.png',
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        'assets/images/persons/Hossam.png',
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
