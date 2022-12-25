part of 'components.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: 'Track your work and get the result',
    image: "assets/logo-pijak.png",
    desc: "Remember to keep track of your professional accomplishments",
  ),
  OnboardingContents(
    title: "Stay organized with tram",
    image: "assets/logo-pijak.png",
    desc:
        "But understanding the contributes our colleagues make to out teams and companies.",
  ),
  OnboardingContents(
    title: "Get notified when work happens",
    image: "assets/logo-pijak.png",
    desc:
        "Take controler of notifications, collaborate live or on your own time.",
  ),
];
