import 'package:graphql/client.dart';

class Result<V> {
  V? value;
  Exception? error;

  Result.success(V this.value) {
    this.error = null;
  }

  Result.error(Exception this.error) {
    this.value = null;
  }

  Result.fromGqlErrors(List<GraphQLError> errors) {
    var err = [];
    if (err.isNotEmpty) {
      for (var error in errors) {
        err.add(error.message);
      }
      this.error = Exception(err.join('\n'));
    } else {
      this.error = Exception('Erro desconhecido');
    }
  }
}