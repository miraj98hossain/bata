import 'dart:convert';

import 'package:bata/core/exceptions.dart';
import 'package:bata/data_source/entity/bar_data_response.dart';
import 'package:bata/data_source/remote_data_source/remote_data_source.dart';
import 'package:http/http.dart' as http;

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<BarDataResponse> getBarData() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST',
        Uri.parse('https://retail.batait.com/EshopApi/retailDashboardGraph'));
    request.body = json.encode({"user_id": "admin", "password": "123456"});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    if (response.statusCode != 200) {
      throw const ApiDataException("Something went wrong!");
    }
    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return BarDataResponse.fromJson(
          '{"items": [{"x": 1,"y": 5000},{"x": 2,"y": 5500},{"x": 3,"y": 6000}]}');
    }
    return BarDataResponse();
  }
}
