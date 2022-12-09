import 'package:http/http.dart' as http;

getquotelist(String value, int apitype) async {
  try {
    if (apitype == 0) {
      var lifeeventapi =
          Uri.parse('https://api.quotable.io/search/quotes?query=$value');
      return await http.get(lifeeventapi);
      // var authorapi =
      //     Uri.parse('https://api.quotable.io/search/authors?query=$value');
      // return await http.get(authorapi);
    } else if (apitype == 1) {
      var lifeeventapi =
          Uri.parse('https://api.quotable.io/search/quotes?query=$value');
      return await http.get(lifeeventapi);
    } else if (apitype == 2) {
      var keywordandlimit = Uri.parse(
          'https://api.quotable.io/search/quotes?query=$value&limit=10');
      return await http.get(keywordandlimit);
    }
  } catch (e) {
    return e;
  }
}
