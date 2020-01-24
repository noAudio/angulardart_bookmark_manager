import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import '../model/bookmark.dart';

@Component(
  selector: 'bm-form',
  templateUrl: 'bm_form_component.html',
  directives: [coreDirectives, formDirectives],
)
class BookmarkFormComponent implements OnInit {
  @Input()
  Bookmark bookmark;
  Bookmark editedBookmark;

  @override
  Future<Null> ngOnInit() async {
    editedBookmark = Bookmark(
      title: bookmark.title,
      description: bookmark.description,
      url: bookmark.url,
    );
  }

  updateBookmark() {
    bookmark.title = editedBookmark.title;
    bookmark.description = editedBookmark.description;
    bookmark.url = editedBookmark.url;
    bookmark.edit = false;
  }

  removeBookmark() {}
}
