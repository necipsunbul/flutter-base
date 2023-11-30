import 'package:dio/dio.dart';

import '../../../core/network/base_service.dart';
import '../../../core/network/model/respone_model_interface.dart';
import '../model/api_data_model.dart';

class TestService extends BaseService {
  TestService() : super();

  getData() async {
    Response response = await get('/');
    var responseBody = response.data;
    IResponse result = buildResponse<ApiDataModel>(
      statusCode: response.statusCode,
      data: ApiDataModel.fromJson(responseBody['data']),
      responseBody: responseBody,
    );
    print(result.data.version);
  }
}
