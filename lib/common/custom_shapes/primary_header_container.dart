import 'package:flutter/material.dart';
import 'package:flutter_dom2/common/custom_shapes/container_circular.dart';
import 'package:flutter_dom2/common/widgets/curved_edges_widget.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: 300,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
