import 'dart:ffi';

import 'package:ecomerce/constants/themes.dart';
import 'package:ecomerce/widgets/ads_banner.dart';
import 'package:ecomerce/widgets/chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: kWhiteColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.shop),
            ),
          ),
        ],
        title: SvgPicture.asset(
          'assets/general/store_brand.svg',
          color: kWhiteColor,
          width: 180,
        ),
        backgroundColor: kSecondaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ads_banner_widget(),
              const Gap(12),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ChipWidget(
                      text: "All",
                      icon: Icons.all_inbox,
                    ),
                    Gap(12),
                    ChipWidget(
                      icon: Icons.computer,
                      text: "Computers",
                    ),
                    Gap(12),
                    ChipWidget(
                      icon: Icons.mobile_friendly,
                      text: "Mobiles",
                    ),
                    Gap(12),
                    ChipWidget(
                      icon: Icons.electric_bike,
                      text: "Electronics",
                    ),
                    Gap(12),
                    ChipWidget(
                      icon: Icons.lte_mobiledata,
                      text: "LTD",
                    ),
                  ],
                ),
              ),
              const Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Products", style: appTheme.headingOne),
                  Text(
                    "See All",
                    style: appTheme.headingTwo,
                  ),
                ],
              ),
              const Gap(12),
              SizedBox(
                height: 250, // Set a height for the horizontal ListView.builder
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),

                  scrollDirection:
                      Axis.horizontal, // Ensure horizontal scrolling
                  itemCount: 15,
                  itemBuilder: (context, index) => Container(
                      width: MediaQuery.of(context).size.width *
                          0.5, // Product card width
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 6),
                              blurRadius: 8,
                              color: kBlackColor.withOpacity(0.1),
                              spreadRadius: 4)
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                                width: double.infinity,
                                color: kLightBackground,
                                margin: EdgeInsets.all(5),
                                child:
                                    Image.asset('assets/products/airpods.jpg')),
                          ),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  overflow: TextOverflow.ellipsis,
                                  "Head Phone",
                                  style: appTheme.headingOne,
                                ),
                                Text(
                                  "head Phones For Sales Get In Touach",
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$200"),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add_circle))
                                  ],
                                )
                              ],
                            ),
                          ))
                          // Expanded(
                          //   child: Container(color: Colors.yellow),
                          // )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
