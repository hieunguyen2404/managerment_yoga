import 'package:flutter/material.dart';

class View4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(38.5),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 33,
                color: const Color(0xFFD3D3D3).withOpacity(.84),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dropping into the Present Moment",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "14 min",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Icon(Icons.queue_music, size: 15),
                          SizedBox(width: 60),
                          Icon(Icons.skip_previous, size: 20),
                          SizedBox(width: 10),
                          Icon(Icons.pause_circle_outline, size: 20),
                          SizedBox(width: 10),
                          Icon(Icons.skip_next, size: 20),
                        ],
                      ),
                      Text(
                        "Next: Body Scan",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("images/mm6.jpg", width: 55),
            ],
          ),
        ),
        SizedBox(height: 40),
        // Add more widgets below if needed
      ],
    );
  }
}
