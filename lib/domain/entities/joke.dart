class Joke {
  Joke({
    required this.id,
    required this.url,
    this.iconUrl = 'assets/joke_logo.png',
    required this.createdAt,
    required this.description,
    this.isFavorite = false,
  });

  final String id;
  final String url;
  final String iconUrl;
  final String description;
  final DateTime createdAt;
  bool isFavorite;
}
