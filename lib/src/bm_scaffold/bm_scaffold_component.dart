import 'package:angular/angular.dart';
import '../model/bookmark.dart';
import '../bm_form/bm_form_component.dart';
import '../servcices/bookmark_service.dart';

@Component(
    selector: 'bm-scaffold',
    templateUrl: 'bm_scaffold_component.html',
    directives: [coreDirectives, BookmarkFormComponent],
    providers: [ClassProvider(BookmarkService)])
class BookmarkScaffoldComponent implements OnInit {
  BookmarkScaffoldComponent(this._bmService);

  final BookmarkService _bmService;
  List bookmarks = [];
  bool isLoading = true;

  Bookmark editedBookmark;

  @override
  Future<Null> ngOnInit() async {
    bookmarks = await _bmService.getBookmarks();
    isLoading = false;
  }

  void addBookmark() {
    bookmarks.add(Bookmark());
  }

  void editBookmark(int index) {
    bookmarks[index].edit = true;
  }

  void removeBookmark(int index) {
    bookmarks.removeAt(index);
  }
}
