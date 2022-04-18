import 'package:cov_19/shared/constant.dart';
import 'package:cov_19/widgets/location_widget.dart';
import 'package:cov_19/widgets/statistic_widget.dart';
import 'package:flutter/material.dart';

class KasusScreen extends StatelessWidget {
  const KasusScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/kasus.png',
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 100),
          child: Text(
            'Opponent\nCOVID-19',
            style: bold.copyWith(
              color: Colors.white,
              fontSize: 36,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.62,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  LocationWidget(),
                    const SizedBox(
                        height: 24,
                    ),
                    Text(
                      'Corona Case Update',
                       style: medium.copyWith(
                         color: Colors.black,
                         fontSize: 20,
                    ),
                   ),
                    const SizedBox(
                      height: 8,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Last updated April 14',
                        style: regular.copyWith(
                          color: body,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'View Details',
                        style: regular.copyWith(
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const StatisticWidget(),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Distribution Map',
                    style: medium.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('assets/images/peta.png'),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  ]
                   ),
              ),
            ),
          ),
        ]
    );
  }
}
