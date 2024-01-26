import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart'; // Import the dots_indicator package
import 'package:cunstruction_helper/features/shop/screens/home/widgets/slider/controller/get_slidder_images.dart';
import 'package:flutter/material.dart';

import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../model/slidder_model.dart';

class TPromoDotSlider extends StatelessWidget {
  const TPromoDotSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SlidderController slidderController = SlidderController();

    return FutureBuilder<List<SlidderModel>>(
      future: slidderController.fetchSliderImages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text('No data available');
        } else {
          List<SlidderModel> slidderImages = snapshot.data!;

          return Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: slidderImages.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Image.network(
                          image.image,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              // const SizedBox(height: TSizes.spaceBtwItems),
              // DotsIndicator(
              //   // Use DotsIndicator below the CarouselSlider
              //   dotsCount: slidderImages.length,
              //   position: 0, // Set the initial position as needed
              //   decorator: const DotsDecorator(
              //     size: Size.square(9.0),
              //     activeSize: Size(18.0, 9.0),
              //     color: TColors.grey,
              //     activeColor: TColors.appAccentColor,
              //     spacing: EdgeInsets.symmetric(horizontal: 3.0),
              //   ),
              // ),
            ],
          );
        }
      },
    );
  }
}
