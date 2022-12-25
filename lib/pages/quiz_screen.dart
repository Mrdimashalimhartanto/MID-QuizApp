part of 'pages.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();

  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          // PAGE VIEW
          controller: _controller!,
          onPageChanged: (page) {
            if (page == questions.length - 1) {
              setState(() {
                btnText = "See Result";
              });
            }
            setState(() {
              answered = false;
            });
          },
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/10",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  // CONTENT ACCORDION
                  // ExpansionTileCard(
                  //   baseColor: Colors.cyan[50],
                  //   expandedColor: Colors.red[50],
                  //   key: cardA,
                  //   leading: ClipOval(
                  //       child: Image.asset(
                  //     "assets/logo-pijak-remove.png",
                  //     fit: BoxFit.cover,
                  //     width: 90.0,
                  //     height: 90.0,
                  //   )),
                  //   title: Text(
                  //     'MID QUIZ APP',
                  //     style: GoogleFonts.poppins(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 12,
                  //     ),
                  //   ),
                  //   subtitle: Text(
                  //     'TAP SOAL NYA YU',
                  //     style: GoogleFonts.poppins(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 12,
                  //     ),
                  //   ),
                  //   children: const <Widget>[
                  //     Divider(
                  //       thickness: 1.0,
                  //       height: 1.0,
                  //     ),
                  //     Align(
                  //       alignment: Alignment.centerLeft,
                  //       child: Padding(
                  //         padding: EdgeInsets.symmetric(
                  //           horizontal: 16.0,
                  //           vertical: 8.0,
                  //         ),
                  //         child: Image(
                  //           image: NetworkImage(
                  //               'https://kompaspedia.kompas.id/wp-content/uploads/2020/02/Soekarno_sq-1-e1585486258865.jpg'),
                  //           fit: BoxFit.cover,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  // END ACCORDION
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Text(
                      "${questions[index].question}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: EdgeInsets.only(
                            bottom: 20.0, left: 12.0, right: 12.0),
                        child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillColor: btnPressed
                              ? questions[index].answers!.values.toList()[i]
                                  ? Colors.green
                                  : Colors.red
                              : AppColor.secondaryColor,
                          onPressed: !answered
                              ? () {
                                  if (questions[index]
                                      .answers!
                                      .values
                                      .toList()[i]) {
                                    score++;
                                    print("yes");
                                  } else {
                                    print("no");
                                  }
                                  setState(() {
                                    btnPressed = true;
                                    answered = true;
                                  });
                                }
                              : null,
                          child: Text(
                            questions[index].answers!.keys.toList()[i],
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 40.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      if (_controller!.page?.toInt() == questions.length - 1) {
                        // pindah halaman ke halaman hasil quiz
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(score)));
                      } else {
                        _controller!.nextPage(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.easeInExpo);

                        setState(() {
                          btnPressed = false;
                        });
                      }
                    },
                    shape: StadiumBorder(),
                    fillColor: Colors.blue,
                    padding: EdgeInsets.all(18.0),
                    elevation: 0.0,
                    child: Text(
                      btnText,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: questions.length,
        ),
      ),
    );
  }
}
