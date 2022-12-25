part of 'pages.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result Quiz'.toUpperCase(),
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.black,
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Image(
                image: AssetImage(
                  'assets/logo-pijak-remove.png',
                ),
                height: 20,
                width: 40,
              ),
            ),
          ),
        ],
        centerTitle: true,
        leading: GestureDetector(
          ///['BUTTON KEMBALI KE MENU']
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => MainPageGlobal()),
            // );
          },
          // child: Icon(
          //   Icons.lef,
          //   color: Colors.white,
          // ),
        ),
        leadingWidth: 60,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            LottieBuilder.asset('assets/happy.json'),
            // Image.asset(
            //   'assets/logo-pijak-remove.png',
            //   width: 300,
            // ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You Score is',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "${widget.score}",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 85.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            //       ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainMenu()));
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff38579d),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          'Result',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
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
    );
    // return Scaffold(
    //   backgroundColor: AppColor.pripmaryColor,
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       SizedBox(
    //         width: double.infinity,
    //         child: Text(
    //           'Congratulations',
    //           textAlign: TextAlign.center,
    //           style: GoogleFonts.poppins(
    //             color: Colors.white,
    //             fontSize: 40.0,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         height: 45.0,
    //       ),
    //       Text(
    //         'You score is',
    //         style: GoogleFonts.poppins(
    //           color: Colors.white,
    //           fontSize: 34.0,
    //         ),
    //       ),
    //       SizedBox(
    //         height: 20.0,
    //       ),
    //       Text(
    //         "${widget.score}",
    //         style: TextStyle(
    //           color: Colors.orange,
    //           fontSize: 85.0,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //       SizedBox(
    //         height: 100.0,
    //       ),
    //       GestureDetector(
    //         onTap: () {
    //           Navigator.push(
    //               context, MaterialPageRoute(builder: (context) => MainMenu()));
    //         },
    //         child: Padding(
    //           padding: const EdgeInsets.only(bottom: 20),
    //           child: Container(
    //             height: 50,
    //             margin: EdgeInsets.symmetric(horizontal: 20),
    //             decoration: BoxDecoration(
    //               color: Color(0xff38579d),
    //               borderRadius: BorderRadius.all(Radius.circular(10)),
    //             ),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: <Widget>[
    //                 Container(
    //                   margin: EdgeInsets.only(left: 30),
    //                   child: Text(
    //                     'Result',
    //                     style: GoogleFonts.poppins(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 14,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
