class Helper {
  String _link = "http://learnersgateway.org/api/posts";

  void set setLink(link) {
    this._link = link;
  }

  String get getLink {
    return this._link;
  }
}






/* 
class Helper {
  String _name = "Mg Mg"; ->    _ underscore means private
  String outPut() {
    return _name;
  }
}

Private value only accessiable inside it own class lexical scope

If you want to export private value -> use setter & getter.
if you want to set value use setter & you want to get value use getter.

*/