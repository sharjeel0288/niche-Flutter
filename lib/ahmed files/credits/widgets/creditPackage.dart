import 'package:flutter/material.dart';

class CreditPackage extends StatefulWidget {
  final int credits;
  final double price;
  final List<String> benefits;
  final bool isSelected;

  CreditPackage({
    required this.credits,
    required this.price,
    required this.benefits,
    required this.isSelected,
  });

  @override
  _CreditPackageState createState() => _CreditPackageState();
}

class _CreditPackageState extends State<CreditPackage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // You can add logic here to handle the selection if needed
        // setState(() {
        //   isSelected = !widget.isSelected;
        // });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: widget.isSelected
                  ? Colors.green
                  : Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: widget.isSelected ? Colors.green : Colors.transparent,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$${widget.price}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
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
                            Icons.check,
                            color: Colors.green,
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              benefit,
                              style: TextStyle(
                                fontSize: 12,
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
    );
  }
}
