import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part9/Opacity_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  OpacityController controller=Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {

    print('build');
    return Scaffold(
      appBar: AppBar(title: Text("Part 9"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Obx(() =>   Container(
          height: 200,
          width: 200,
          color: Colors.red.withOpacity(controller.opacity.value),
        ),
        ),

          Obx(() =>
              Slider(value: controller.opacity.value, onChanged: (value)
              {

                controller.opacityChanger(value);


              }
              )
          )


          ],
        ),
      ),

    );
  }
}
