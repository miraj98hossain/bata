import 'package:bata/data_source/entity/bar_data_response.dart';

abstract class RemoteDataSource {
  Future<BarDataResponse> getBarData();
}
