import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            "Deal of the day",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Image.network(
          'https://img.freepik.com/free-vector/realistic-phones-different-views_52683-28436.jpg?w=1380&t=st=1697630803~exp=1697631403~hmac=8865213912f6993d26a8b79b26df41c9097c15abeb4b1d470be1b70f44e7669a',
          fit: BoxFit.fitHeight,
          height: 235,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 14, top: 5, right: 40),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$895',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            "Galaxy Tab A9+",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 20,
              ),
              ClipOval(
                child: Image.network(
                    "https://img.freepik.com/free-vector/realistic-blue-smartphone-front-back_52683-30261.jpg?w=740&t=st=1697631568~exp=1697632168~hmac=37623c89600464bec0813f88b96b4e2bd715a8f10f5a1f1e483d2b07b6caac0c",
                    fit: BoxFit.fitWidth,
                    width: 100,
                    height: 100),
              ),
              const SizedBox(
                width: 20,
              ),
              ClipOval(
                child: Image.network(
                    "https://img.freepik.com/free-vector/realistic-blue-smartphone-front-back_52683-30261.jpg?w=740&t=st=1697631568~exp=1697632168~hmac=37623c89600464bec0813f88b96b4e2bd715a8f10f5a1f1e483d2b07b6caac0c",
                    fit: BoxFit.fitWidth,
                    width: 100,
                    height: 100),
              ),
              const SizedBox(
                width: 20,
              ),
              ClipOval(
                child: Image.network(
                    "https://img.freepik.com/free-vector/realistic-blue-smartphone-front-back_52683-30261.jpg?w=740&t=st=1697631568~exp=1697632168~hmac=37623c89600464bec0813f88b96b4e2bd715a8f10f5a1f1e483d2b07b6caac0c",
                    fit: BoxFit.fitWidth,
                    width: 100,
                    height: 100),
              ),
              const SizedBox(
                width: 20,
              ),
              ClipOval(
                child: Image.network(
                    "https://img.freepik.com/free-vector/realistic-blue-smartphone-front-back_52683-30261.jpg?w=740&t=st=1697631568~exp=1697632168~hmac=37623c89600464bec0813f88b96b4e2bd715a8f10f5a1f1e483d2b07b6caac0c",
                    fit: BoxFit.fitWidth,
                    width: 100,
                    height: 100),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(color: Colors.cyan[800]),
          ),
        )
      ],
    );
  }
}
