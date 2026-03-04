class PopularCoursesData {
  final String category;
  final String title;
  final double price;
  final double rating;
  final int students;
  final String image;

  PopularCoursesData({
    required this.category,
    required this.title,
    required this.price,
    required this.rating,
    required this.students,
    required this.image,
  });
}

List<PopularCoursesData> popularCoursesData = [
  PopularCoursesData(
    category: "Graphic Design",
    title: "Graphic Design Advanced",
    price: 2,
    rating: 4.2,
    students: 7830,
    image: "assets/images/course1.png",
  ),
  PopularCoursesData(
    category: "Graphic Design",
    title: "Advertisement Design",
    price: 4,
    rating: 4.2,
    students: 6500,
    image: "assets/images/course2.png",
  ),
  PopularCoursesData(
    category: "Graphic Design",
    title: "Advertisement Design",
    price: 4,
    rating: 4.2,
    students: 6500,
    image: "assets/images/course2.png",
  ),
  PopularCoursesData(
    category: "Graphic Design",
    title: "Advertisement Design",
    price: 4,
    rating: 4.2,
    students: 6500,
    image: "assets/images/course2.png",
  ),
];