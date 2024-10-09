import 'package:dio/dio.dart';
import 'package:doc_link_project/core/api/api_keys.dart';
import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:doc_link_project/core/services/services_locator.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.sendTimeout = const Duration(seconds: 30);
    // options.receiveTimeout = const Duration(seconds: 30);
    options.headers[ApiKeys.token] =
        getit<CacheHelper>().getString(ApiKeys.token) == null
            ? null
            : 'Bearer ${getit<CacheHelper>().getString(ApiKeys.token)}';
    super.onRequest(options, handler);
  }
}
