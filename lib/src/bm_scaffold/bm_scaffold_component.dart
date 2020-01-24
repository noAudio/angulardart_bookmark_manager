import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import '../model/bookmark.dart';

@Component(
  selector: 'bm-scaffold',
  templateUrl: 'bm_scaffold_component.html',
  directives: [coreDirectives, formDirectives],
)
class BookmarkScaffoldComponent {
  final List bookmarks = [
    Bookmark(
      title: 'Creative Bracket',
      description:
          'Go-to Dart blog containing Dart resources for beginners and beyond',
      url: 'https://creativebracket.com',
      edit: false,
    ),
    Bookmark(
      title: 'Dartlang Home',
      description: 'Documentation website for the Dart language and tools',
      url: 'https://dartlang.org',
      edit: false,
    ),
    Bookmark(
      title: 'Flutter',
      description: 'Build native mobile apps with the Flutter SDK',
      url: 'https://flutter.io',
      edit: false,
    ),
  ];

  void removeBookmark(int index) {
    bookmarks.removeAt(index);
  }

  void editBookmark(int index) {
    bookmarks[index].edit = true;
  }
}
