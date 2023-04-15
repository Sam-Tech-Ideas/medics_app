import 'package:flutter/material.dart';

import '../models/doctor_model.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SizedBox(
        height: 220,
        width: 400,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              elevation: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(doctorList[index].image),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      doctorList[index].name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        doctorList[index].title,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rate,
                            color: Color(0xFF00BFA6),
                            size: 14,
                          ),
                          Text(
                            doctorList[index].rating,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black26,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Color(0xFF00BFA6),
                            size: 14,
                          ),
                          Text(
                            doctorList[index].distance,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black26,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 2,
            );
          },
          itemCount: doctorList.length,
        ),
      ),
    );
  }
}
