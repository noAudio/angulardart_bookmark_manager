class Bookmark {
  Bookmark({
    this.title = '',
    this.description = '',
    this.url = '',
    this.edit = true,
  });

  void update(Bookmark bm) {
    title = bm.title;
    description = bm.description;
    url = bm.url;
    edit = bm.edit;
  }

  String title, description, url;
  bool edit;
}
