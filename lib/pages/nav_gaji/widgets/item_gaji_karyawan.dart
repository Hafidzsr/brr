import 'package:brr_prototype/theme.dart';
import 'package:flutter/material.dart';

class ItemGajiKaryawan extends StatefulWidget {
  @override
  State<ItemGajiKaryawan> createState() => _ItemGajiKaryawanState();
}

class _ItemGajiKaryawanState extends State<ItemGajiKaryawan> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icons/icon_karyawan.png',
          width: 28,
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hafidz',
                style: blackTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                '6551276183921',
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 62,
        ),
        Text(
          'Rp. 2.000.000,-',
          style: blackTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
