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
    editedBookmark = Bookmark()..update(bookmark);
  }

  updateBookmark() {
    bookmark
      ..update(editedBookmark)
      ..edit = false;
  }

  removeBookmark() {}
}
