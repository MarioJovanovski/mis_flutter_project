import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dom2/common/custom_shapes/container_circular.dart';
import 'package:flutter_dom2/common/custom_shapes/primary_header_container.dart';
import 'package:flutter_dom2/common/custom_shapes/rounded_container.dart';
import 'package:flutter_dom2/common/custom_shapes/search_container.dart';
import 'package:flutter_dom2/common/layout/gird_layout.dart';
import 'package:flutter_dom2/common/widgets/images/rounded_image.dart';
import 'package:flutter_dom2/common/widgets/products/product_card.dart';
import 'package:flutter_dom2/features/scanner/TQrScanner.dart';

import 'package:flutter_dom2/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_dom2/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';
import 'package:flutter_dom2/utils/constants/image_strings.dart';

import 'package:flutter_dom2/utils/constants/sizes.dart';

import 'package:flutter_dom2/utils/device/device_utility.dart';
import 'package:flutter_dom2/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          TPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const THomeAppBar(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                TSearchContainer(
                  text: "Search in Store",
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TPromoSlider(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                TGridLayout(
                  itemCount: 3,
                  itemBuilder: (_, index) => const TProductCardVertical(),
                ),
              ],
            ),
          ),

          //gmaps tuka
        ]),
      ),
    );
  }
}

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(41.99405659568949,21.430426300975732),
      
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To Coffe Factory!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
