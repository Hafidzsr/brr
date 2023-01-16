import 'package:brr_prototype/pages/nav_gaji/widgets/item_gaji_karyawan.dart';
import 'package:brr_prototype/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BayarGaji extends StatefulWidget {
  @override
  State<BayarGaji> createState() => _BayarGajiState();
}

class _BayarGajiState extends State<BayarGaji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 31,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: InkWell(
                        onTap: () {
                          Get.back;
                        },
                        child: Image.asset(
                          'assets/icons/arrow_back.png',
                          width: 8,
                          height: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      'Rincian',
                      style: blackTextStyle.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: mediumGreyColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 64,
                          ),
                          ItemGajiKaryawan(),
                          SizedBox(
                            height: 20,
                          ),
                          ItemGajiKaryawan(),
                          SizedBox(
                            height: 20,
                          ),
                          ItemGajiKaryawan(),
                          SizedBox(
                            height: 20,
                          ),
                          ItemGajiKaryawan(),
                          SizedBox(
                            height: 20,
                          ),
                          ItemGajiKaryawan(),
                          SizedBox(
                            height: 244,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Gaji',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    'Rp. 100.000,-',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Container(
                                width: 138,
                                height: 33,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: redColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                        'Bayar',
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 38,
                                      ),
                                      Image.asset(
                                        'assets/icons/icon_forward.png',
                                        width: 6,
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
