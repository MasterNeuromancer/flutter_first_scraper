import 'package:flutter_first_scraper/core/DI/IServices.dart';
import 'package:flutter_first_scraper/core/models/scrapeModel.dart';
import 'package:http/http.dart' as http;

const url = "https://www.pcso.gov.ph";

class Services implements IServices {
  @override
  Future<List<ScrapeModel>> getLottoResults() async {
    var doc = await http.get(url);
    print(doc.body.toString());
    return null;
  }
}
