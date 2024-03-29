class Video {
  final String id;
  final String title;
  final String description;
  final String minThumbnailUrl;
  final String maxThumbnailUrl;
  final String summarizedCaption;
  final List<String> keywords;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool hasCaption;

  Video({
    required this.id,
    required this.title,
    required this.description,
    required this.minThumbnailUrl,
    required this.maxThumbnailUrl,
    required this.summarizedCaption,
    required this.keywords,
    required this.createdAt,
    required this.updatedAt,
    required this.hasCaption,
  });

  factory Video.fromMap(Map<String, dynamic> map) {
    return Video(
      id: map['id'] as String,
      title: map['snippet']['title'] as String,
      description: map['snippet']['description'] as String,
      minThumbnailUrl: map['snippet']['thumbnails']['default']['url'] as String,
      maxThumbnailUrl:
          map['snippet']['thumbnails']['standard']['url'] as String,
      summarizedCaption: map['caption']['summarized'] as String,
      keywords: List<String>.from(map['caption']['keywords']),
      createdAt: map['created_at'].toDate() as DateTime,
      updatedAt: map['updated_at'].toDate() as DateTime,
      hasCaption: map['caption']['summarized'] != null &&
          map['caption']['summarized'] !=
              '【Video information could not be retrieved.】',
    );
  }
}
