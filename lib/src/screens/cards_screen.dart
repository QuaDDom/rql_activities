import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rql_activities/src/widgets/bottom_buttons.dart';
import 'package:rql_activities/src/widgets/card_widget.dart';
import 'package:rql_activities/src/widgets/header_widget.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const MyHeader(
            title: "Actividades"
          ),
          Expanded(
            child: ListView(
              children: [
                MyCardWidget(
                  title: "Mi actividad 1",
                  onTap: (){}
                ),
                const SizedBox(height: 17,),
                MyCardWidget(
                  title: "Mi actividad 2",
                  onTap: (){}
                ),
                const SizedBox(height: 17,),
                MyCardWidget(
                  title: "Mi actividad 3",
                  onTap: (){}
                ),
                const SizedBox(height: 17,),
                MyCardWidget(
                  title: "Mi actividad 4",
                  onTap: (){}
                ),
                const SizedBox(height: 17,),
                MyCardWidget(
                  title: "Mi actividad 5",
                  onTap: (){}
                ),
                const SizedBox(height: 17,),
                MyCardWidget(
                  title: "Mi actividad 6",
                  onTap: (){}
                ),
              ],
            ),
          ),
          BottomButtons(
            leftIcon: const Icon(Icons.first_page, size: 35),
            rightIcon: const Icon(Icons.add, size: 30),
            onLeftButtonPressed: (){},
            onRightButtonPressed: (){},
          )
        ]
      ),
    );
  }
}