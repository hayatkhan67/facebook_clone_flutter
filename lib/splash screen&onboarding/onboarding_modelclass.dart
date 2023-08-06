class OnBoardingDetails {
  String? title;
  String? image;
  String? detail;
  String? svg;

  OnBoardingDetails({this.detail, this.image, this.title,this.svg});
}

List<OnBoardingDetails> onboardingDetails = [
  OnBoardingDetails(
    title: 'Welcome to Facebook',
    image: 'assets/facebook/onboarding/Facebook_Monochromatic.png',
    svg:'assets/svg/undraw_social_girl_re_kdrx.svg',
    detail:
        'Connect with Friends and Family & Discover What\'s Happening in the World',
  ),
  OnBoardingDetails(
    title: 'Share Your Stories and Interests',
    svg:'assets/svg/undraw_taking_selfie_re_wlgd.svg',
    image: 'assets/facebook/onboarding/watch.png',
    detail:
        'Watch Videos and Reels\n Enjoy your Time with Facebook',
  ),
  OnBoardingDetails(
    title: 'Chats',
    svg:'assets/svg/undraw_online_message_re_3m5v.svg',
    image: 'assets/facebook/onboarding/images.png',
    detail: 'Connect with Friends and Family with Facebook Chats',
  )
];
