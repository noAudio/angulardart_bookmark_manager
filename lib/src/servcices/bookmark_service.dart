import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:firebase/firebase.dart';
import '../model/bookmark.dart';

@Injectable()
class BookmarkService {
  BookmarkService() {
    initializeApp(
        apiKey: 'AIzaSyBL28alhLofrbqlUsz6CuVj8s9GTWxiQPI',
        authDomain: 'bookmark-manager-7b6fb.firebaseapp.com',
        databaseURL: 'https://bookmark-manager-7b6fb.firebaseio.com',
        projectId: 'bookmark-manager-7b6fb',
        storageBucket: 'bookmark-manager-7b6fb.appspot.com',
        messagingSenderId: '138806092980',
        appId: '1:138806092980:web:4ae735882b17f763b0e3e1',
        measurementId: 'G-6S5R29STL3');

    _db = database();
    _ref = _db.ref('bookmarks');
  }

  Database _db;
  DatabaseReference _ref;

  Future<List<Bookmark>> getBookmarks() async {
    final bookmarks = [];
    final queryEvent = await _ref.once('value');
    final snapshot = queryEvent.snapshot;
    final bmData = snapshot.val();

    bmData.forEach((key, val) {
      var details = val as Map<String, dynamic>;
      bookmarks.add(Bookmark(
        title: details['title'],
        description: details['description'],
        url: details['url'],
        edit: false,
      ));
    });

    return bookmarks;
  }
}
