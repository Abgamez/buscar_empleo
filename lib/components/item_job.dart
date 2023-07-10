import 'package:buscar_empleo/models/job.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemJob extends StatefulWidget {
  Job job;
  bool themeDark;
  ItemJob(this.job, {super.key, this.themeDark = false});

  @override
  State<ItemJob> createState() => _ItemJobState();
}

class _ItemJobState extends State<ItemJob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 20, top: 20),
      child: Container(
        decoration: _boxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _companyLogo(),
                  _favIcon(),
                ],
              ),
              _infoJobTexts(),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: widget.themeDark ? const Color(0xFF5F5FFF) : Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(4, 4),
          blurRadius: 10,
        ),
      ],
    );
  }

  Widget _companyLogo() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child:
          //  Image.network(
          //   widget.job.company.urlLogo,
          //   width: 60,
          // )
          Image.asset(
            'assets/imgs/img_main.png',
            width: 60,
          ),

          ),
    );
  }

  Widget _favIcon() {
    return GestureDetector(
      child: Icon(
        widget.job.isFavorite ? Icons.favorite : Icons.favorite_border_sharp,
        color: widget.themeDark ? Colors.white : Colors.grey,
      ),
      onTap: () {
        setState(() {
          widget.job.isFavorite = !widget.job.isFavorite;
        });
      },
    );
  }

  Widget _infoJobTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.job.company.name,
          style: const TextStyle(fontSize: 15, color: Color(0xFFb7b7D2)),
        ),
        Text(
          widget.job.role,
          style: TextStyle(
              fontSize: 20,
              color: widget.themeDark ? Colors.grey : const Color(0xFF5F5FFF),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 3),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: Color(0xFFb7b7D2),
              size: 15,
            ),
            const SizedBox(width: 5),
            Text(
              widget.job.location,
              style: const TextStyle(fontSize: 15, color: Color(0xFFB7B7D2)),
            )
          ],
        ),
      ],
    );
  }
}
