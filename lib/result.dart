import 'package:graphql/client.dart';

class Result<V> {
  V? value;
  Exception? error;

  Result.success(V this.value) {
    error = null;
  }

  Result.error(Exception this.error) {
    value = null;
  }

  Result.fromGqlErrors(List<GraphQLError> errors) {
    var err = [];
    if (err.isNotEmpty) {
      for (var error in errors) {
        err.add(error.message);
      }
      error = Exception(err.join('\n'));
    } else {
      error = Exception('Erro desconhecido');
    }
  }
}