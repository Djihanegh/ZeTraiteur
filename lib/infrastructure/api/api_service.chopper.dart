// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ZeTraiteurApiService extends ZeTraiteurApiService {
  _$ZeTraiteurApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ZeTraiteurApiService;

  @override
  Future<Response<Map<String, dynamic>>> register(Map<String, dynamic> user) {
    final $url = 'http://159.65.25.199:8000/apis/clients/';
    final $body = user;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> login(Map<String, dynamic> phone) {
    final $url = 'http://159.65.25.199:8000/apis/login/';
    final $body = phone;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> createOrder(
      Map<String, dynamic> body) {
    final $url = 'http://159.65.25.199:8000/apis/orders/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> getAllMenus(int page) {
    final $url = 'http://159.65.25.199:8000/apis/menus/';
    final $params = <String, dynamic>{'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> getAllExtras(int page) {
    final $url = 'http://159.65.25.199:8000/apis/extras/';
    final $params = <String, dynamic>{'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> getAllFoods(int page, int section) {
    final $url = 'http://159.65.25.199:8000/apis/foods/';
    final $params = <String, dynamic>{'page': page, 'section': section};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> getCities(int page) {
    final $url = 'http://159.65.25.199:8000/apis/cities/';
    final $params = <String, dynamic>{'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
