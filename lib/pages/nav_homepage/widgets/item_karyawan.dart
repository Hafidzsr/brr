import 'package:brr_prototype/pages/nav_homepage/edit_karyawan.dart';
import 'package:brr_prototype/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemKaryawan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          EditKaryawan(),
        );
      },
      child: Row(
        children: [
          Image.asset(
            'assets/icons/icon_karyawan.png',
            width: 28,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hafidz Surya Ramadhan',
                style: blackTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                '081234567891',
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
