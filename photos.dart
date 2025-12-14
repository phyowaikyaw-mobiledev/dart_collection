class Photos {
  int albumId, id;
  String title, url, thumbnailUrl;

  Photos({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photos.from(data) {
    return Photos(
      albumId: data["albumId"],
      id: data["id"],
      title: data["title"],
      url: data["url"],
      thumbnailUrl: data["thumbnailUrl"],
    );
  }
}
