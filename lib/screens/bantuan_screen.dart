import 'package:cov_19/shared/constant.dart';
import 'package:cov_19/widgets/item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BantuanScreen extends StatelessWidget {
  const BantuanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bantuan.png',
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 100,
            ),
          child: Text(
            'Pusat\nBantuan',
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
                    'Help Center',
                    style: medium.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'If you have symptoms',
                            style: regular.copyWith(
                              color: body,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ',\nplease contact the contact below.',
                            style: regular.copyWith(
                              color: body,
                              fontSize: 14,
                            )
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ItemWidget(
                      color: Colors.green,
                      image: 'hotline.png',
                      title: 'Hotline',
                      custom: Container(
                        height: 32,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration:  BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            'Call',
                            style: medium.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                      )
                    )
                  ),
                  const ItemWidget(
                    color: Colors.blue,
                    image: 'chat.png',
                    title: 'Doctor Consultation',
                  ),
                  const ItemWidget(
                    color: Colors.orange,
                    image: 'hospital.png',
                    title: 'Nearest hospital',
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
