import 'package:ecomerce/constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ads_banner_widget extends StatelessWidget {
  const ads_banner_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: kPrimaryColor,
      height: 170,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Products Store",
                      style: appTheme.kBigTitle,
                    ),
                    Text(
                      "Find The Product Store and accessories You'r are looking for",
                      style:
                          appTheme.bodyText.copyWith(color: kLightBackground),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Shop Now"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: kBlackColor,
                          shape: BeveledRectangleBorder()),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child:
                  Container(child: Image.asset('assets/general/landing.png')))
        ],
      ),
    );
  }
}
