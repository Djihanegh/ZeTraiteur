import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:ze_traiteur/domain/entities/addresses.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';
import 'package:ze_traiteur/domain/entities/menu_item.dart';
import 'package:ze_traiteur/domain/entities/user.dart';
import 'package:http/io_client.dart' as http;
import 'package:ze_traiteur/infrastructure/core/converter.dart';
import 'package:ze_traiteur/infrastructure/core/interceptor.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: 'http://159.65.25.199:8000/apis/')
abstract class ZeTraiteurApiService extends ChopperService {
 

  @Post(path: 'clients/')
  Future<Response<Map<String, dynamic>>> register(
    @body User user,
  );

 @Post(path: 'login/')
  Future<Response<Map<String, dynamic>>> login(
    @body Map<String, dynamic> phone,
  );
  @Get(path: 'menus/')
  Future<Response<Map<String, dynamic>>> getAllMenus(
    @Query('page') int page,
  );
  @Get(path: 'extras/')
  Future<Response<Map<String, dynamic>>> getAllExtras(
    @Query('page') int page,
  );
  /*@Put(path: 'users/password')
  Future<Response<String>> changePassword(
    @Field('old_pwd') String password,
    @Field('new_pwd') String newPassword,
    @Header('Authorization') String headerValue,
  );*/

  static ZeTraiteurApiService create() {
    final client = ChopperClient(
      baseUrl: 'http://159.65.25.199:8000/apis/',
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 30),
      ),

      services: [
        _$ZeTraiteurApiService(),
      ],
      //converter: BuiltValueConverter(),
      //converter: FormUrlEncodedConverter(),
      converter: JsonSerializableConverter({
        User: User.fromJsonFactory,
        Addresses: Addresses.fromJsonFactory,
        CityObj: CityObj.fromJsonFactory,
        MenuItem: MenuItem.fromJsonFactory,
      }),
      //errorConverter: BuiltValueConverter(),
      //converter: FormUrlEncodedConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        Interceptor(),
        (Response response) async {
          if (response.statusCode == 404) {
            chopperLogger.severe('404 NOT FOUND');
          }

          return response;
        },
      ],
    );
    return _$ZeTraiteurApiService(client);
  }
}
