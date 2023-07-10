import 'package:buscar_empleo/models/company.dart';

class Job {
  String location;
  String role;
  Company company;
  bool isFavorite;

  Job({required this.location, required this.role, required this.company, required this.isFavorite } );

 
}
