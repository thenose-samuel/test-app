import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventTypeButton extends StatelessWidget {
  const EventTypeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.04,
      width: Get.width * 0.2,
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color(0xFF5A7693)
          ),
          borderRadius: BorderRadius.circular(7.0)
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TODO: Replace with asset image
            Icon(Icons.video_call_rounded, color: const Color(0xFF5A7693),),
            Text('Online', style: TextStyle(color: const Color(0xFF5A7693)),)
          ],
        ),
      ),
    );
  }
}
