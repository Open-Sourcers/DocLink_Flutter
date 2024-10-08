import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.headers[ApiKeys.token] =
    //     CacheHelper().getString(ApiKeys.token) == null
    //         ? null
    //         : 'FOODAPI ${CacheHelper().getString(ApiKeys.token)}';
    super.onRequest(options, handler);
  }
}
