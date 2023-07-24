class OnBoardingDetails {
  String? title;
  String? image;
  String? detail;

  OnBoardingDetails({this.detail, this.image, this.title});
}

List<OnBoardingDetails> onboardingDetails = [
  OnBoardingDetails(
    title: 'Welcome to Facebook',
    image: 'assets/facebook/onboarding/Facebook_Monochromatic.png',
    detail:
        'Connect with Friends and Family & Discover What\'s Happening in the World',
  ),
  OnBoardingDetails(
    title: 'Share Your Stories and Interests',
    image: 'assets/facebook/onboarding/watch.png',
    detail:
        'Watch Videos and Reels\n Enjoy your Time with Facebook\n Connect with Your Favorite Brands and Celebrities',
  ),
  OnBoardingDetails(
    title: 'Chats',
    image: 'assets/facebook/onboarding/images.png',
    detail: 'Connect with Friends and Family with Facebook Chats',
  )
];
