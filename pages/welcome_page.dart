import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'user_details_page.dart';

const Color blueViolet = Color(0xFF44409E);
const Color lightpurple = Color(0xFFF3E5F5);

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _current = 0;
  final CarouselController _carouselController = CarouselController();

  final List<Widget> _slides = [
    const Slide(
      title: 'OurPesa',
      subtitle: 'Welcome to OurPesa App, Let\'s save!',
      description: 'We show the easy way to save.\nJust stay at home with us',
      image: 'assets/images/welcome_page.png',
    ),
    const Slide(
      title: 'OurPesa',
      subtitle: 'Cooperative society gone Digital.',
      description:
          'We are committed to improving group & individual savings and investment habits',
      image: 'assets/images/second_page.png',
    ),
    const Slide(
      title: 'OurPesa',
      subtitle: 'Double your financial capacity',
      description:
          'We inject saving habits to the current system by creating easy and fair saving platform that would be favorable to our customers.',
      image: 'assets/images/third_page.png',
    ),
    const Slide(
      title: 'OurPesa',
      subtitle: 'Start saving for a better tomorrow',
      description:
          'Use OurPesa to plan towards your dream home, kid\'s education and travel the world.',
      image: 'assets/images/fourth_page.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            CarouselSlider(
              items: _slides,
              carouselController: _carouselController, // Assign the controller
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.6,
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: false,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _slides.map((slide) {
                int index = _slides.indexOf(slide);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? blueViolet : Colors.grey,
                  ),
                );
              }).toList(),
            ),
            const Spacer(flex: 1),
            ElevatedButton(
              onPressed: () {
                if (_current == _slides.length - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserDetailsPage()),
                  );
                } else {
                  _carouselController.nextPage(); // Move to the next slide
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: blueViolet,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child:
                  Text(_current == _slides.length - 1 ? 'Get Started' : 'Next'),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class Slide extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  const Slide(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 20),
        Image.asset(image, height: 200),
      ],
    );
  }
}
