class Comment {
  int postId, id;
  String name, email, body;

  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Comment.from(dynamic data) {
    return Comment(
      postId: data['postId'],
      id: data['id'],
      name: data['name'],
      email: data['email'],
      body: data['body'],
    );
  }
}
