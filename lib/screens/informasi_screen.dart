import 'package:cov_19/shared/constant.dart';
import 'package:cov_19/widgets/item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformasiScreen extends StatelessWidget {
  const InformasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/informasi.png',
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 100),
          child: Text(
            'Learn about\nCOVID-19',
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
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                      'What is Corona Virus',
                      style: medium.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ItemWidget(
                    title: 'Get to know',
                    image: 'mengenal.png',
                    color: Colors.red,
                  ),
                  const ItemWidget(
                    title: 'Prevent',
                    image: 'mencegah.png',
                    color: Colors.orange,
                  ),
                  const ItemWidget(
                    title: 'Treat',
                    image: 'mengobati.png',
                    color: Colors.green,
                  ),
                  const ItemWidget(
                    title: 'Anticipating',
                    image: 'mengantisipasi.png',
                    color: Colors.green,
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
