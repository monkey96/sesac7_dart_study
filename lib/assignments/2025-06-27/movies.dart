// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Movie {
  String? title;
  String? director;
  int? year;

  Movie(this.title, this.director, this.year);

  Movie.fromJson(Map<String, dynamic> json)
    : title = json['title'],
      director = json['director'],
      year = json['year'];

  Map<String, dynamic> toJson() {
    return {'title': title, 'director': director, 'year': year};
  }

  Movie copyWith({String? title, String? director, int? year}) {
    return Movie(
      title ?? this.title,
      director ?? this.director,
      year ?? this.year,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Movie &&
            runtimeType == other.runtimeType &&
            title == other.title &&
            director == other.director &&
            year == other.year;
  }

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;

  @override
  String toString() => 'Movie(title: $title, director: $director, year: $year)';
}

Future<Movie> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));

  // 서버에서 들어오는 데이터라고 상상
  final String jsonString = '''{
    "title": "Star Ward",
    "director": "George Lucas",
    "year": 1977
  }''';
  final movie = Movie.fromJson(jsonDecode(jsonString));

  return movie;
}

void main() async {
  try {
    final Movie data = await getMovieInfo();
    print(data.title);
  } catch (e) {
    print("Failed to load movie data from server : $e");
  }
}
