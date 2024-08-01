import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  final String title;
  final bool haveInputField;

  const MyHeader({
    super.key,
    required this.title,
    this.haveInputField = false,
  });

  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Container(
      color: backgroundColor,
      child: SizedBox(
        height: 170,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Buscar',
                  prefixIcon: Icon(Icons.search),
                ),
              )
            ]
          )
        )
      ),
    );
  }
}