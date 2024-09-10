class MovieModal {
  int id;
  String name;
  String duration;
  String picture;
  bool fav;
  double rate;
  String plotSummary;

  MovieModal(
      {required this.id,
      required this.name,
      required this.duration,
      required this.fav,
      required this.picture,
      required this.plotSummary,
      required this.rate});
}
