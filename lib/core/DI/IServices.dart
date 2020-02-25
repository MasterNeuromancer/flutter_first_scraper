//Handles data scraping from website
import 'package:flutter_first_scraper/core/models/scrapeModel.dart';

abstract class IServices {
  Future<List<ScrapeModel>> getLottoResults();
}
