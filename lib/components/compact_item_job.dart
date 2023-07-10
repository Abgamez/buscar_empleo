// ignore_for_file: must_be_immutable

import 'package:buscar_empleo/models/job.dart';
import 'package:flutter/material.dart';

class CompactItemJob extends StatelessWidget {
  Job job;

  CompactItemJob(this.job, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                _companyLogo(),
                _infoJobTexts(context),
              ],
            ),
            _favIcon(context),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          offset: Offset(2.0, 2.0),
          blurRadius: 8.0,
        ),
      ],
    );
  }

  Widget _companyLogo() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(
          'assets/imgs/img_main.png',
          width: 60,
        )
        // Image.network(job.company.urlLogo),
        );
  }

  Widget _infoJobTexts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          job.company.name,
          style: const TextStyle(color: Colors.grey),
        ),
        Text(
          job.role,
          style: const TextStyle(
              color: Color(0xFF5F5FFF), fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 3.0),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 14.0,
            ),
            const SizedBox(width: 3.0),
            Text(
              job.location,
              style: const TextStyle(
                fontSize: 14.0,
                color: Color(0XFFB7B7D2),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _favIcon(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 20.0),
      child: Icon(
        Icons.favorite_border,
        color: Theme.of(context).highlightColor,
      ),
    );
  }
}
