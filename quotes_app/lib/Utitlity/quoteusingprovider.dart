import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quotes_app/API%20utility/apilistcall.dart';

class QuoteList with ChangeNotifier {
  dynamic response;
  getquotelistprovider(String value, int apitype) async {
    if (apitype == 0) {
      var data = await getquotelist(value, apitype);

      if (response == null) {
        getquotelistprovider(value, apitype);
      }
      response = jsonDecode(data.body);
      notifyListeners();
    }
    if (apitype == 1) {
      var data = await getquotelist(value, apitype);
      if (response == null) {
        getquotelistprovider(value, apitype);
      }
      response = jsonDecode(data.body);
      notifyListeners();
    }
    if (apitype == 2) {
      var data = await getquotelist(value, apitype);
      if (response == null) {
        getquotelistprovider(value, apitype);
      }
      response = jsonDecode(data.body);
      notifyListeners();
    }
  }
}
