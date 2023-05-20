import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xFFF55449);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  //"https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
 // "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
 // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

const kSocialLinks = [
  "https://facebook.com/mhmzdev",
  //"https://instagram.com/mhmzdev",
  //"https://twitter.com/mhmzdev",
  "https://linkedin.com/in/mhmzdev",
  "https://github.com/mhmzdev",
  //"https://mhamzadev.medium.com"
];

// URL Launcher
 launchURL(String _url)  async =>
    await canLaunch(_url) != null ?  await launch(_url) : throw 'Could not launch $_url';
//remember to remove /assets before file name to work
// Community
final kCommunityLogo = [
  'htblogo.png',
  'fl_mumbai.png',
  'Linux-logo.jpg'
];

final kCommunityLinks = [
  "https://www.hackthebox.com/community",
  "https://flutterindia.dev/",
  "https://www.linux.org/forums/"
];

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Python",
  "Linux",
  "IOT",
  "HTML",
  "CSS",
  "React"
];

// services
final kServicesIcons = [
  "lottie/app-developer.json",
  "lottie/uiux.json",
  "lottie/app-development2.json",
  //"lottie/ux-ui-design-iso.json",
  "lottie/uxui-design-flat-icon.json",
];

final kServicesTitles = [
  "Full App Development",
  "UI/UX Designing",
  "Rapid Prototyping",
 // "Technical Blog Writing",
  "Open Source - GitHub",
];

// final kServicesDescriptions = [
//   "For now, I can only develop Android Apps using Flutter, that's because I don't own a MacBook right now so can't test or debug apps for iOS. Hopefully this missing piece will be filled soon :)",
//   "Although I'm mainly a flutter developer but I do care about the UI/UX for my client. Hence, I also do UI designing for applications. So, feel free to ask me for getting you UI/UX for your apps",
//   "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
//   "I have been writing technical blogs on Medium for over a year now. So, I can get you technical blogs with awesome header images with interesting topics.\nMy Medium profile @mhamzadev",
//   "Working as open source contributor on GitHub with 200+ stars and numerous forks on various projects liked and shared by other developers.\nMy GitHub Profile @mhmzdev",
// ];

final kServicesDescriptions = [
  "Android app development via Flutter\n- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps integration and more...!",
  "Modern UI/UX Designing\n- Adobe XD\n- Mobile & Web designs\n- Interactive UI designs\n- Responsiveness\n- Promo Videos and more..!",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
 // "Technical Blog writing\n- Medium blogs\n- Soothing header images\n- SEO friendly\n- Researched topics and more..!",
  "Open source GitHub Projects\n- Awesome README.md\n- Well documented\n- Header images and more...!",
];

final kServicesLinks = [
  "https://www.upwork.com/freelancers/~015bfdb0e2641d6d4d?viewMode=1",
  "https://www.upwork.com/freelancers/~015bfdb0e2641d6d4d?viewMode=1",
  "https://www.upwork.com/freelancers/~015bfdb0e2641d6d4d?viewMode=1",
  //"https://mhamzadev.medium.com",
  "https://github.com/rocksolid911",
];

// projects
final kProjectsBanner = [
  "projects/crypto.png",
  "projects/meditation.png",
  "projects/worldtour.png",
  "projects/stopit.png",
];

final kProjectsIcons = [
  "assets/projects/medkit.png",
  "assets/projects/quran.png",
  "assets/projects/hereiam.png",
  "assets/projects/covid.png",
  "assets/projects/messenger.png",
  "assets/projects/flutter.png",
  "assets/projects/earbender.png",
  "assets/projects/java.png",
  "assets/projects/android.png",
  "assets/services/open.png",
];

final kProjectsTitles = [
  "MedKit",
  "The Holy Qur'an",
  "Here I Am",
  "COVID-19",
  "Messenger Chat Head UI",
  "flutter.dev - Flutter Web",
  "Earbender",
  "File Transfer Protocol",
  "My Order",
  "Hidev",
];

final kProjectsDescriptions = [
  "A Phramacy app developed using Flutter powered with Firebase as database with Doctor and Patient panels.",
  "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter. Powered with live RestAPI given in README.md",
  "Here I am is an Alert app that Sends alert SMS holding your location (Address and Google Maps) to your loved ones.",
  "A live trakcer for COVID19 stats across the Globe and my Home country Pakistan. It uses APIs so the data is live.",
  "Tried to clone the famous Chat Heads by Facebook Messenger using Flutter. Its basically in-app not exactly like the original chat head.",
  "Flutter Official Site clone using Flutter Web. Try the live site here. For the time being its not responsive fully so there might be responsiveness issues.",
  "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
  "A simple GUI based Java application that sends file from Client to Server but not the other way around.",
  "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
  "Its my end semester project. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
];

final kProjectsLinks = [
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
  "https://github.com/rocksolid911",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Odisha, India",
  "(+91) 9090291939",
  "siddhantsaraf.91@gmail.com"
];
