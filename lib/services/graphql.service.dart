import 'package:graphql/client.dart';

import '../env.dart';

import 'package:logging/logging.dart';

class LoggingLink extends Link {
  final Logger logger = Logger('GraphQL-Logger');

  @override
  Stream<Response> request(Request request, [forward]) {
    logger.info('GraphQL Request: ${request.operation.operationName}');
    logger.fine('Query: ${request.operation.document}');
    logger.fine('Variables: ${request.variables}');

    final Stream<Response> responseStream = forward!(request);
    responseStream.listen((response) {
      logger.info('GraphQL Response for ${request.operation.operationName}');
      logger.fine('Response data: ${response.data}');
      if (response.errors != null) {
        logger.warning('Errors: ${response.errors}');
      }
    });

    return responseStream;
  }
}

class GraphQLService {
  static late GraphQLClient client;
  static bool debug = true;

  static void init() {
    final http = HttpLink(Env.baseUrlGraphQl);
    final links = <Link>[http];
    if (debug) {
      links.add(LoggingLink());
    }
    client = GraphQLClient(
      link: Link.from(links),
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.noCache,
          cacheReread: CacheRereadPolicy.ignoreAll,
        ),
        mutate: Policies(
          fetch: FetchPolicy.noCache,
          cacheReread: CacheRereadPolicy.ignoreAll,
        ),
      ),
    );
  }

  static void injectToken(String token) {
    final http = HttpLink(
      '${Env.baseUrlGraphQl}/graphql',
    );
    final links = <Link>[http];
    if (debug) {
      links.add(LoggingLink());
    }
    final auth = AuthLink(getToken: () => "Bearer $token");
    links.add(auth);
    client = GraphQLClient(
      link: Link.from(links),
      cache: GraphQLCache(),
    );
  }
}
