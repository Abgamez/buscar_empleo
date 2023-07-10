import 'package:buscar_empleo/components/compact_item_job.dart';
import 'package:buscar_empleo/models/job.dart';
import 'package:flutter/material.dart';



// ignore: must_be_immutable
class JobList extends StatelessWidget {
  List<Job> jobs;

  JobList(this.jobs, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      itemBuilder: (context, index) => CompactItemJob(jobs[index]),
    );
  }
}