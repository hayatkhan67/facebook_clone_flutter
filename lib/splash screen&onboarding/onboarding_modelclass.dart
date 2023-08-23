class OnBoardingDetails {
  String? title;
  String? detail;
  String? lottie;
  OnBoardingDetails({this.detail, this.title, this.lottie});
}

List<OnBoardingDetails> onboardingDetails = [
  OnBoardingDetails(
    title: 'Welcome to Facebook',
    lottie: 'assets/lottie/animation_llksaidc.json',
    detail:
        'Connect with Friends and Family & Discover What\'s Happening in the World',
  ),
  OnBoardingDetails(
    title: 'Share Your Stories and Interests',
    lottie: 'assets/lottie/video.json',
    detail: 'Watch Videos and Reels\n Enjoy your Time with Facebook',
  ),
  OnBoardingDetails(
    title: 'Chats',
    lottie: 'assets/lottie/animation_llksacsg.json',
    detail: 'Connect with Friends and Family with Facebook Chats',
  )
];
