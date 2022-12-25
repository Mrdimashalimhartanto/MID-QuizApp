// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, duplicate_ignore

part of 'components.dart';

class WelcomePageQuiz extends StatelessWidget {
  const WelcomePageQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget button() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: GestureDetector(
          onTap: () {
            Dialogs.materialDialog(
              color: AppColor.pripmaryColor,
              msg: 'Quiz nya seru looh !!!',
              msgStyle: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              title: 'Yakin nih mau main quiz ?',
              titleStyle: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              lottieBuilder: Lottie.asset(
                'assets/quiz.json',
                fit: BoxFit.contain,
              ),
              context: context,
              actions: [
                IconsOutlineButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu-quiz');
                  },
                  text: 'IYA',
                  iconData: Icons.check,
                  color: Colors.green,
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                  iconColor: Colors.white,
                ),
                IconsButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: 'Tidak',
                  iconData: Icons.cancel,
                  color: Colors.red,
                  textStyle: TextStyle(color: Colors.white),
                  iconColor: Colors.white,
                ),
              ],
            );
            // showDialog(
            //   context: context,
            //   builder: (context) => dialogquiz(),
            // );
          },
          child: Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // dialogquiz(),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Start Quizz',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buttonloginfacebook() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xff38579D),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png',
                  height: 30),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Continue with Facebook',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buttonlogingoogle() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xff364A56),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png',
                  height: 30),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Continue with Google',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: Text(
                    'By continuing, you agree to MID Quiz App Terms of Service',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'and acknowledge that youve read our Privacy Policy',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: size.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 600,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/564x/c8/98/57/c89857f3f7be27fe33d986b2a42c1b26.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 600,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.4),
                              // Colors.grey.shade400,
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 70,
                          left: 40,
                          right: 30,
                        ),
                        child: Column(
                          children: [
                            // SizedBox(
                            //   height: 400,
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Welcome To \nMID Quiz App',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 56,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            // Center(
                            //   child: Text(
                            //     'Lets Play',
                            //     style: GoogleFonts.poppins(
                            //       color: Colors.white,
                            //       fontSize: 12,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // judulquiz(),
                  button(),
                  buttonloginfacebook(),
                  buttonlogingoogle(),
                  // dialogquiz(),
                  SizedBox(
                    height: 10,
                  ),
                  footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dialogquiz() {
    return AlertDialog(
      backgroundColor: AppColor.pripmaryColor,
      title: Image(
        image: NetworkImage(
            'https://i.pinimg.com/564x/c8/98/57/c89857f3f7be27fe33d986b2a42c1b26.jpg'),
        fit: BoxFit.cover,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _quizApp(),
        ],
      ),
    );
  }

  Widget _quizApp() {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'pijak e-commerce'.toUpperCase(),
                              style: GoogleFonts.poppins(
                                color: AppColor.secondaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      "hallo selamat datang di pijak e-commerce\nkami sangat berterima kasih kepada anda selaku konsumen kami karna telah mempercayai pijak e-commerce sebagai pilihan anda dalam memilih sepatu kesukaan anda.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0.1,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
