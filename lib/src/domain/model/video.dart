class Video {
  final String id;
  final String title;
  final String minThumbnailUrl;
  final String maxThumbnailUrl;
  final String summarizedCaption;
  final List<String> keywords;
  final DateTime createdAt;
  final DateTime updatedAt;

  Video({
    required this.id,
    required this.title,
    required this.minThumbnailUrl,
    required this.maxThumbnailUrl,
    required this.summarizedCaption,
    required this.keywords,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Video.fromMap(Map<String, dynamic> map) {
    return Video(
      id: map['id'],
      title: map['snippet']['title'],
      minThumbnailUrl: map['snippet']['thumbnails']['default']['url'],
      maxThumbnailUrl: map['snippet']['thumbnails']['standard']['url'],
      summarizedCaption: map['caption']['summarized'],
      keywords: map['caption']['keywords'].cast<String>(),
      createdAt: map['created_at'].toDate(),
      updatedAt: map['updated_at'].toDate(),
    );
  }
}
