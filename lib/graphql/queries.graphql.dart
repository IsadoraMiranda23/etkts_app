import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$MobileGetHome {
  factory Variables$Query$MobileGetHome({int? limit, int? offset}) =>
      Variables$Query$MobileGetHome._({
        if (limit != null) r'limit': limit,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$MobileGetHome._(this._$data);

  factory Variables$Query$MobileGetHome.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Variables$Query$MobileGetHome._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  int? get offset => (_$data['offset'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MobileGetHome ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$offset = offset;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('offset') ? l$offset : const {},
    ]);
  }
}

class Query$MobileGetHome {
  Query$MobileGetHome({required this.mobileGetHome});

  factory Query$MobileGetHome.fromJson(Map<String, dynamic> json) {
    final l$mobileGetHome = json['mobileGetHome'];
    return Query$MobileGetHome(
      mobileGetHome: (l$mobileGetHome as List<dynamic>)
          .map(
            (e) => Query$MobileGetHome$mobileGetHome.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Query$MobileGetHome$mobileGetHome> mobileGetHome;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobileGetHome = mobileGetHome;
    _resultData['mobileGetHome'] = l$mobileGetHome
        .map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobileGetHome = mobileGetHome;
    return Object.hashAll([Object.hashAll(l$mobileGetHome.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MobileGetHome || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobileGetHome = mobileGetHome;
    final lOther$mobileGetHome = other.mobileGetHome;
    if (l$mobileGetHome.length != lOther$mobileGetHome.length) {
      return false;
    }
    for (int i = 0; i < l$mobileGetHome.length; i++) {
      final l$mobileGetHome$entry = l$mobileGetHome[i];
      final lOther$mobileGetHome$entry = lOther$mobileGetHome[i];
      if (l$mobileGetHome$entry != lOther$mobileGetHome$entry) {
        return false;
      }
    }
    return true;
  }
}

const documentNodeQueryMobileGetHome = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'MobileGetHome'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'offset')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mobileGetHome'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'offset'),
                value: VariableNode(name: NameNode(value: 'offset')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'nome'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'descricao'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'local'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'cep'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'logradouro'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'numero'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'bairro'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'complemento'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'estadoDetalhes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'nome'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sigla'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'cidadeDetalhes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'nome'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'latitude'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'longitude'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'inativo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'imagem'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'horario'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'ingressoDetalhes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'nome'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'inativo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'valor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'limitePorPessoa'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'data'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'loteDetalhes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'nome'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'dataInicio'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'dataFim'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'inativo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'cardapioDetalhes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'nome'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'descricao'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'inativo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'valor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'imagem'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'categoriaCardapioDetalhes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'nome'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);
Query$MobileGetHome _parserFn$Query$MobileGetHome(Map<String, dynamic> data) =>
    Query$MobileGetHome.fromJson(data);
typedef OnQueryComplete$Query$MobileGetHome =
    FutureOr<void> Function(Map<String, dynamic>?, Query$MobileGetHome?);

class Options$Query$MobileGetHome
    extends graphql.QueryOptions<Query$MobileGetHome> {
  Options$Query$MobileGetHome({
    String? operationName,
    Variables$Query$MobileGetHome? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MobileGetHome? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MobileGetHome? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$MobileGetHome(data),
               ),
         onError: onError,
         document: documentNodeQueryMobileGetHome,
         parserFn: _parserFn$Query$MobileGetHome,
       );

  final OnQueryComplete$Query$MobileGetHome? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$MobileGetHome
    extends graphql.WatchQueryOptions<Query$MobileGetHome> {
  WatchOptions$Query$MobileGetHome({
    String? operationName,
    Variables$Query$MobileGetHome? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MobileGetHome? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryMobileGetHome,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$MobileGetHome,
       );
}

class FetchMoreOptions$Query$MobileGetHome extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MobileGetHome({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MobileGetHome? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryMobileGetHome,
       );
}

extension ClientExtension$Query$MobileGetHome on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MobileGetHome>> query$MobileGetHome([
    Options$Query$MobileGetHome? options,
  ]) async => await this.query(options ?? Options$Query$MobileGetHome());

  graphql.ObservableQuery<Query$MobileGetHome> watchQuery$MobileGetHome([
    WatchOptions$Query$MobileGetHome? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$MobileGetHome());

  void writeQuery$MobileGetHome({
    required Query$MobileGetHome data,
    Variables$Query$MobileGetHome? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryMobileGetHome),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$MobileGetHome? readQuery$MobileGetHome({
    Variables$Query$MobileGetHome? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMobileGetHome),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MobileGetHome.fromJson(result);
  }
}

class Query$MobileGetHome$mobileGetHome {
  Query$MobileGetHome$mobileGetHome({
    this.id,
    this.nome,
    this.descricao,
    this.data,
    this.local,
    this.cep,
    this.logradouro,
    this.numero,
    this.bairro,
    this.complemento,
    this.estadoDetalhes,
    this.cidadeDetalhes,
    this.latitude,
    this.longitude,
    this.inativo,
    this.imagem,
    this.horario,
    this.ingressoDetalhes,
    this.cardapioDetalhes,
  });

  factory Query$MobileGetHome$mobileGetHome.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$nome = json['nome'];
    final l$descricao = json['descricao'];
    final l$data = json['data'];
    final l$local = json['local'];
    final l$cep = json['cep'];
    final l$logradouro = json['logradouro'];
    final l$numero = json['numero'];
    final l$bairro = json['bairro'];
    final l$complemento = json['complemento'];
    final l$estadoDetalhes = json['estadoDetalhes'];
    final l$cidadeDetalhes = json['cidadeDetalhes'];
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$inativo = json['inativo'];
    final l$imagem = json['imagem'];
    final l$horario = json['horario'];
    final l$ingressoDetalhes = json['ingressoDetalhes'];
    final l$cardapioDetalhes = json['cardapioDetalhes'];
    return Query$MobileGetHome$mobileGetHome(
      id: (l$id as int?),
      nome: (l$nome as String?),
      descricao: (l$descricao as String?),
      data: (l$data as String?),
      local: (l$local as String?),
      cep: (l$cep as String?),
      logradouro: (l$logradouro as String?),
      numero: (l$numero as String?),
      bairro: (l$bairro as String?),
      complemento: (l$complemento as String?),
      estadoDetalhes: l$estadoDetalhes == null
          ? null
          : Query$MobileGetHome$mobileGetHome$estadoDetalhes.fromJson(
              (l$estadoDetalhes as Map<String, dynamic>),
            ),
      cidadeDetalhes: l$cidadeDetalhes == null
          ? null
          : Query$MobileGetHome$mobileGetHome$cidadeDetalhes.fromJson(
              (l$cidadeDetalhes as Map<String, dynamic>),
            ),
      latitude: (l$latitude as String?),
      longitude: (l$longitude as String?),
      inativo: (l$inativo as int?),
      imagem: (l$imagem as String?),
      horario: (l$horario as String?),
      ingressoDetalhes: (l$ingressoDetalhes as List<dynamic>?)
          ?.map(
            (e) => Query$MobileGetHome$mobileGetHome$ingressoDetalhes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      cardapioDetalhes: (l$cardapioDetalhes as List<dynamic>?)
          ?.map(
            (e) => Query$MobileGetHome$mobileGetHome$cardapioDetalhes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final int? id;

  final String? nome;

  final String? descricao;

  final String? data;

  final String? local;

  final String? cep;

  final String? logradouro;

  final String? numero;

  final String? bairro;

  final String? complemento;

  final Query$MobileGetHome$mobileGetHome$estadoDetalhes? estadoDetalhes;

  final Query$MobileGetHome$mobileGetHome$cidadeDetalhes? cidadeDetalhes;

  final String? latitude;

  final String? longitude;

  final int? inativo;

  final String? imagem;

  final String? horario;

  final List<Query$MobileGetHome$mobileGetHome$ingressoDetalhes>?
  ingressoDetalhes;

  final List<Query$MobileGetHome$mobileGetHome$cardapioDetalhes>?
  cardapioDetalhes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nome = nome;
    _resultData['nome'] = l$nome;
    final l$descricao = descricao;
    _resultData['descricao'] = l$descricao;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$local = local;
    _resultData['local'] = l$local;
    final l$cep = cep;
    _resultData['cep'] = l$cep;
    final l$logradouro = logradouro;
    _resultData['logradouro'] = l$logradouro;
    final l$numero = numero;
    _resultData['numero'] = l$numero;
    final l$bairro = bairro;
    _resultData['bairro'] = l$bairro;
    final l$complemento = complemento;
    _resultData['complemento'] = l$complemento;
    final l$estadoDetalhes = estadoDetalhes;
    _resultData['estadoDetalhes'] = l$estadoDetalhes?.toJson();
    final l$cidadeDetalhes = cidadeDetalhes;
    _resultData['cidadeDetalhes'] = l$cidadeDetalhes?.toJson();
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$inativo = inativo;
    _resultData['inativo'] = l$inativo;
    final l$imagem = imagem;
    _resultData['imagem'] = l$imagem;
    final l$horario = horario;
    _resultData['horario'] = l$horario;
    final l$ingressoDetalhes = ingressoDetalhes;
    _resultData['ingressoDetalhes'] = l$ingressoDetalhes
        ?.map((e) => e.toJson())
        .toList();
    final l$cardapioDetalhes = cardapioDetalhes;
    _resultData['cardapioDetalhes'] = l$cardapioDetalhes
        ?.map((e) => e.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    final l$descricao = descricao;
    final l$data = data;
    final l$local = local;
    final l$cep = cep;
    final l$logradouro = logradouro;
    final l$numero = numero;
    final l$bairro = bairro;
    final l$complemento = complemento;
    final l$estadoDetalhes = estadoDetalhes;
    final l$cidadeDetalhes = cidadeDetalhes;
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$inativo = inativo;
    final l$imagem = imagem;
    final l$horario = horario;
    final l$ingressoDetalhes = ingressoDetalhes;
    final l$cardapioDetalhes = cardapioDetalhes;
    return Object.hashAll([
      l$id,
      l$nome,
      l$descricao,
      l$data,
      l$local,
      l$cep,
      l$logradouro,
      l$numero,
      l$bairro,
      l$complemento,
      l$estadoDetalhes,
      l$cidadeDetalhes,
      l$latitude,
      l$longitude,
      l$inativo,
      l$imagem,
      l$horario,
      l$ingressoDetalhes == null
          ? null
          : Object.hashAll(l$ingressoDetalhes.map((v) => v)),
      l$cardapioDetalhes == null
          ? null
          : Object.hashAll(l$cardapioDetalhes.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MobileGetHome$mobileGetHome ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$local = local;
    final lOther$local = other.local;
    if (l$local != lOther$local) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$estadoDetalhes = estadoDetalhes;
    final lOther$estadoDetalhes = other.estadoDetalhes;
    if (l$estadoDetalhes != lOther$estadoDetalhes) {
      return false;
    }
    final l$cidadeDetalhes = cidadeDetalhes;
    final lOther$cidadeDetalhes = other.cidadeDetalhes;
    if (l$cidadeDetalhes != lOther$cidadeDetalhes) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$horario = horario;
    final lOther$horario = other.horario;
    if (l$horario != lOther$horario) {
      return false;
    }
    final l$ingressoDetalhes = ingressoDetalhes;
    final lOther$ingressoDetalhes = other.ingressoDetalhes;
    if (l$ingressoDetalhes != null && lOther$ingressoDetalhes != null) {
      if (l$ingressoDetalhes.length != lOther$ingressoDetalhes.length) {
        return false;
      }
      for (int i = 0; i < l$ingressoDetalhes.length; i++) {
        final l$ingressoDetalhes$entry = l$ingressoDetalhes[i];
        final lOther$ingressoDetalhes$entry = lOther$ingressoDetalhes[i];
        if (l$ingressoDetalhes$entry != lOther$ingressoDetalhes$entry) {
          return false;
        }
      }
    } else if (l$ingressoDetalhes != lOther$ingressoDetalhes) {
      return false;
    }
    final l$cardapioDetalhes = cardapioDetalhes;
    final lOther$cardapioDetalhes = other.cardapioDetalhes;
    if (l$cardapioDetalhes != null && lOther$cardapioDetalhes != null) {
      if (l$cardapioDetalhes.length != lOther$cardapioDetalhes.length) {
        return false;
      }
      for (int i = 0; i < l$cardapioDetalhes.length; i++) {
        final l$cardapioDetalhes$entry = l$cardapioDetalhes[i];
        final lOther$cardapioDetalhes$entry = lOther$cardapioDetalhes[i];
        if (l$cardapioDetalhes$entry != lOther$cardapioDetalhes$entry) {
          return false;
        }
      }
    } else if (l$cardapioDetalhes != lOther$cardapioDetalhes) {
      return false;
    }
    return true;
  }
}

class Query$MobileGetHome$mobileGetHome$estadoDetalhes {
  Query$MobileGetHome$mobileGetHome$estadoDetalhes({this.nome, this.sigla});

  factory Query$MobileGetHome$mobileGetHome$estadoDetalhes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nome = json['nome'];
    final l$sigla = json['sigla'];
    return Query$MobileGetHome$mobileGetHome$estadoDetalhes(
      nome: (l$nome as String?),
      sigla: (l$sigla as String?),
    );
  }

  final String? nome;

  final String? sigla;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nome = nome;
    _resultData['nome'] = l$nome;
    final l$sigla = sigla;
    _resultData['sigla'] = l$sigla;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nome = nome;
    final l$sigla = sigla;
    return Object.hashAll([l$nome, l$sigla]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MobileGetHome$mobileGetHome$estadoDetalhes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$sigla = sigla;
    final lOther$sigla = other.sigla;
    if (l$sigla != lOther$sigla) {
      return false;
    }
    return true;
  }
}

class Query$MobileGetHome$mobileGetHome$cidadeDetalhes {
  Query$MobileGetHome$mobileGetHome$cidadeDetalhes({this.nome});

  factory Query$MobileGetHome$mobileGetHome$cidadeDetalhes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nome = json['nome'];
    return Query$MobileGetHome$mobileGetHome$cidadeDetalhes(
      nome: (l$nome as String?),
    );
  }

  final String? nome;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nome = nome;
    _resultData['nome'] = l$nome;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nome = nome;
    return Object.hashAll([l$nome]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MobileGetHome$mobileGetHome$cidadeDetalhes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }
}

class Query$MobileGetHome$mobileGetHome$ingressoDetalhes {
  Query$MobileGetHome$mobileGetHome$ingressoDetalhes({
    required this.id,
    this.nome,
    this.inativo,
    this.valor,
    this.limitePorPessoa,
    this.data,
    this.loteDetalhes,
  });

  factory Query$MobileGetHome$mobileGetHome$ingressoDetalhes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$nome = json['nome'];
    final l$inativo = json['inativo'];
    final l$valor = json['valor'];
    final l$limitePorPessoa = json['limitePorPessoa'];
    final l$data = json['data'];
    final l$loteDetalhes = json['loteDetalhes'];
    return Query$MobileGetHome$mobileGetHome$ingressoDetalhes(
      id: (l$id as num).toDouble(),
      nome: (l$nome as String?),
      inativo: (l$inativo as num?)?.toDouble(),
      valor: (l$valor as num?)?.toDouble(),
      limitePorPessoa: (l$limitePorPessoa as num?)?.toDouble(),
      data: (l$data as String?),
      loteDetalhes: l$loteDetalhes == null
          ? null
          : Query$MobileGetHome$mobileGetHome$ingressoDetalhes$loteDetalhes.fromJson(
              (l$loteDetalhes as Map<String, dynamic>),
            ),
    );
  }

  final double id;

  final String? nome;

  final double? inativo;

  final double? valor;

  final double? limitePorPessoa;

  final String? data;

  final Query$MobileGetHome$mobileGetHome$ingressoDetalhes$loteDetalhes?
  loteDetalhes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nome = nome;
    _resultData['nome'] = l$nome;
    final l$inativo = inativo;
    _resultData['inativo'] = l$inativo;
    final l$valor = valor;
    _resultData['valor'] = l$valor;
    final l$limitePorPessoa = limitePorPessoa;
    _resultData['limitePorPessoa'] = l$limitePorPessoa;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$loteDetalhes = loteDetalhes;
    _resultData['loteDetalhes'] = l$loteDetalhes?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    final l$inativo = inativo;
    final l$valor = valor;
    final l$limitePorPessoa = limitePorPessoa;
    final l$data = data;
    final l$loteDetalhes = loteDetalhes;
    return Object.hashAll([
      l$id,
      l$nome,
      l$inativo,
      l$valor,
      l$limitePorPessoa,
      l$data,
      l$loteDetalhes,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MobileGetHome$mobileGetHome$ingressoDetalhes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    final l$limitePorPessoa = limitePorPessoa;
    final lOther$limitePorPessoa = other.limitePorPessoa;
    if (l$limitePorPessoa != lOther$limitePorPessoa) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$loteDetalhes = loteDetalhes;
    final lOther$loteDetalhes = other.loteDetalhes;
    if (l$loteDetalhes != lOther$loteDetalhes) {
      return false;
    }
    return true;
  }
}

class Query$MobileGetHome$mobileGetHome$ingressoDetalhes$loteDetalhes {
  Query$MobileGetHome$mobileGetHome$ingressoDetalhes$loteDetalhes({
    this.id,
    this.nome,
    this.dataInicio,
    this.dataFim,
    this.inativo,
  });

  factory Query$MobileGetHome$mobileGetHome$ingressoDetalhes$loteDetalhes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$nome = json['nome'];
    final l$dataInicio = json['dataInicio'];
    final l$dataFim = json['dataFim'];
    final l$inativo = json['inativo'];
    return Query$MobileGetHome$mobileGetHome$ingressoDetalhes$loteDetalhes(
      id: (l$id as int?),
      nome: (l$nome as String?),
      dataInicio: (l$dataInicio as String?),
      dataFim: (l$dataFim as String?),
      inativo: (l$inativo as int?),
    );
  }

  final int? id;

  final String? nome;

  final String? dataInicio;

  final String? dataFim;

  final int? inativo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nome = nome;
    _resultData['nome'] = l$nome;
    final l$dataInicio = dataInicio;
    _resultData['dataInicio'] = l$dataInicio;
    final l$dataFim = dataFim;
    _resultData['dataFim'] = l$dataFim;
    final l$inativo = inativo;
    _resultData['inativo'] = l$inativo;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    final l$dataInicio = dataInicio;
    final l$dataFim = dataFim;
    final l$inativo = inativo;
    return Object.hashAll([l$id, l$nome, l$dataInicio, l$dataFim, l$inativo]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$MobileGetHome$mobileGetHome$ingressoDetalhes$loteDetalhes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$dataInicio = dataInicio;
    final lOther$dataInicio = other.dataInicio;
    if (l$dataInicio != lOther$dataInicio) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (l$inativo != lOther$inativo) {
      return false;
    }
    return true;
  }
}

class Query$MobileGetHome$mobileGetHome$cardapioDetalhes {
  Query$MobileGetHome$mobileGetHome$cardapioDetalhes({
    required this.id,
    this.nome,
    this.descricao,
    this.inativo,
    this.valor,
    this.imagem,
    this.categoriaCardapioDetalhes,
  });

  factory Query$MobileGetHome$mobileGetHome$cardapioDetalhes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$nome = json['nome'];
    final l$descricao = json['descricao'];
    final l$inativo = json['inativo'];
    final l$valor = json['valor'];
    final l$imagem = json['imagem'];
    final l$categoriaCardapioDetalhes = json['categoriaCardapioDetalhes'];
    return Query$MobileGetHome$mobileGetHome$cardapioDetalhes(
      id: (l$id as num).toDouble(),
      nome: (l$nome as String?),
      descricao: (l$descricao as String?),
      inativo: (l$inativo as int?),
      valor: (l$valor as num?)?.toDouble(),
      imagem: (l$imagem as String?),
      categoriaCardapioDetalhes: l$categoriaCardapioDetalhes == null
          ? null
          : Query$MobileGetHome$mobileGetHome$cardapioDetalhes$categoriaCardapioDetalhes.fromJson(
              (l$categoriaCardapioDetalhes as Map<String, dynamic>),
            ),
    );
  }

  final double id;

  final String? nome;

  final String? descricao;

  final int? inativo;

  final double? valor;

  final String? imagem;

  final Query$MobileGetHome$mobileGetHome$cardapioDetalhes$categoriaCardapioDetalhes?
  categoriaCardapioDetalhes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nome = nome;
    _resultData['nome'] = l$nome;
    final l$descricao = descricao;
    _resultData['descricao'] = l$descricao;
    final l$inativo = inativo;
    _resultData['inativo'] = l$inativo;
    final l$valor = valor;
    _resultData['valor'] = l$valor;
    final l$imagem = imagem;
    _resultData['imagem'] = l$imagem;
    final l$categoriaCardapioDetalhes = categoriaCardapioDetalhes;
    _resultData['categoriaCardapioDetalhes'] = l$categoriaCardapioDetalhes
        ?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    final l$descricao = descricao;
    final l$inativo = inativo;
    final l$valor = valor;
    final l$imagem = imagem;
    final l$categoriaCardapioDetalhes = categoriaCardapioDetalhes;
    return Object.hashAll([
      l$id,
      l$nome,
      l$descricao,
      l$inativo,
      l$valor,
      l$imagem,
      l$categoriaCardapioDetalhes,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MobileGetHome$mobileGetHome$cardapioDetalhes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$categoriaCardapioDetalhes = categoriaCardapioDetalhes;
    final lOther$categoriaCardapioDetalhes = other.categoriaCardapioDetalhes;
    if (l$categoriaCardapioDetalhes != lOther$categoriaCardapioDetalhes) {
      return false;
    }
    return true;
  }
}

class Query$MobileGetHome$mobileGetHome$cardapioDetalhes$categoriaCardapioDetalhes {
  Query$MobileGetHome$mobileGetHome$cardapioDetalhes$categoriaCardapioDetalhes({
    required this.id,
    this.nome,
  });

  factory Query$MobileGetHome$mobileGetHome$cardapioDetalhes$categoriaCardapioDetalhes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$nome = json['nome'];
    return Query$MobileGetHome$mobileGetHome$cardapioDetalhes$categoriaCardapioDetalhes(
      id: (l$id as int),
      nome: (l$nome as String?),
    );
  }

  final int id;

  final String? nome;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nome = nome;
    _resultData['nome'] = l$nome;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    return Object.hashAll([l$id, l$nome]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$MobileGetHome$mobileGetHome$cardapioDetalhes$categoriaCardapioDetalhes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }
}
