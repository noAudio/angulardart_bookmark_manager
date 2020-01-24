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

  Bookmark editedBookmark;

  void addBookmark() {
    var newBookmark = Bookmark();
    bookmarks.add(newBookmark);

    editedBookmark = Bookmark(
      title: newBookmark.title,
      description: newBookmark.description,
      url: newBookmark.url,
    );
  }

  void removeBookmark(int index) {
    bookmarks.removeAt(index);
  }

  void updateBookmark(int index) {
    bookmarks[index].title = editedBookmark.title;
    bookmarks[index].description = editedBookmark.description;
    bookmarks[index].url = editedBookmark.url;

    bookmarks[index].edit = false;
  }

  void editBookmark(int index) {
    editedBookmark = Bookmark(
      title: bookmarks[index].title,
      description: bookmarks[index].description,
      url: bookmarks[index].url,
      edit: bookmarks[index].edit,
    );

    bookmarks[index].edit = true;
  }
}
