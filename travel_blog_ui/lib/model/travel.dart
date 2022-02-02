class Travel {
  String? name, location, imageUrl;

  Travel({this.name, this.location, this.imageUrl});

  static List<Travel> generateTravelBlog(){
    return [
      Travel(name: 'Place 1', location: "Place 1", imageUrl: 'assets/images/top1.jpg'),
      Travel(name: 'Place 2', location: "Place 2", imageUrl: 'assets/images/top2.jpg'),
      Travel(name: 'Place 3', location: "Place 3", imageUrl: 'assets/images/top3.jpg'),
      Travel(name: 'Place 4', location: "Place 4", imageUrl: 'assets/images/top4.jpg'),
    ];
  }

  static List<Travel> generateMostPopularBlog(){
    return [
      Travel(name: 'Place 5', location: "Place 5", imageUrl: 'assets/images/bottom1.jpg'),
      Travel(name: 'Place 6', location: "Place 6", imageUrl: 'assets/images/bottom2.jpg'),
      Travel(name: 'Place 7', location: "Place 7", imageUrl: 'assets/images/bottom3.jpg'),
      Travel(name: 'Place 8', location: "Place 8", imageUrl: 'assets/images/bottom4.jpg'),
    ];
  }
}