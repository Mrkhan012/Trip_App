import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/pages/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int totalPage = 8;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'assets/images/five.jpg',
            title: 'Taj mahal',
            description:
                'The Taj Mahal is an iconic white marble mausoleum located in Agra, India. Commissioned by the Mughal Emperor Shah Jahan in memory of his beloved wife Mumtaz Mahal, it stands as one of the most beautiful and universally admired structures in the world. Construction began in 1632 and was completed in 1653, employing thousands of artisans and craftsmen.',
          ),
          makePage(
            page: 2,
            image: 'assets/images/six.jpg',
            title: 'Qutub Minar',
            description:
                'Qutub Minar is a historical monument located in Delhi, India. Standing tall at 73 meters (240 feet), it is the tallest brick minaret in the world and is recognized as a UNESCO World Heritage Site. The construction of Qutub Minar began in the late 12th century during the reign of Qutb-ud-din Aibak, the founder of the Delhi Sultanate, and was completed by his successor Iltutmish.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/seven.jpg',
            title: 'India Gate',
            description:
                "India Gate is a prominent war memorial located in the heart of New Delhi, India. Built in honor of the soldiers who sacrificed their lives during World War I, the monument has become a symbol of national pride and patriotism. The foundation stone for India Gate was laid in 1921, and it was completed in 1931.",
          ),
          makePage(
            page: 4,
            image: 'assets/images/eight.jpg',
            title: 'Charminar',
            description:
                "Charminar is a historic monument and iconic symbol located in the heart of Hyderabad, India. Built in 1591 by Muhammad Quli Qutb Shah, the fifth ruler of the Qutb Shahi dynasty, the structure stands at the intersection of four grand arches, giving it its name Charminar, which translates to Four Towers in English.",
          ),
          makePage(
            page: 5,
            image: 'assets/images/one.jpg',
            title: 'Savannah',
            description:
                "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.",
          ),
          makePage(
            page: 6,
            image: 'assets/images/two.jpg',
            title: 'Golden Gate Bridge',
            description:
                'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.',
          ),
          makePage(
            page: 7,
            image: 'assets/images/three.jpg',
            title: 'Sedona',
            description:
                "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful.",
          ),
          makePage(
            page: 8,
            image: 'assets/images/four.jpg',
            title: 'Savannah',
            description:
                "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.",
          ),
        ],
      ),
    );
  }

  Widget makePage(
      {required int page,
      required String image,
      required String title,
      required String description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/$totalPage',
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 19,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 19,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 19,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 19,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        const Text(
                          '4.0',
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                        const Text(
                          '(2300)',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        description,
                        style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.9,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        try {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                image: image,
                                title: title,
                                description: description,
                              ),
                            ),
                          );
                        } catch (error) {
                          // Handle navigation error
                          if (kDebugMode) {
                            print('Error navigating to DetailsPage: $error');
                          }
                        }
                      },
                      child: const Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
