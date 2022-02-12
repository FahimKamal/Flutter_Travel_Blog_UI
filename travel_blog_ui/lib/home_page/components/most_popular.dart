import 'package:flutter/material.dart';
import '/detail_page/detail_page.dart';
import '/model/travel.dart';

class MostPopular extends StatelessWidget {
  MostPopular({Key? key}) : super(key: key);

  final _list = Travel.generateMostPopularBlog();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      scrollDirection: Axis.horizontal,
      itemCount: _list.length,
      itemBuilder: (BuildContext context, int index) {
        var travel = _list[index];
        return GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        DetailsPage(travel: travel)));
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.imageUrl!,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.location!,
                        style: const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.name!,
                        style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 15);
      },
    );
  }
}
