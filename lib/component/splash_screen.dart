part of 'components.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Colors.black,
              Colors.black,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/logo-pijak-remove.png',
                  height: 300.0,
                  width: 300.0,
                ),
                SizedBox(height: 20),
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Please Wait...',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ),

            ///[FOOTER]
            // Column(
            //   children: [
            //     Text(
            //       'pijak sepatoe'.toUpperCase(),
            //       style: GoogleFonts.poppins(
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 12,
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     // Text(
            //     //   'welcome and happy shop your shoes'.toUpperCase(),
            //     //   style: GoogleFonts.poppins(
            //     //     color: Colors.white,
            //     //     fontSize: 12,
            //     //     fontWeight: FontWeight.bold,
            //     //   ),
            //     // ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
