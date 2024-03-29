


class MovieFakeModel{
  final int id;
  final String poster;
  String? movieName;

  MovieFakeModel({
    required this.id,
    this.movieName,
    required this.poster,
  });
}


class Movie {
  Movie({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
  late final int page;
  late final List<Results> results;
  late final int totalPages;
  late final int totalResults;

  Movie.fromJson(Map<String, dynamic> json){
    page = json['page'];
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    data['results'] = results.map((e)=>e.toJson()).toList();
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}

class Results {
  Results({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });
  late final String backdropPath;
  late final List<int> genreIds;
  late final int id;
  late final String originalLanguage;
  late final String overview;
  late final double popularity;
  late final String posterPath;
  late final String releaseDate;
  late final String title;
  late final double? voteAverage;
  late final int voteCount;

  Results.fromJson(Map<String, dynamic> json){

    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    originalLanguage = json['original_language'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['backdrop_path'] = backdropPath;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['original_language'] = originalLanguage;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['title'] = title;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }
}