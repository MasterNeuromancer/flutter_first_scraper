import 'package:flutter_first_scraper/services/services.dart';
import 'package:test/test.dart';

void main() {
  group("Services Test", () {
    test("Get Recent Results Test", () async {
      var stuff = Services();
      var result = await stuff.getLottoResults();

      expect(result.length > 0, true);
    });
  });
}
