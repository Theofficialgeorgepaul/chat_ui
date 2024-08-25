import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: const AssetImage('assets/images/IMG_5922.JPG'),
            radius: MediaQuery.of(context).size.width * 0.07,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parenting Challenge',
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
                Text(
                  'Giulio W. typing...',
                  style: TextStyle(
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.width * 0.03),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.03)),
            child: Center(
              child: Text(
                '3',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
