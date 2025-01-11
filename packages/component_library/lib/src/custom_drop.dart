import 'drop_down_helper.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => CustomDropDownState();
}

class CustomDropDownState extends State<CustomDropDown> {
  final OverlayPortalController _tooltipController = OverlayPortalController();

  final _link = LayerLink();

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _link,
      child: OverlayPortal(
        controller: _tooltipController,
        overlayChildBuilder: (BuildContext context) {
          return CompositedTransformFollower(
            link: _link,
            targetAnchor: Alignment.bottomLeft,
            child: const Align(
              alignment: AlignmentDirectional.topStart,
              child: MenuWidget(),
            ),
          );
        },
        child: ButtonWidget(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.person_3_outlined),
                      SizedBox(width: 5),
                      Text('Choose Gender'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_circle_down_outlined),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }

  void onTap() {
    _tooltipController.toggle();
  }
}
