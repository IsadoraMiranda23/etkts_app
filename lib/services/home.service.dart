import 'dart:developer';

import 'package:etkts_app/graphql/queries.graphql.dart';
import 'package:etkts_app/result.dart';
import 'package:etkts_app/services/graphql.service.dart';

class HomeService {
  static Future<Result<List<Query$MobileGetHome$mobileGetHome>>>
  getHome() async {
    try {
      var response = await GraphQLService.client.query$MobileGetHome(
        Options$Query$MobileGetHome(
          variables: Variables$Query$MobileGetHome(limit: 5),
        ),
      );
      log(response.data.toString());
      if (response.hasException) {
        return Result.fromGqlErrors(response.exception?.graphqlErrors ?? []);
      }
      return Result.success(response.parsedData!.mobileGetHome);
    } catch (e) {
      log(e.toString());
      return Result.error(Exception(e));
    }
  }
}
