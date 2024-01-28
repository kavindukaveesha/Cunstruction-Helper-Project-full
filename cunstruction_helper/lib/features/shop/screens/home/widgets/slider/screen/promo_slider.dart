import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../controller/get_slidder_images.dart';
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
            ],
          );
        }
      },
    );
  }
}
