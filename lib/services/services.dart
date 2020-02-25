import 'package:flutter_first_scraper/core/DI/IServices.dart';
import 'package:flutter_first_scraper/core/models/scrapeModel.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';

const url = "https://flutter.dev/docs/reference/widgets";
const resultId = 'card-title';

class Services implements IServices {
  @override
  Future<List<ScrapeModel>> getLottoResults() async {
    var result = await http.get(url);
    var doc = parse(result.body);
    var element = doc.getElementsByClassName(resultId);
    for (var i = 0; i < element.length; i++) {
      print(element[i].text);
    }
    return null;
  }
}
