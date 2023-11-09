import 'package:cc_yard_app/view/widgets/bottomnav_bar.dart';
import 'package:cc_yard_app/view/widgets/icon_widget.dart';
import 'package:cc_yard_app/view/widgets/pages.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg.jpg.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 350,
                child: PageView(
                  controller: _controller,
                  children: const [
                    CustomPages(bgcolor: Color.fromARGB(255, 255, 255, 255)),
                    CustomPages(bgcolor: Color.fromARGB(255, 255, 255, 255)),
                    CustomPages(bgcolor: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                    activeDotColor: Color.fromARGB(255, 107, 107, 107),
                    dotColor: Color.fromARGB(255, 194, 194, 194),
                    dotHeight: 10,
                    dotWidth: 10),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 2,
                      endIndent: 10,
                      indent: 10,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: const CustomIcon(
                      icons: Icon(
                        Icons.bookmark,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: const CustomIcon(
                      icons: Icon(
                        Icons.volume_up,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.thumb_up_alt_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  Text('543', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.message_sharp),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '543',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.share),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const GnavBottom(),
    );
  }
}
