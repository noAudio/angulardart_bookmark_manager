class Bookmark {
  Bookmark({
    this.title = '',
    this.description = '',
    this.url = '',
    this.edit = true,
    this.isFresh = true,
  });

  void update(Bookmark bm) {
    title = bm.title;
    description = bm.description;
    url = bm.url;
    edit = bm.edit;
    isFresh = bm.isFresh;
  }

  String title, description, url;
  bool edit, isFresh;
}
