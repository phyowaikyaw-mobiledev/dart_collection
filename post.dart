class Post {
  String title, body;
  int userId, id;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.from(dynamic data) {
    return Post(
      userId: data["userId"],
      id: data["id"],
      title: data["title"],
      body: data["body"],
    );
  }
}

// var post = new Post(title: "Tone", body: "Bone", userId: 1, id: 2);
// var post2 = new Post(title: "Ttwo", body: "Btwo", userId: 2, id: 2);
/*
  Method 1 =>

  String? title;
  String? body;
  int? userId;
  int? id;

  Method 2 =>
  
  late String title;
  late String body;
  late int userId;
  late int id;

  */
