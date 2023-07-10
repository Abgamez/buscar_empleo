import 'package:buscar_empleo/components/job_carousel.dart';
import 'package:buscar_empleo/components/job_list.dart';
import 'package:buscar_empleo/models/company.dart';
import 'package:buscar_empleo/models/job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  List<Job> forYouJobs = [
    Job(
      role: 'Product Designer',
      location: 'San Francisco, CA',
      company: Company(
        name: 'Google',
        urlLogo:
            'assets/imgs/google.png',// 'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
      ),
      isFavorite: false,
    ),
    Job(
      role: 'Frontend Web',
      location: 'Miami',
      company: Company(
        name: 'Netflix',
        urlLogo:
            'assets/imgs/google.png',// 'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
      ),
      isFavorite: false,
    ),
    Job(
      role: 'Mobile Developer',
      location: 'New York',
      company: Company(
        name: 'Amazon',
        urlLogo:
            'assets/imgs/google.png',// 'https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png',
      ),
      isFavorite: true,
    ),
  ];

  List<Job> recentJobs = [
    Job(
      role: 'UX Enginner',
      location: 'Mountain View, CA',
      company: Company(
        name: 'Apple',
        urlLogo:
            // 'https://menorcaaldia.com/wp-content/uploads/2018/02/air.jpg',
            'assets/imgs/google.png',
      ),
      isFavorite: true,
    ),
    Job(
      role: 'Motion Designer',
      location: 'New York, NY',
      company: Company(
        name: 'AirBnb',
        urlLogo: 
       'assets/imgs/google.png', // 'https://menorcaaldia.com/wp-content/uploads/2018/02/air.jpg',
      ),
      isFavorite: true,
    ),
    Job(
      role: 'Python Developer',
      location: 'New York',
      company: Company(
        name: 'Amazon',
        urlLogo:
            'assets/imgs/google.png', // 'https://menorcaaldia.com/wp-content/uploads/2018/02/air.jpg',
      ),
      isFavorite: false
    ),
  ];
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _customAppBar(),
            _textsHeader(),
            _forYou(),
            _recentJobs(),
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 40,
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            onPressed: () {},
          ),
          Row(
            children: [
              IconButton(
                iconSize: 40,
                icon: SvgPicture.asset('assets/icons/search.svg'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 40,
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _textsHeader() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi Jade',
            style: TextStyle(fontSize: 20.0, color: Color(0xFFB7B7D2)),
          ),
          Text(
            'Find your next',
            style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF030047)),
          ),
          Text(
            'design job',
            style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5F5FFF)),
          )
        ],
      ),
    );
  }

  Widget _forYou() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'For you',
            style: TextStyle(fontSize: 20.0, color: Color(0xFFB7B7D2)),
          ),
        ),
        JobCarousel(forYouJobs)
      ],
    );
  }

  Widget _recentJobs() {
    return  Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30, right: 30,top: 5,bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Text(
              "Recent",
              style: TextStyle(color: Color(0xFFB7B7D2), fontSize: 20),
            ),
            Text(
              "See All",
              style: TextStyle(color: Color(0xFF5F5FFF), fontSize: 16, fontWeight: FontWeight.w600),
            )
          ]),
        ),
        JobList(recentJobs)
      ],
    );
  }
}
