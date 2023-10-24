import 'package:flutter/material.dart';

class ImageOnTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Simulated table
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            // Image with perspective effect
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001) // Apply perspective effect
                ..rotateX(-0.8), // Adjust the rotation angle
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://medlineplus.gov/images/Medicines_share.jpg', // Replace with your image URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
