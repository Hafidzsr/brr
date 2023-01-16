import 'package:brr_prototype/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditKaryawan extends StatefulWidget {
  @override
  State<EditKaryawan> createState() => _EditKaryawanState();
}

class _EditKaryawanState extends State<EditKaryawan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/icon_back.png',
                      width: 8,
                      height: 15,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Edit Data Karyawan',
                      style: blackTextStyle.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 64,
              ),
              TextField(
                style: greyTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'NIP',
                  hintStyle: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: greyTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Nama',
                  hintStyle: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: greyTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'No Rekening',
                  hintStyle: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: greyTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Gaji per hari',
                  hintStyle: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: greyTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'No Hp',
                  hintStyle: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 56,
              ),

              //* Edit data Karyawan
              Container(
                width: 133,
                height: 33,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        content: Container(
                          width: 300,
                          height: 270,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/alert_dialog.png',
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Apakah anda yakin?',
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Anda akan meng-edit\ndata karyawan',
                                style: greyTextStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.back;
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: greyColor,
                                    ),
                                    child: Text(
                                      'Cancel',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      //* if edit karyawan success, get back to HomePage
                                      Get.back();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: redColor,
                                    ),
                                    child: Text(
                                      'OK',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: redColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Edit Data Karyawan',
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //* Delete Data Karyawan
              Container(
                width: 133,
                height: 33,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        content: Container(
                          width: 300,
                          height: 270,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/alert_dialog.png',
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Apakah anda yakin?',
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Anda akan menghapus\ndata karyawan',
                                style: greyTextStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.back;
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: greyColor,
                                    ),
                                    child: Text(
                                      'Cancel',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      //* if edit karyawan success, get back to HomePage
                                      Get.back();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: redColor,
                                    ),
                                    child: Text(
                                      'OK',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: redColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Hapus Data',
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
