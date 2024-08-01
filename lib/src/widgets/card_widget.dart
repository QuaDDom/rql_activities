import 'package:flutter/material.dart';
import 'package:rql_activities/src/widgets/percentage_widget.dart';

class MyCardWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final VoidCallback? onEdit;
  final Widget trailingWidget;


  const MyCardWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.onEdit,
    this.trailingWidget = const PercentageWidget(),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        width: 350,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  trailingWidget,
                  IconButton(
                    onPressed: onEdit,
                    icon: const Icon(Icons.edit),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
