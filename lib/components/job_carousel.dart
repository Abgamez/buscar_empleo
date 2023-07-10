import 'package:buscar_empleo/components/item_job.dart';
import 'package:buscar_empleo/models/job.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JobCarousel extends StatelessWidget {
  List<Job> jobs;
  JobCarousel(this.jobs, {super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items:  jobs.map((e) => ItemJob(e, themeDark: jobs.indexOf(e) == 0,)).toList(),
      options: CarouselOptions(
        height: 230,
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
      ),
    );
  }
}
