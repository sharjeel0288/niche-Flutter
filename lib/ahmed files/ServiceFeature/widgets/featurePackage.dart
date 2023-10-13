import 'package:flutter/material.dart';

class FeaturePackage extends StatefulWidget {
  final int credits;
  final List<String> benefits;
  final bool isSelected;

  FeaturePackage({
    required this.credits,
    required this.benefits,
    required this.isSelected,
  });

  @override
  _FeaturePackageState createState() => _FeaturePackageState();
}

class _FeaturePackageState extends State<FeaturePackage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // You can add logic here to handle the selection if needed
        // setState(() {
        //   isSelected = !widget.isSelected;
        // });
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: widget.isSelected ? Colors.green : Colors.transparent,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '${widget.credits} Credits',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.benefits
                    .map(
                      (benefit) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                benefit,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
