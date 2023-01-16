import 'package:brr_prototype/theme.dart';
import 'package:flutter/material.dart';

class ItemAbsensiKaryawan extends StatefulWidget {
  @override
  State<ItemAbsensiKaryawan> createState() => _ItemAbsensiKaryawanState();
}

class _ItemAbsensiKaryawanState extends State<ItemAbsensiKaryawan> {
  List multipleSelectedHarian = [];
  List checkListItemsHarian = [
    {
      "id": 0,
      "value": false,
      "title": "Senin",
    },
    {
      "id": 1,
      "value": false,
      "title": "Selasa",
      
    },
    {
      "id": 2,
      "value": false,
      "title": "Rabu",
    },
    {
      "id": 3,
      "value": false,
      "title": "Kamis",
    },
    {
      "id": 4,
      "value": false,
      "title": "Jumat",
    },
    {
      "id": 5,
      "value": false,
      "title": "Sabtu",
    },
  ];

  List multipleSelectedLembur = [];
  List checkListItemsLembur = [
    {
      "id": 0,
      "value": false,
      "title": "Minggu",
    },
    {
      "id": 1,
      "value": false,
      "title": "Senin",
    },
    {
      "id": 2,
      "value": false,
      "title": "Selasa",
    },
    {
      "id": 3,
      "value": false,
      "title": "Rabu",
    },
    {
      "id": 4,
      "value": false,
      "title": "Kamis",
    },
    {
      "id": 5,
      "value": false,
      "title": "Jumat",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.to(PageAbsensiKaryawan());
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 780,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                color: whiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 28,
                  right: 18,
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 12,
                            height: 24,
                            child: Image.asset(
                              'assets/icons/icon_x.png',
                              width: 12,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Normal :',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),

                    //* Multiple Checkboxes Harian
                    Column(
                      children: List.generate(
                        checkListItemsHarian.length,
                        (index) => CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          title: Text(
                            checkListItemsHarian[index]["title"],
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          value: checkListItemsHarian[index]["value"],
                          onChanged: (value) {
                            setState(() {
                              checkListItemsHarian[index]["value"] = value;
                              if (multipleSelectedHarian
                                  .contains(checkListItemsHarian[index])) {
                                multipleSelectedHarian
                                    .remove(checkListItemsHarian[index]);
                              } else {
                                multipleSelectedHarian
                                    .add(checkListItemsHarian[index]);
                              }
                            });
                          },
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 39,
                    ),
                    Text(
                      'Lembur :',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),

                    //* Multiple Checkboxes Lembur
                    Column(
                      children: List.generate(
                        checkListItemsLembur.length,
                        (index) => CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          title: Text(
                            checkListItemsLembur[index]["title"],
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          value: checkListItemsLembur[index]["value"],
                          onChanged: (value) {
                            setState(() {
                              checkListItemsLembur[index]["value"] = value;
                              if (multipleSelectedLembur
                                  .contains(checkListItemsLembur[index])) {
                                multipleSelectedLembur
                                    .remove(checkListItemsLembur[index]);
                              } else {
                                multipleSelectedLembur
                                    .add(checkListItemsLembur[index]);
                              }
                            });
                          },
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      multipleSelectedHarian.isEmpty
                          ? ""
                          : multipleSelectedHarian.toString(),
                      style: const TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      multipleSelectedLembur.isEmpty
                          ? ""
                          : multipleSelectedLembur.toString(),
                      style: const TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Row(
        children: [
          Image.asset(
            'assets/icons/icon_karyawan.png',
            width: 28,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hafidz Surya Ramadhan',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Hadir',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '          :',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      ${multipleSelectedHarian.length}',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    'Lembur',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      :',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      ${multipleSelectedLembur.length}',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
