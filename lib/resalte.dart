import 'package:flutter/material.dart';

class Resalte extends StatelessWidget {
  const Resalte({
    Key? key,
    required this.age,
    required this.sliservalue,
    required this.weight,
    required this.gender,
  }) : super(key: key);
  final double sliservalue;
  final double weight;
  final int age;
  final String gender;

  @override
  Widget build(BuildContext context) {
    double result = weight / ((sliservalue / 100) * (sliservalue / 100));
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Result'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GENDER : $gender',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'HEIGHT : ${sliservalue.toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'WEIGHT : $weight',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'AGE : $age',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'RESULT : ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
