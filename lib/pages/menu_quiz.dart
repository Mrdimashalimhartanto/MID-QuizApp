// ignore_for_file: prefer_const_literals_to_create_immutables

part of 'pages.dart';

class MenuQuiz extends StatelessWidget {
  const MenuQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MID Quiz'.toUpperCase(),
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
                  'assets/quiz-remove.png',
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
          child: Icon(
            Icons.info,
            color: Colors.white,
          ),
        ),
        leadingWidth: 60,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(5),
        childAspectRatio: .75,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 1,
        children: <Widget>[
          // PERSONAL TRAINER HANS
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                borderRadius: BorderRadiusDirectional.circular(15),
                elevation: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.10), BlendMode.multiply),
                      image: NetworkImage(
                        'https://i.pinimg.com/564x/7b/a7/05/7ba70536485096fc95b581b11e662f08.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            'Pengetahuan Umum',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "mid quiz".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // PERSONAL TRAINER 2
          // GestureDetector(
          //   onTap: () {
          //     Navigator.pushNamed(context, '/global-detail-class-balekota');
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.all(10.0),
          //     child: Material(
          //       borderRadius: BorderRadiusDirectional.circular(15),
          //       elevation: 5,
          //       child: Container(
          //         width: MediaQuery.of(context).size.width * 0.2,
          //         decoration: BoxDecoration(
          //           color: Colors.black54,
          //           borderRadius: BorderRadius.circular(15),
          //           border: Border.all(
          //             color: Colors.white,
          //             width: 2,
          //           ),
          //           image: DecorationImage(
          //             colorFilter: ColorFilter.mode(
          //                 Colors.black.withOpacity(0.10), BlendMode.multiply),
          //             image: NetworkImage(
          //               'https://i.pinimg.com/564x/7b/a7/05/7ba70536485096fc95b581b11e662f08.jpg',
          //             ),
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //         child: Stack(
          //           children: [
          //             Align(
          //               child: Padding(
          //                 padding: EdgeInsets.symmetric(horizontal: 5.0),
          //                 child: Text(
          //                   'Pengetahuan Umum',
          //                   style: GoogleFonts.poppins(
          //                     color: Colors.white,
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 12,
          //                   ),
          //                   overflow: TextOverflow.ellipsis,
          //                   maxLines: 2,
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //               alignment: Alignment.center,
          //             ),
          //             Align(
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Padding(
          //                     padding: const EdgeInsets.all(8.0),
          //                     child: Row(
          //                       children: [
          //                         Container(
          //                           // decoration: BoxDecoration(
          //                           //   borderRadius: BorderRadius.circular(4),
          //                           //   color: starfitColor,
          //                           // ),
          //                           child: Padding(
          //                             padding: const EdgeInsets.all(3.0),
          //                             child: Text(
          //                               "mid quiz".toUpperCase(),
          //                               style: TextStyle(
          //                                   fontSize: 8,
          //                                   color: Colors.white,
          //                                   fontWeight: FontWeight.bold),
          //                             ),
          //                           ),
          //                         ),
          //                         SizedBox(
          //                           width: 5,
          //                         ),
          //                         // Text(
          //                         //   "Rp 39.000",
          //                         //   style: TextStyle(
          //                         //       fontSize: 10,
          //                         //       decoration: TextDecoration.lineThrough,
          //                         //       color: Colors.grey),
          //                         // )
          //                       ],
          //                     ),
          //                   ),
          //                   // Container(
          //                   //   padding: EdgeInsets.all(5),
          //                   //   margin: EdgeInsets.all(10),
          //                   //   decoration: BoxDecoration(
          //                   //       color: Colors.black.withOpacity(0.4),
          //                   //       borderRadius: BorderRadius.circular(15)),
          //                   //   child: Row(
          //                   //     children: [
          //                   //       Icon(
          //                   //         Icons.star,
          //                   //         color: Colors.yellow,
          //                   //         size: 18,
          //                   //       ),
          //                   //       SizedBox(width: 7),
          //                   //       Text('4.9')
          //                   //     ],
          //                   //   ),
          //                   // ),
          //                 ],
          //               ),
          //               alignment: Alignment.bottomLeft,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
