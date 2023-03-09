// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_helper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************



// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= "https://api-development.petleo.de/v1/appointment-management/branches/342/appointments/";
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List> getTasks() async {
    String username = 'fressnapf@byom.de';
    String password = 'p4ssw0rd';
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      "Content-Type": "application/json",
      "Accept": "application/json",
      'Authorization': 'Basic ${base64Encode(utf8.encode('$username:$password'))}',
    };
    final _data = <String, dynamic>{};
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));

    return _result.data!;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
