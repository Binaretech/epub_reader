import 'package:equatable/equatable.dart';

class Ebook extends Equatable {
  const Ebook({this.title, this.path, this.author, this.cover});

  final String title;
  final String path;
  final String author;
  final String cover;

  Ebook.fromMap(Map<String, dynamic> rawBook)
      : this.title = rawBook['title'],
        this.path = rawBook['path'],
        this.author = rawBook['author'],
        this.cover = rawBook['cover'];

  @override
  List<Object> get props => [title, path, author, cover];

  Map toJson() => {
        'title': title,
        'path': path,
        'author': author,
        'cover': cover,
      };
}
