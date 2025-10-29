class Input$AddEquipeEventoInput {
  factory Input$AddEquipeEventoInput({
    required String email,
    required int evento,
    required String nome,
    required String senha,
    required int tipo,
  }) => Input$AddEquipeEventoInput._({
    r'email': email,
    r'evento': evento,
    r'nome': nome,
    r'senha': senha,
    r'tipo': tipo,
  });

  Input$AddEquipeEventoInput._(this._$data);

  factory Input$AddEquipeEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$senha = data['senha'];
    result$data['senha'] = (l$senha as String);
    final l$tipo = data['tipo'];
    result$data['tipo'] = (l$tipo as int);
    return Input$AddEquipeEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  int get evento => (_$data['evento'] as int);

  String get nome => (_$data['nome'] as String);

  String get senha => (_$data['senha'] as String);

  int get tipo => (_$data['tipo'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$senha = senha;
    result$data['senha'] = l$senha;
    final l$tipo = tipo;
    result$data['tipo'] = l$tipo;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AddEquipeEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$senha = senha;
    final lOther$senha = other.senha;
    if (l$senha != lOther$senha) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$evento = evento;
    final l$nome = nome;
    final l$senha = senha;
    final l$tipo = tipo;
    return Object.hashAll([l$email, l$evento, l$nome, l$senha, l$tipo]);
  }
}

class Input$BuscaPessoaInput {
  factory Input$BuscaPessoaInput({
    String? backgroundImage,
    String? cidade,
    String? descricao,
    bool? estaSeguindo,
    String? estado,
    int? eventosEmComum,
    String? foto,
    String? id,
    String? nickname,
    String? pesNome,
  }) => Input$BuscaPessoaInput._({
    if (backgroundImage != null) r'backgroundImage': backgroundImage,
    if (cidade != null) r'cidade': cidade,
    if (descricao != null) r'descricao': descricao,
    if (estaSeguindo != null) r'estaSeguindo': estaSeguindo,
    if (estado != null) r'estado': estado,
    if (eventosEmComum != null) r'eventosEmComum': eventosEmComum,
    if (foto != null) r'foto': foto,
    if (id != null) r'id': id,
    if (nickname != null) r'nickname': nickname,
    if (pesNome != null) r'pesNome': pesNome,
  });

  Input$BuscaPessoaInput._(this._$data);

  factory Input$BuscaPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('backgroundImage')) {
      final l$backgroundImage = data['backgroundImage'];
      result$data['backgroundImage'] = (l$backgroundImage as String?);
    }
    if (data.containsKey('cidade')) {
      final l$cidade = data['cidade'];
      result$data['cidade'] = (l$cidade as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('estaSeguindo')) {
      final l$estaSeguindo = data['estaSeguindo'];
      result$data['estaSeguindo'] = (l$estaSeguindo as bool?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as String?);
    }
    if (data.containsKey('eventosEmComum')) {
      final l$eventosEmComum = data['eventosEmComum'];
      result$data['eventosEmComum'] = (l$eventosEmComum as int?);
    }
    if (data.containsKey('foto')) {
      final l$foto = data['foto'];
      result$data['foto'] = (l$foto as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('nickname')) {
      final l$nickname = data['nickname'];
      result$data['nickname'] = (l$nickname as String?);
    }
    if (data.containsKey('pesNome')) {
      final l$pesNome = data['pesNome'];
      result$data['pesNome'] = (l$pesNome as String?);
    }
    return Input$BuscaPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get backgroundImage => (_$data['backgroundImage'] as String?);

  String? get cidade => (_$data['cidade'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  bool? get estaSeguindo => (_$data['estaSeguindo'] as bool?);

  String? get estado => (_$data['estado'] as String?);

  int? get eventosEmComum => (_$data['eventosEmComum'] as int?);

  String? get foto => (_$data['foto'] as String?);

  String? get id => (_$data['id'] as String?);

  String? get nickname => (_$data['nickname'] as String?);

  String? get pesNome => (_$data['pesNome'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('backgroundImage')) {
      final l$backgroundImage = backgroundImage;
      result$data['backgroundImage'] = l$backgroundImage;
    }
    if (_$data.containsKey('cidade')) {
      final l$cidade = cidade;
      result$data['cidade'] = l$cidade;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('estaSeguindo')) {
      final l$estaSeguindo = estaSeguindo;
      result$data['estaSeguindo'] = l$estaSeguindo;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('eventosEmComum')) {
      final l$eventosEmComum = eventosEmComum;
      result$data['eventosEmComum'] = l$eventosEmComum;
    }
    if (_$data.containsKey('foto')) {
      final l$foto = foto;
      result$data['foto'] = l$foto;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('nickname')) {
      final l$nickname = nickname;
      result$data['nickname'] = l$nickname;
    }
    if (_$data.containsKey('pesNome')) {
      final l$pesNome = pesNome;
      result$data['pesNome'] = l$pesNome;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BuscaPessoaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$backgroundImage = backgroundImage;
    final lOther$backgroundImage = other.backgroundImage;
    if (_$data.containsKey('backgroundImage') !=
        other._$data.containsKey('backgroundImage')) {
      return false;
    }
    if (l$backgroundImage != lOther$backgroundImage) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (_$data.containsKey('cidade') != other._$data.containsKey('cidade')) {
      return false;
    }
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$estaSeguindo = estaSeguindo;
    final lOther$estaSeguindo = other.estaSeguindo;
    if (_$data.containsKey('estaSeguindo') !=
        other._$data.containsKey('estaSeguindo')) {
      return false;
    }
    if (l$estaSeguindo != lOther$estaSeguindo) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$eventosEmComum = eventosEmComum;
    final lOther$eventosEmComum = other.eventosEmComum;
    if (_$data.containsKey('eventosEmComum') !=
        other._$data.containsKey('eventosEmComum')) {
      return false;
    }
    if (l$eventosEmComum != lOther$eventosEmComum) {
      return false;
    }
    final l$foto = foto;
    final lOther$foto = other.foto;
    if (_$data.containsKey('foto') != other._$data.containsKey('foto')) {
      return false;
    }
    if (l$foto != lOther$foto) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (_$data.containsKey('nickname') !=
        other._$data.containsKey('nickname')) {
      return false;
    }
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$pesNome = pesNome;
    final lOther$pesNome = other.pesNome;
    if (_$data.containsKey('pesNome') != other._$data.containsKey('pesNome')) {
      return false;
    }
    if (l$pesNome != lOther$pesNome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$backgroundImage = backgroundImage;
    final l$cidade = cidade;
    final l$descricao = descricao;
    final l$estaSeguindo = estaSeguindo;
    final l$estado = estado;
    final l$eventosEmComum = eventosEmComum;
    final l$foto = foto;
    final l$id = id;
    final l$nickname = nickname;
    final l$pesNome = pesNome;
    return Object.hashAll([
      _$data.containsKey('backgroundImage') ? l$backgroundImage : const {},
      _$data.containsKey('cidade') ? l$cidade : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('estaSeguindo') ? l$estaSeguindo : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('eventosEmComum') ? l$eventosEmComum : const {},
      _$data.containsKey('foto') ? l$foto : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('nickname') ? l$nickname : const {},
      _$data.containsKey('pesNome') ? l$pesNome : const {},
    ]);
  }
}

class Input$CriarCardapioInput {
  factory Input$CriarCardapioInput({
    String? categoriaCardapioId,
    double? createdBy,
    String? createdIp,
    String? createdOn,
    String? descricao,
    String? eventoId,
    String? id,
    String? imagem,
    double? inativo,
    double? lastEditBy,
    String? lastEditOn,
    String? nome,
    double? valor,
  }) => Input$CriarCardapioInput._({
    if (categoriaCardapioId != null)
      r'categoriaCardapioId': categoriaCardapioId,
    if (createdBy != null) r'createdBy': createdBy,
    if (createdIp != null) r'createdIp': createdIp,
    if (createdOn != null) r'createdOn': createdOn,
    if (descricao != null) r'descricao': descricao,
    if (eventoId != null) r'eventoId': eventoId,
    if (id != null) r'id': id,
    if (imagem != null) r'imagem': imagem,
    if (inativo != null) r'inativo': inativo,
    if (lastEditBy != null) r'lastEditBy': lastEditBy,
    if (lastEditOn != null) r'lastEditOn': lastEditOn,
    if (nome != null) r'nome': nome,
    if (valor != null) r'valor': valor,
  });

  Input$CriarCardapioInput._(this._$data);

  factory Input$CriarCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('categoriaCardapioId')) {
      final l$categoriaCardapioId = data['categoriaCardapioId'];
      result$data['categoriaCardapioId'] = (l$categoriaCardapioId as String?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as num?)?.toDouble();
    }
    if (data.containsKey('createdIp')) {
      final l$createdIp = data['createdIp'];
      result$data['createdIp'] = (l$createdIp as String?);
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = (l$createdOn as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('eventoId')) {
      final l$eventoId = data['eventoId'];
      result$data['eventoId'] = (l$eventoId as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as num?)?.toDouble();
    }
    if (data.containsKey('lastEditBy')) {
      final l$lastEditBy = data['lastEditBy'];
      result$data['lastEditBy'] = (l$lastEditBy as num?)?.toDouble();
    }
    if (data.containsKey('lastEditOn')) {
      final l$lastEditOn = data['lastEditOn'];
      result$data['lastEditOn'] = (l$lastEditOn as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$CriarCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get categoriaCardapioId => (_$data['categoriaCardapioId'] as String?);

  double? get createdBy => (_$data['createdBy'] as double?);

  String? get createdIp => (_$data['createdIp'] as String?);

  String? get createdOn => (_$data['createdOn'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get eventoId => (_$data['eventoId'] as String?);

  String? get id => (_$data['id'] as String?);

  String? get imagem => (_$data['imagem'] as String?);

  double? get inativo => (_$data['inativo'] as double?);

  double? get lastEditBy => (_$data['lastEditBy'] as double?);

  String? get lastEditOn => (_$data['lastEditOn'] as String?);

  String? get nome => (_$data['nome'] as String?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('categoriaCardapioId')) {
      final l$categoriaCardapioId = categoriaCardapioId;
      result$data['categoriaCardapioId'] = l$categoriaCardapioId;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('createdIp')) {
      final l$createdIp = createdIp;
      result$data['createdIp'] = l$createdIp;
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('eventoId')) {
      final l$eventoId = eventoId;
      result$data['eventoId'] = l$eventoId;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('lastEditBy')) {
      final l$lastEditBy = lastEditBy;
      result$data['lastEditBy'] = l$lastEditBy;
    }
    if (_$data.containsKey('lastEditOn')) {
      final l$lastEditOn = lastEditOn;
      result$data['lastEditOn'] = l$lastEditOn;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CriarCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$categoriaCardapioId = categoriaCardapioId;
    final lOther$categoriaCardapioId = other.categoriaCardapioId;
    if (_$data.containsKey('categoriaCardapioId') !=
        other._$data.containsKey('categoriaCardapioId')) {
      return false;
    }
    if (l$categoriaCardapioId != lOther$categoriaCardapioId) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdIp = createdIp;
    final lOther$createdIp = other.createdIp;
    if (_$data.containsKey('createdIp') !=
        other._$data.containsKey('createdIp')) {
      return false;
    }
    if (l$createdIp != lOther$createdIp) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$eventoId = eventoId;
    final lOther$eventoId = other.eventoId;
    if (_$data.containsKey('eventoId') !=
        other._$data.containsKey('eventoId')) {
      return false;
    }
    if (l$eventoId != lOther$eventoId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$lastEditBy = lastEditBy;
    final lOther$lastEditBy = other.lastEditBy;
    if (_$data.containsKey('lastEditBy') !=
        other._$data.containsKey('lastEditBy')) {
      return false;
    }
    if (l$lastEditBy != lOther$lastEditBy) {
      return false;
    }
    final l$lastEditOn = lastEditOn;
    final lOther$lastEditOn = other.lastEditOn;
    if (_$data.containsKey('lastEditOn') !=
        other._$data.containsKey('lastEditOn')) {
      return false;
    }
    if (l$lastEditOn != lOther$lastEditOn) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categoriaCardapioId = categoriaCardapioId;
    final l$createdBy = createdBy;
    final l$createdIp = createdIp;
    final l$createdOn = createdOn;
    final l$descricao = descricao;
    final l$eventoId = eventoId;
    final l$id = id;
    final l$imagem = imagem;
    final l$inativo = inativo;
    final l$lastEditBy = lastEditBy;
    final l$lastEditOn = lastEditOn;
    final l$nome = nome;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('categoriaCardapioId')
          ? l$categoriaCardapioId
          : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdIp') ? l$createdIp : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('eventoId') ? l$eventoId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagem') ? l$imagem : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('lastEditBy') ? l$lastEditBy : const {},
      _$data.containsKey('lastEditOn') ? l$lastEditOn : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$CriarEventoInput {
  factory Input$CriarEventoInput({
    String? bairro,
    String? categoriaEventoId,
    String? cep,
    String? cidadeId,
    double? comissaoCardapio,
    double? comissaoIngresso,
    String? complemento,
    String? data,
    String? dataFim,
    String? descricao,
    String? estadoId,
    String? horario,
    String? imagem,
    double? inativo,
    String? latitude,
    String? local,
    String? logradouro,
    String? longitude,
    String? mapaEvento,
    String? nome,
    String? numero,
    double? status,
    bool? vendaIngresso,
  }) => Input$CriarEventoInput._({
    if (bairro != null) r'bairro': bairro,
    if (categoriaEventoId != null) r'categoriaEventoId': categoriaEventoId,
    if (cep != null) r'cep': cep,
    if (cidadeId != null) r'cidadeId': cidadeId,
    if (comissaoCardapio != null) r'comissaoCardapio': comissaoCardapio,
    if (comissaoIngresso != null) r'comissaoIngresso': comissaoIngresso,
    if (complemento != null) r'complemento': complemento,
    if (data != null) r'data': data,
    if (dataFim != null) r'dataFim': dataFim,
    if (descricao != null) r'descricao': descricao,
    if (estadoId != null) r'estadoId': estadoId,
    if (horario != null) r'horario': horario,
    if (imagem != null) r'imagem': imagem,
    if (inativo != null) r'inativo': inativo,
    if (latitude != null) r'latitude': latitude,
    if (local != null) r'local': local,
    if (logradouro != null) r'logradouro': logradouro,
    if (longitude != null) r'longitude': longitude,
    if (mapaEvento != null) r'mapaEvento': mapaEvento,
    if (nome != null) r'nome': nome,
    if (numero != null) r'numero': numero,
    if (status != null) r'status': status,
    if (vendaIngresso != null) r'vendaIngresso': vendaIngresso,
  });

  Input$CriarEventoInput._(this._$data);

  factory Input$CriarEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('categoriaEventoId')) {
      final l$categoriaEventoId = data['categoriaEventoId'];
      result$data['categoriaEventoId'] = (l$categoriaEventoId as String?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cidadeId')) {
      final l$cidadeId = data['cidadeId'];
      result$data['cidadeId'] = (l$cidadeId as String?);
    }
    if (data.containsKey('comissaoCardapio')) {
      final l$comissaoCardapio = data['comissaoCardapio'];
      result$data['comissaoCardapio'] = (l$comissaoCardapio as num?)
          ?.toDouble();
    }
    if (data.containsKey('comissaoIngresso')) {
      final l$comissaoIngresso = data['comissaoIngresso'];
      result$data['comissaoIngresso'] = (l$comissaoIngresso as num?)
          ?.toDouble();
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    if (data.containsKey('dataFim')) {
      final l$dataFim = data['dataFim'];
      result$data['dataFim'] = (l$dataFim as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('estadoId')) {
      final l$estadoId = data['estadoId'];
      result$data['estadoId'] = (l$estadoId as String?);
    }
    if (data.containsKey('horario')) {
      final l$horario = data['horario'];
      result$data['horario'] = (l$horario as String?);
    }
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as num?)?.toDouble();
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = (l$latitude as String?);
    }
    if (data.containsKey('local')) {
      final l$local = data['local'];
      result$data['local'] = (l$local as String?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = (l$longitude as String?);
    }
    if (data.containsKey('mapaEvento')) {
      final l$mapaEvento = data['mapaEvento'];
      result$data['mapaEvento'] = (l$mapaEvento as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as num?)?.toDouble();
    }
    if (data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = data['vendaIngresso'];
      result$data['vendaIngresso'] = (l$vendaIngresso as bool?);
    }
    return Input$CriarEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bairro => (_$data['bairro'] as String?);

  String? get categoriaEventoId => (_$data['categoriaEventoId'] as String?);

  String? get cep => (_$data['cep'] as String?);

  String? get cidadeId => (_$data['cidadeId'] as String?);

  double? get comissaoCardapio => (_$data['comissaoCardapio'] as double?);

  double? get comissaoIngresso => (_$data['comissaoIngresso'] as double?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get data => (_$data['data'] as String?);

  String? get dataFim => (_$data['dataFim'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get estadoId => (_$data['estadoId'] as String?);

  String? get horario => (_$data['horario'] as String?);

  String? get imagem => (_$data['imagem'] as String?);

  double? get inativo => (_$data['inativo'] as double?);

  String? get latitude => (_$data['latitude'] as String?);

  String? get local => (_$data['local'] as String?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get longitude => (_$data['longitude'] as String?);

  String? get mapaEvento => (_$data['mapaEvento'] as String?);

  String? get nome => (_$data['nome'] as String?);

  String? get numero => (_$data['numero'] as String?);

  double? get status => (_$data['status'] as double?);

  bool? get vendaIngresso => (_$data['vendaIngresso'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('categoriaEventoId')) {
      final l$categoriaEventoId = categoriaEventoId;
      result$data['categoriaEventoId'] = l$categoriaEventoId;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cidadeId')) {
      final l$cidadeId = cidadeId;
      result$data['cidadeId'] = l$cidadeId;
    }
    if (_$data.containsKey('comissaoCardapio')) {
      final l$comissaoCardapio = comissaoCardapio;
      result$data['comissaoCardapio'] = l$comissaoCardapio;
    }
    if (_$data.containsKey('comissaoIngresso')) {
      final l$comissaoIngresso = comissaoIngresso;
      result$data['comissaoIngresso'] = l$comissaoIngresso;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    if (_$data.containsKey('dataFim')) {
      final l$dataFim = dataFim;
      result$data['dataFim'] = l$dataFim;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('estadoId')) {
      final l$estadoId = estadoId;
      result$data['estadoId'] = l$estadoId;
    }
    if (_$data.containsKey('horario')) {
      final l$horario = horario;
      result$data['horario'] = l$horario;
    }
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude;
    }
    if (_$data.containsKey('local')) {
      final l$local = local;
      result$data['local'] = l$local;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude;
    }
    if (_$data.containsKey('mapaEvento')) {
      final l$mapaEvento = mapaEvento;
      result$data['mapaEvento'] = l$mapaEvento;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = vendaIngresso;
      result$data['vendaIngresso'] = l$vendaIngresso;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CriarEventoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$categoriaEventoId = categoriaEventoId;
    final lOther$categoriaEventoId = other.categoriaEventoId;
    if (_$data.containsKey('categoriaEventoId') !=
        other._$data.containsKey('categoriaEventoId')) {
      return false;
    }
    if (l$categoriaEventoId != lOther$categoriaEventoId) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cidadeId = cidadeId;
    final lOther$cidadeId = other.cidadeId;
    if (_$data.containsKey('cidadeId') !=
        other._$data.containsKey('cidadeId')) {
      return false;
    }
    if (l$cidadeId != lOther$cidadeId) {
      return false;
    }
    final l$comissaoCardapio = comissaoCardapio;
    final lOther$comissaoCardapio = other.comissaoCardapio;
    if (_$data.containsKey('comissaoCardapio') !=
        other._$data.containsKey('comissaoCardapio')) {
      return false;
    }
    if (l$comissaoCardapio != lOther$comissaoCardapio) {
      return false;
    }
    final l$comissaoIngresso = comissaoIngresso;
    final lOther$comissaoIngresso = other.comissaoIngresso;
    if (_$data.containsKey('comissaoIngresso') !=
        other._$data.containsKey('comissaoIngresso')) {
      return false;
    }
    if (l$comissaoIngresso != lOther$comissaoIngresso) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (_$data.containsKey('dataFim') != other._$data.containsKey('dataFim')) {
      return false;
    }
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$estadoId = estadoId;
    final lOther$estadoId = other.estadoId;
    if (_$data.containsKey('estadoId') !=
        other._$data.containsKey('estadoId')) {
      return false;
    }
    if (l$estadoId != lOther$estadoId) {
      return false;
    }
    final l$horario = horario;
    final lOther$horario = other.horario;
    if (_$data.containsKey('horario') != other._$data.containsKey('horario')) {
      return false;
    }
    if (l$horario != lOther$horario) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$local = local;
    final lOther$local = other.local;
    if (_$data.containsKey('local') != other._$data.containsKey('local')) {
      return false;
    }
    if (l$local != lOther$local) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$mapaEvento = mapaEvento;
    final lOther$mapaEvento = other.mapaEvento;
    if (_$data.containsKey('mapaEvento') !=
        other._$data.containsKey('mapaEvento')) {
      return false;
    }
    if (l$mapaEvento != lOther$mapaEvento) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$vendaIngresso = vendaIngresso;
    final lOther$vendaIngresso = other.vendaIngresso;
    if (_$data.containsKey('vendaIngresso') !=
        other._$data.containsKey('vendaIngresso')) {
      return false;
    }
    if (l$vendaIngresso != lOther$vendaIngresso) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bairro = bairro;
    final l$categoriaEventoId = categoriaEventoId;
    final l$cep = cep;
    final l$cidadeId = cidadeId;
    final l$comissaoCardapio = comissaoCardapio;
    final l$comissaoIngresso = comissaoIngresso;
    final l$complemento = complemento;
    final l$data = data;
    final l$dataFim = dataFim;
    final l$descricao = descricao;
    final l$estadoId = estadoId;
    final l$horario = horario;
    final l$imagem = imagem;
    final l$inativo = inativo;
    final l$latitude = latitude;
    final l$local = local;
    final l$logradouro = logradouro;
    final l$longitude = longitude;
    final l$mapaEvento = mapaEvento;
    final l$nome = nome;
    final l$numero = numero;
    final l$status = status;
    final l$vendaIngresso = vendaIngresso;
    return Object.hashAll([
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('categoriaEventoId') ? l$categoriaEventoId : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cidadeId') ? l$cidadeId : const {},
      _$data.containsKey('comissaoCardapio') ? l$comissaoCardapio : const {},
      _$data.containsKey('comissaoIngresso') ? l$comissaoIngresso : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('data') ? l$data : const {},
      _$data.containsKey('dataFim') ? l$dataFim : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('estadoId') ? l$estadoId : const {},
      _$data.containsKey('horario') ? l$horario : const {},
      _$data.containsKey('imagem') ? l$imagem : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('local') ? l$local : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('mapaEvento') ? l$mapaEvento : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('vendaIngresso') ? l$vendaIngresso : const {},
    ]);
  }
}

class Input$CriarIngressoInput {
  factory Input$CriarIngressoInput({
    required String data,
    String? descricao,
    required double eventoId,
    required double limite,
    required double limitePorPessoa,
    required String local,
    required double loteId,
    required String nome,
    required double valor,
  }) => Input$CriarIngressoInput._({
    r'data': data,
    if (descricao != null) r'descricao': descricao,
    r'eventoId': eventoId,
    r'limite': limite,
    r'limitePorPessoa': limitePorPessoa,
    r'local': local,
    r'loteId': loteId,
    r'nome': nome,
    r'valor': valor,
  });

  Input$CriarIngressoInput._(this._$data);

  factory Input$CriarIngressoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    final l$eventoId = data['eventoId'];
    result$data['eventoId'] = (l$eventoId as num).toDouble();
    final l$limite = data['limite'];
    result$data['limite'] = (l$limite as num).toDouble();
    final l$limitePorPessoa = data['limitePorPessoa'];
    result$data['limitePorPessoa'] = (l$limitePorPessoa as num).toDouble();
    final l$local = data['local'];
    result$data['local'] = (l$local as String);
    final l$loteId = data['loteId'];
    result$data['loteId'] = (l$loteId as num).toDouble();
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$valor = data['valor'];
    result$data['valor'] = (l$valor as num).toDouble();
    return Input$CriarIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get data => (_$data['data'] as String);

  String? get descricao => (_$data['descricao'] as String?);

  double get eventoId => (_$data['eventoId'] as double);

  double get limite => (_$data['limite'] as double);

  double get limitePorPessoa => (_$data['limitePorPessoa'] as double);

  String get local => (_$data['local'] as String);

  double get loteId => (_$data['loteId'] as double);

  String get nome => (_$data['nome'] as String);

  double get valor => (_$data['valor'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data;
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    final l$eventoId = eventoId;
    result$data['eventoId'] = l$eventoId;
    final l$limite = limite;
    result$data['limite'] = l$limite;
    final l$limitePorPessoa = limitePorPessoa;
    result$data['limitePorPessoa'] = l$limitePorPessoa;
    final l$local = local;
    result$data['local'] = l$local;
    final l$loteId = loteId;
    result$data['loteId'] = l$loteId;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$valor = valor;
    result$data['valor'] = l$valor;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CriarIngressoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$eventoId = eventoId;
    final lOther$eventoId = other.eventoId;
    if (l$eventoId != lOther$eventoId) {
      return false;
    }
    final l$limite = limite;
    final lOther$limite = other.limite;
    if (l$limite != lOther$limite) {
      return false;
    }
    final l$limitePorPessoa = limitePorPessoa;
    final lOther$limitePorPessoa = other.limitePorPessoa;
    if (l$limitePorPessoa != lOther$limitePorPessoa) {
      return false;
    }
    final l$local = local;
    final lOther$local = other.local;
    if (l$local != lOther$local) {
      return false;
    }
    final l$loteId = loteId;
    final lOther$loteId = other.loteId;
    if (l$loteId != lOther$loteId) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$descricao = descricao;
    final l$eventoId = eventoId;
    final l$limite = limite;
    final l$limitePorPessoa = limitePorPessoa;
    final l$local = local;
    final l$loteId = loteId;
    final l$nome = nome;
    final l$valor = valor;
    return Object.hashAll([
      l$data,
      _$data.containsKey('descricao') ? l$descricao : const {},
      l$eventoId,
      l$limite,
      l$limitePorPessoa,
      l$local,
      l$loteId,
      l$nome,
      l$valor,
    ]);
  }
}

class Input$CriarNotificationInput {
  factory Input$CriarNotificationInput({
    double? inativo,
    required String texto,
    required String titulo,
  }) => Input$CriarNotificationInput._({
    if (inativo != null) r'inativo': inativo,
    r'texto': texto,
    r'titulo': titulo,
  });

  Input$CriarNotificationInput._(this._$data);

  factory Input$CriarNotificationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as num?)?.toDouble();
    }
    final l$texto = data['texto'];
    result$data['texto'] = (l$texto as String);
    final l$titulo = data['titulo'];
    result$data['titulo'] = (l$titulo as String);
    return Input$CriarNotificationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get inativo => (_$data['inativo'] as double?);

  String get texto => (_$data['texto'] as String);

  String get titulo => (_$data['titulo'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    final l$texto = texto;
    result$data['texto'] = l$texto;
    final l$titulo = titulo;
    result$data['titulo'] = l$titulo;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CriarNotificationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$texto = texto;
    final lOther$texto = other.texto;
    if (l$texto != lOther$texto) {
      return false;
    }
    final l$titulo = titulo;
    final lOther$titulo = other.titulo;
    if (l$titulo != lOther$titulo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$inativo = inativo;
    final l$texto = texto;
    final l$titulo = titulo;
    return Object.hashAll([
      _$data.containsKey('inativo') ? l$inativo : const {},
      l$texto,
      l$titulo,
    ]);
  }
}

class Input$CriarPessoaInput {
  factory Input$CriarPessoaInput({
    String? bairro,
    String? cep,
    String? cidadeId,
    String? complemento,
    String? cpf,
    String? email,
    String? estadoId,
    String? eventoId,
    String? logradouro,
    String? nickname,
    String? nome,
    String? numero,
    String? pessoaId,
    String? senha,
    String? telefone,
  }) => Input$CriarPessoaInput._({
    if (bairro != null) r'bairro': bairro,
    if (cep != null) r'cep': cep,
    if (cidadeId != null) r'cidadeId': cidadeId,
    if (complemento != null) r'complemento': complemento,
    if (cpf != null) r'cpf': cpf,
    if (email != null) r'email': email,
    if (estadoId != null) r'estadoId': estadoId,
    if (eventoId != null) r'eventoId': eventoId,
    if (logradouro != null) r'logradouro': logradouro,
    if (nickname != null) r'nickname': nickname,
    if (nome != null) r'nome': nome,
    if (numero != null) r'numero': numero,
    if (pessoaId != null) r'pessoaId': pessoaId,
    if (senha != null) r'senha': senha,
    if (telefone != null) r'telefone': telefone,
  });

  Input$CriarPessoaInput._(this._$data);

  factory Input$CriarPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cidadeId')) {
      final l$cidadeId = data['cidadeId'];
      result$data['cidadeId'] = (l$cidadeId as String?);
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('cpf')) {
      final l$cpf = data['cpf'];
      result$data['cpf'] = (l$cpf as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('estadoId')) {
      final l$estadoId = data['estadoId'];
      result$data['estadoId'] = (l$estadoId as String?);
    }
    if (data.containsKey('eventoId')) {
      final l$eventoId = data['eventoId'];
      result$data['eventoId'] = (l$eventoId as String?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('nickname')) {
      final l$nickname = data['nickname'];
      result$data['nickname'] = (l$nickname as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('pessoaId')) {
      final l$pessoaId = data['pessoaId'];
      result$data['pessoaId'] = (l$pessoaId as String?);
    }
    if (data.containsKey('senha')) {
      final l$senha = data['senha'];
      result$data['senha'] = (l$senha as String?);
    }
    if (data.containsKey('telefone')) {
      final l$telefone = data['telefone'];
      result$data['telefone'] = (l$telefone as String?);
    }
    return Input$CriarPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bairro => (_$data['bairro'] as String?);

  String? get cep => (_$data['cep'] as String?);

  String? get cidadeId => (_$data['cidadeId'] as String?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get cpf => (_$data['cpf'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get estadoId => (_$data['estadoId'] as String?);

  String? get eventoId => (_$data['eventoId'] as String?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get nickname => (_$data['nickname'] as String?);

  String? get nome => (_$data['nome'] as String?);

  String? get numero => (_$data['numero'] as String?);

  String? get pessoaId => (_$data['pessoaId'] as String?);

  String? get senha => (_$data['senha'] as String?);

  String? get telefone => (_$data['telefone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cidadeId')) {
      final l$cidadeId = cidadeId;
      result$data['cidadeId'] = l$cidadeId;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('cpf')) {
      final l$cpf = cpf;
      result$data['cpf'] = l$cpf;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('estadoId')) {
      final l$estadoId = estadoId;
      result$data['estadoId'] = l$estadoId;
    }
    if (_$data.containsKey('eventoId')) {
      final l$eventoId = eventoId;
      result$data['eventoId'] = l$eventoId;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('nickname')) {
      final l$nickname = nickname;
      result$data['nickname'] = l$nickname;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('pessoaId')) {
      final l$pessoaId = pessoaId;
      result$data['pessoaId'] = l$pessoaId;
    }
    if (_$data.containsKey('senha')) {
      final l$senha = senha;
      result$data['senha'] = l$senha;
    }
    if (_$data.containsKey('telefone')) {
      final l$telefone = telefone;
      result$data['telefone'] = l$telefone;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CriarPessoaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cidadeId = cidadeId;
    final lOther$cidadeId = other.cidadeId;
    if (_$data.containsKey('cidadeId') !=
        other._$data.containsKey('cidadeId')) {
      return false;
    }
    if (l$cidadeId != lOther$cidadeId) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$cpf = cpf;
    final lOther$cpf = other.cpf;
    if (_$data.containsKey('cpf') != other._$data.containsKey('cpf')) {
      return false;
    }
    if (l$cpf != lOther$cpf) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$estadoId = estadoId;
    final lOther$estadoId = other.estadoId;
    if (_$data.containsKey('estadoId') !=
        other._$data.containsKey('estadoId')) {
      return false;
    }
    if (l$estadoId != lOther$estadoId) {
      return false;
    }
    final l$eventoId = eventoId;
    final lOther$eventoId = other.eventoId;
    if (_$data.containsKey('eventoId') !=
        other._$data.containsKey('eventoId')) {
      return false;
    }
    if (l$eventoId != lOther$eventoId) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (_$data.containsKey('nickname') !=
        other._$data.containsKey('nickname')) {
      return false;
    }
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$pessoaId = pessoaId;
    final lOther$pessoaId = other.pessoaId;
    if (_$data.containsKey('pessoaId') !=
        other._$data.containsKey('pessoaId')) {
      return false;
    }
    if (l$pessoaId != lOther$pessoaId) {
      return false;
    }
    final l$senha = senha;
    final lOther$senha = other.senha;
    if (_$data.containsKey('senha') != other._$data.containsKey('senha')) {
      return false;
    }
    if (l$senha != lOther$senha) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (_$data.containsKey('telefone') !=
        other._$data.containsKey('telefone')) {
      return false;
    }
    if (l$telefone != lOther$telefone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bairro = bairro;
    final l$cep = cep;
    final l$cidadeId = cidadeId;
    final l$complemento = complemento;
    final l$cpf = cpf;
    final l$email = email;
    final l$estadoId = estadoId;
    final l$eventoId = eventoId;
    final l$logradouro = logradouro;
    final l$nickname = nickname;
    final l$nome = nome;
    final l$numero = numero;
    final l$pessoaId = pessoaId;
    final l$senha = senha;
    final l$telefone = telefone;
    return Object.hashAll([
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cidadeId') ? l$cidadeId : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('cpf') ? l$cpf : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('estadoId') ? l$estadoId : const {},
      _$data.containsKey('eventoId') ? l$eventoId : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('nickname') ? l$nickname : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('pessoaId') ? l$pessoaId : const {},
      _$data.containsKey('senha') ? l$senha : const {},
      _$data.containsKey('telefone') ? l$telefone : const {},
    ]);
  }
}

class Input$CriarRecebedorInput {
  factory Input$CriarRecebedorInput({
    required String accountCheckDigit,
    required String accountNumber,
    double? annualRevenue,
    required String bairro,
    String? bairroRepresentante,
    required double bank,
    String? birthdate,
    String? birthdateRepresentante,
    required String branchCheckDigit,
    required String branchNumber,
    required String cep,
    String? cepRepresentante,
    required double cidade,
    double? cidadeRepresentante,
    String? companyName,
    required String complemento,
    String? complementoRepresentante,
    required String descricao,
    required String document,
    String? documentRepresentante,
    required String email,
    String? emailRepresentante,
    required double estado,
    double? estadoRepresentante,
    required double evento,
    required String holderDocument,
    required String holderName,
    required double holderType,
    required String logradouro,
    String? logradouroRepresentante,
    double? monthlyIncome,
    double? monthlyIncomeRepresentante,
    required String name,
    String? nameRepresentante,
    required String numero,
    String? numeroRepresentante,
    String? professionalOccupation,
    String? professionalOccupationRepresentante,
    required String telefone,
    required double tipo,
    String? tradingName,
    required double transferEnabled,
    required double transferInterval,
    required double type,
  }) => Input$CriarRecebedorInput._({
    r'accountCheckDigit': accountCheckDigit,
    r'accountNumber': accountNumber,
    if (annualRevenue != null) r'annualRevenue': annualRevenue,
    r'bairro': bairro,
    if (bairroRepresentante != null)
      r'bairroRepresentante': bairroRepresentante,
    r'bank': bank,
    if (birthdate != null) r'birthdate': birthdate,
    if (birthdateRepresentante != null)
      r'birthdateRepresentante': birthdateRepresentante,
    r'branchCheckDigit': branchCheckDigit,
    r'branchNumber': branchNumber,
    r'cep': cep,
    if (cepRepresentante != null) r'cepRepresentante': cepRepresentante,
    r'cidade': cidade,
    if (cidadeRepresentante != null)
      r'cidadeRepresentante': cidadeRepresentante,
    if (companyName != null) r'companyName': companyName,
    r'complemento': complemento,
    if (complementoRepresentante != null)
      r'complementoRepresentante': complementoRepresentante,
    r'descricao': descricao,
    r'document': document,
    if (documentRepresentante != null)
      r'documentRepresentante': documentRepresentante,
    r'email': email,
    if (emailRepresentante != null) r'emailRepresentante': emailRepresentante,
    r'estado': estado,
    if (estadoRepresentante != null)
      r'estadoRepresentante': estadoRepresentante,
    r'evento': evento,
    r'holderDocument': holderDocument,
    r'holderName': holderName,
    r'holderType': holderType,
    r'logradouro': logradouro,
    if (logradouroRepresentante != null)
      r'logradouroRepresentante': logradouroRepresentante,
    if (monthlyIncome != null) r'monthlyIncome': monthlyIncome,
    if (monthlyIncomeRepresentante != null)
      r'monthlyIncomeRepresentante': monthlyIncomeRepresentante,
    r'name': name,
    if (nameRepresentante != null) r'nameRepresentante': nameRepresentante,
    r'numero': numero,
    if (numeroRepresentante != null)
      r'numeroRepresentante': numeroRepresentante,
    if (professionalOccupation != null)
      r'professionalOccupation': professionalOccupation,
    if (professionalOccupationRepresentante != null)
      r'professionalOccupationRepresentante':
          professionalOccupationRepresentante,
    r'telefone': telefone,
    r'tipo': tipo,
    if (tradingName != null) r'tradingName': tradingName,
    r'transferEnabled': transferEnabled,
    r'transferInterval': transferInterval,
    r'type': type,
  });

  Input$CriarRecebedorInput._(this._$data);

  factory Input$CriarRecebedorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accountCheckDigit = data['accountCheckDigit'];
    result$data['accountCheckDigit'] = (l$accountCheckDigit as String);
    final l$accountNumber = data['accountNumber'];
    result$data['accountNumber'] = (l$accountNumber as String);
    if (data.containsKey('annualRevenue')) {
      final l$annualRevenue = data['annualRevenue'];
      result$data['annualRevenue'] = (l$annualRevenue as num?)?.toDouble();
    }
    final l$bairro = data['bairro'];
    result$data['bairro'] = (l$bairro as String);
    if (data.containsKey('bairroRepresentante')) {
      final l$bairroRepresentante = data['bairroRepresentante'];
      result$data['bairroRepresentante'] = (l$bairroRepresentante as String?);
    }
    final l$bank = data['bank'];
    result$data['bank'] = (l$bank as num).toDouble();
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = (l$birthdate as String?);
    }
    if (data.containsKey('birthdateRepresentante')) {
      final l$birthdateRepresentante = data['birthdateRepresentante'];
      result$data['birthdateRepresentante'] =
          (l$birthdateRepresentante as String?);
    }
    final l$branchCheckDigit = data['branchCheckDigit'];
    result$data['branchCheckDigit'] = (l$branchCheckDigit as String);
    final l$branchNumber = data['branchNumber'];
    result$data['branchNumber'] = (l$branchNumber as String);
    final l$cep = data['cep'];
    result$data['cep'] = (l$cep as String);
    if (data.containsKey('cepRepresentante')) {
      final l$cepRepresentante = data['cepRepresentante'];
      result$data['cepRepresentante'] = (l$cepRepresentante as String?);
    }
    final l$cidade = data['cidade'];
    result$data['cidade'] = (l$cidade as num).toDouble();
    if (data.containsKey('cidadeRepresentante')) {
      final l$cidadeRepresentante = data['cidadeRepresentante'];
      result$data['cidadeRepresentante'] = (l$cidadeRepresentante as num?)
          ?.toDouble();
    }
    if (data.containsKey('companyName')) {
      final l$companyName = data['companyName'];
      result$data['companyName'] = (l$companyName as String?);
    }
    final l$complemento = data['complemento'];
    result$data['complemento'] = (l$complemento as String);
    if (data.containsKey('complementoRepresentante')) {
      final l$complementoRepresentante = data['complementoRepresentante'];
      result$data['complementoRepresentante'] =
          (l$complementoRepresentante as String?);
    }
    final l$descricao = data['descricao'];
    result$data['descricao'] = (l$descricao as String);
    final l$document = data['document'];
    result$data['document'] = (l$document as String);
    if (data.containsKey('documentRepresentante')) {
      final l$documentRepresentante = data['documentRepresentante'];
      result$data['documentRepresentante'] =
          (l$documentRepresentante as String?);
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    if (data.containsKey('emailRepresentante')) {
      final l$emailRepresentante = data['emailRepresentante'];
      result$data['emailRepresentante'] = (l$emailRepresentante as String?);
    }
    final l$estado = data['estado'];
    result$data['estado'] = (l$estado as num).toDouble();
    if (data.containsKey('estadoRepresentante')) {
      final l$estadoRepresentante = data['estadoRepresentante'];
      result$data['estadoRepresentante'] = (l$estadoRepresentante as num?)
          ?.toDouble();
    }
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as num).toDouble();
    final l$holderDocument = data['holderDocument'];
    result$data['holderDocument'] = (l$holderDocument as String);
    final l$holderName = data['holderName'];
    result$data['holderName'] = (l$holderName as String);
    final l$holderType = data['holderType'];
    result$data['holderType'] = (l$holderType as num).toDouble();
    final l$logradouro = data['logradouro'];
    result$data['logradouro'] = (l$logradouro as String);
    if (data.containsKey('logradouroRepresentante')) {
      final l$logradouroRepresentante = data['logradouroRepresentante'];
      result$data['logradouroRepresentante'] =
          (l$logradouroRepresentante as String?);
    }
    if (data.containsKey('monthlyIncome')) {
      final l$monthlyIncome = data['monthlyIncome'];
      result$data['monthlyIncome'] = (l$monthlyIncome as num?)?.toDouble();
    }
    if (data.containsKey('monthlyIncomeRepresentante')) {
      final l$monthlyIncomeRepresentante = data['monthlyIncomeRepresentante'];
      result$data['monthlyIncomeRepresentante'] =
          (l$monthlyIncomeRepresentante as num?)?.toDouble();
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('nameRepresentante')) {
      final l$nameRepresentante = data['nameRepresentante'];
      result$data['nameRepresentante'] = (l$nameRepresentante as String?);
    }
    final l$numero = data['numero'];
    result$data['numero'] = (l$numero as String);
    if (data.containsKey('numeroRepresentante')) {
      final l$numeroRepresentante = data['numeroRepresentante'];
      result$data['numeroRepresentante'] = (l$numeroRepresentante as String?);
    }
    if (data.containsKey('professionalOccupation')) {
      final l$professionalOccupation = data['professionalOccupation'];
      result$data['professionalOccupation'] =
          (l$professionalOccupation as String?);
    }
    if (data.containsKey('professionalOccupationRepresentante')) {
      final l$professionalOccupationRepresentante =
          data['professionalOccupationRepresentante'];
      result$data['professionalOccupationRepresentante'] =
          (l$professionalOccupationRepresentante as String?);
    }
    final l$telefone = data['telefone'];
    result$data['telefone'] = (l$telefone as String);
    final l$tipo = data['tipo'];
    result$data['tipo'] = (l$tipo as num).toDouble();
    if (data.containsKey('tradingName')) {
      final l$tradingName = data['tradingName'];
      result$data['tradingName'] = (l$tradingName as String?);
    }
    final l$transferEnabled = data['transferEnabled'];
    result$data['transferEnabled'] = (l$transferEnabled as num).toDouble();
    final l$transferInterval = data['transferInterval'];
    result$data['transferInterval'] = (l$transferInterval as num).toDouble();
    final l$type = data['type'];
    result$data['type'] = (l$type as num).toDouble();
    return Input$CriarRecebedorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountCheckDigit => (_$data['accountCheckDigit'] as String);

  String get accountNumber => (_$data['accountNumber'] as String);

  double? get annualRevenue => (_$data['annualRevenue'] as double?);

  String get bairro => (_$data['bairro'] as String);

  String? get bairroRepresentante => (_$data['bairroRepresentante'] as String?);

  double get bank => (_$data['bank'] as double);

  String? get birthdate => (_$data['birthdate'] as String?);

  String? get birthdateRepresentante =>
      (_$data['birthdateRepresentante'] as String?);

  String get branchCheckDigit => (_$data['branchCheckDigit'] as String);

  String get branchNumber => (_$data['branchNumber'] as String);

  String get cep => (_$data['cep'] as String);

  String? get cepRepresentante => (_$data['cepRepresentante'] as String?);

  double get cidade => (_$data['cidade'] as double);

  double? get cidadeRepresentante => (_$data['cidadeRepresentante'] as double?);

  String? get companyName => (_$data['companyName'] as String?);

  String get complemento => (_$data['complemento'] as String);

  String? get complementoRepresentante =>
      (_$data['complementoRepresentante'] as String?);

  String get descricao => (_$data['descricao'] as String);

  String get document => (_$data['document'] as String);

  String? get documentRepresentante =>
      (_$data['documentRepresentante'] as String?);

  String get email => (_$data['email'] as String);

  String? get emailRepresentante => (_$data['emailRepresentante'] as String?);

  double get estado => (_$data['estado'] as double);

  double? get estadoRepresentante => (_$data['estadoRepresentante'] as double?);

  double get evento => (_$data['evento'] as double);

  String get holderDocument => (_$data['holderDocument'] as String);

  String get holderName => (_$data['holderName'] as String);

  double get holderType => (_$data['holderType'] as double);

  String get logradouro => (_$data['logradouro'] as String);

  String? get logradouroRepresentante =>
      (_$data['logradouroRepresentante'] as String?);

  double? get monthlyIncome => (_$data['monthlyIncome'] as double?);

  double? get monthlyIncomeRepresentante =>
      (_$data['monthlyIncomeRepresentante'] as double?);

  String get name => (_$data['name'] as String);

  String? get nameRepresentante => (_$data['nameRepresentante'] as String?);

  String get numero => (_$data['numero'] as String);

  String? get numeroRepresentante => (_$data['numeroRepresentante'] as String?);

  String? get professionalOccupation =>
      (_$data['professionalOccupation'] as String?);

  String? get professionalOccupationRepresentante =>
      (_$data['professionalOccupationRepresentante'] as String?);

  String get telefone => (_$data['telefone'] as String);

  double get tipo => (_$data['tipo'] as double);

  String? get tradingName => (_$data['tradingName'] as String?);

  double get transferEnabled => (_$data['transferEnabled'] as double);

  double get transferInterval => (_$data['transferInterval'] as double);

  double get type => (_$data['type'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountCheckDigit = accountCheckDigit;
    result$data['accountCheckDigit'] = l$accountCheckDigit;
    final l$accountNumber = accountNumber;
    result$data['accountNumber'] = l$accountNumber;
    if (_$data.containsKey('annualRevenue')) {
      final l$annualRevenue = annualRevenue;
      result$data['annualRevenue'] = l$annualRevenue;
    }
    final l$bairro = bairro;
    result$data['bairro'] = l$bairro;
    if (_$data.containsKey('bairroRepresentante')) {
      final l$bairroRepresentante = bairroRepresentante;
      result$data['bairroRepresentante'] = l$bairroRepresentante;
    }
    final l$bank = bank;
    result$data['bank'] = l$bank;
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate;
    }
    if (_$data.containsKey('birthdateRepresentante')) {
      final l$birthdateRepresentante = birthdateRepresentante;
      result$data['birthdateRepresentante'] = l$birthdateRepresentante;
    }
    final l$branchCheckDigit = branchCheckDigit;
    result$data['branchCheckDigit'] = l$branchCheckDigit;
    final l$branchNumber = branchNumber;
    result$data['branchNumber'] = l$branchNumber;
    final l$cep = cep;
    result$data['cep'] = l$cep;
    if (_$data.containsKey('cepRepresentante')) {
      final l$cepRepresentante = cepRepresentante;
      result$data['cepRepresentante'] = l$cepRepresentante;
    }
    final l$cidade = cidade;
    result$data['cidade'] = l$cidade;
    if (_$data.containsKey('cidadeRepresentante')) {
      final l$cidadeRepresentante = cidadeRepresentante;
      result$data['cidadeRepresentante'] = l$cidadeRepresentante;
    }
    if (_$data.containsKey('companyName')) {
      final l$companyName = companyName;
      result$data['companyName'] = l$companyName;
    }
    final l$complemento = complemento;
    result$data['complemento'] = l$complemento;
    if (_$data.containsKey('complementoRepresentante')) {
      final l$complementoRepresentante = complementoRepresentante;
      result$data['complementoRepresentante'] = l$complementoRepresentante;
    }
    final l$descricao = descricao;
    result$data['descricao'] = l$descricao;
    final l$document = document;
    result$data['document'] = l$document;
    if (_$data.containsKey('documentRepresentante')) {
      final l$documentRepresentante = documentRepresentante;
      result$data['documentRepresentante'] = l$documentRepresentante;
    }
    final l$email = email;
    result$data['email'] = l$email;
    if (_$data.containsKey('emailRepresentante')) {
      final l$emailRepresentante = emailRepresentante;
      result$data['emailRepresentante'] = l$emailRepresentante;
    }
    final l$estado = estado;
    result$data['estado'] = l$estado;
    if (_$data.containsKey('estadoRepresentante')) {
      final l$estadoRepresentante = estadoRepresentante;
      result$data['estadoRepresentante'] = l$estadoRepresentante;
    }
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$holderDocument = holderDocument;
    result$data['holderDocument'] = l$holderDocument;
    final l$holderName = holderName;
    result$data['holderName'] = l$holderName;
    final l$holderType = holderType;
    result$data['holderType'] = l$holderType;
    final l$logradouro = logradouro;
    result$data['logradouro'] = l$logradouro;
    if (_$data.containsKey('logradouroRepresentante')) {
      final l$logradouroRepresentante = logradouroRepresentante;
      result$data['logradouroRepresentante'] = l$logradouroRepresentante;
    }
    if (_$data.containsKey('monthlyIncome')) {
      final l$monthlyIncome = monthlyIncome;
      result$data['monthlyIncome'] = l$monthlyIncome;
    }
    if (_$data.containsKey('monthlyIncomeRepresentante')) {
      final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
      result$data['monthlyIncomeRepresentante'] = l$monthlyIncomeRepresentante;
    }
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('nameRepresentante')) {
      final l$nameRepresentante = nameRepresentante;
      result$data['nameRepresentante'] = l$nameRepresentante;
    }
    final l$numero = numero;
    result$data['numero'] = l$numero;
    if (_$data.containsKey('numeroRepresentante')) {
      final l$numeroRepresentante = numeroRepresentante;
      result$data['numeroRepresentante'] = l$numeroRepresentante;
    }
    if (_$data.containsKey('professionalOccupation')) {
      final l$professionalOccupation = professionalOccupation;
      result$data['professionalOccupation'] = l$professionalOccupation;
    }
    if (_$data.containsKey('professionalOccupationRepresentante')) {
      final l$professionalOccupationRepresentante =
          professionalOccupationRepresentante;
      result$data['professionalOccupationRepresentante'] =
          l$professionalOccupationRepresentante;
    }
    final l$telefone = telefone;
    result$data['telefone'] = l$telefone;
    final l$tipo = tipo;
    result$data['tipo'] = l$tipo;
    if (_$data.containsKey('tradingName')) {
      final l$tradingName = tradingName;
      result$data['tradingName'] = l$tradingName;
    }
    final l$transferEnabled = transferEnabled;
    result$data['transferEnabled'] = l$transferEnabled;
    final l$transferInterval = transferInterval;
    result$data['transferInterval'] = l$transferInterval;
    final l$type = type;
    result$data['type'] = l$type;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CriarRecebedorInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountCheckDigit = accountCheckDigit;
    final lOther$accountCheckDigit = other.accountCheckDigit;
    if (l$accountCheckDigit != lOther$accountCheckDigit) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$annualRevenue = annualRevenue;
    final lOther$annualRevenue = other.annualRevenue;
    if (_$data.containsKey('annualRevenue') !=
        other._$data.containsKey('annualRevenue')) {
      return false;
    }
    if (l$annualRevenue != lOther$annualRevenue) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$bairroRepresentante = bairroRepresentante;
    final lOther$bairroRepresentante = other.bairroRepresentante;
    if (_$data.containsKey('bairroRepresentante') !=
        other._$data.containsKey('bairroRepresentante')) {
      return false;
    }
    if (l$bairroRepresentante != lOther$bairroRepresentante) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$birthdateRepresentante = birthdateRepresentante;
    final lOther$birthdateRepresentante = other.birthdateRepresentante;
    if (_$data.containsKey('birthdateRepresentante') !=
        other._$data.containsKey('birthdateRepresentante')) {
      return false;
    }
    if (l$birthdateRepresentante != lOther$birthdateRepresentante) {
      return false;
    }
    final l$branchCheckDigit = branchCheckDigit;
    final lOther$branchCheckDigit = other.branchCheckDigit;
    if (l$branchCheckDigit != lOther$branchCheckDigit) {
      return false;
    }
    final l$branchNumber = branchNumber;
    final lOther$branchNumber = other.branchNumber;
    if (l$branchNumber != lOther$branchNumber) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cepRepresentante = cepRepresentante;
    final lOther$cepRepresentante = other.cepRepresentante;
    if (_$data.containsKey('cepRepresentante') !=
        other._$data.containsKey('cepRepresentante')) {
      return false;
    }
    if (l$cepRepresentante != lOther$cepRepresentante) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$cidadeRepresentante = cidadeRepresentante;
    final lOther$cidadeRepresentante = other.cidadeRepresentante;
    if (_$data.containsKey('cidadeRepresentante') !=
        other._$data.containsKey('cidadeRepresentante')) {
      return false;
    }
    if (l$cidadeRepresentante != lOther$cidadeRepresentante) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (_$data.containsKey('companyName') !=
        other._$data.containsKey('companyName')) {
      return false;
    }
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$complementoRepresentante = complementoRepresentante;
    final lOther$complementoRepresentante = other.complementoRepresentante;
    if (_$data.containsKey('complementoRepresentante') !=
        other._$data.containsKey('complementoRepresentante')) {
      return false;
    }
    if (l$complementoRepresentante != lOther$complementoRepresentante) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
      return false;
    }
    final l$documentRepresentante = documentRepresentante;
    final lOther$documentRepresentante = other.documentRepresentante;
    if (_$data.containsKey('documentRepresentante') !=
        other._$data.containsKey('documentRepresentante')) {
      return false;
    }
    if (l$documentRepresentante != lOther$documentRepresentante) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$emailRepresentante = emailRepresentante;
    final lOther$emailRepresentante = other.emailRepresentante;
    if (_$data.containsKey('emailRepresentante') !=
        other._$data.containsKey('emailRepresentante')) {
      return false;
    }
    if (l$emailRepresentante != lOther$emailRepresentante) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$estadoRepresentante = estadoRepresentante;
    final lOther$estadoRepresentante = other.estadoRepresentante;
    if (_$data.containsKey('estadoRepresentante') !=
        other._$data.containsKey('estadoRepresentante')) {
      return false;
    }
    if (l$estadoRepresentante != lOther$estadoRepresentante) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$holderDocument = holderDocument;
    final lOther$holderDocument = other.holderDocument;
    if (l$holderDocument != lOther$holderDocument) {
      return false;
    }
    final l$holderName = holderName;
    final lOther$holderName = other.holderName;
    if (l$holderName != lOther$holderName) {
      return false;
    }
    final l$holderType = holderType;
    final lOther$holderType = other.holderType;
    if (l$holderType != lOther$holderType) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$logradouroRepresentante = logradouroRepresentante;
    final lOther$logradouroRepresentante = other.logradouroRepresentante;
    if (_$data.containsKey('logradouroRepresentante') !=
        other._$data.containsKey('logradouroRepresentante')) {
      return false;
    }
    if (l$logradouroRepresentante != lOther$logradouroRepresentante) {
      return false;
    }
    final l$monthlyIncome = monthlyIncome;
    final lOther$monthlyIncome = other.monthlyIncome;
    if (_$data.containsKey('monthlyIncome') !=
        other._$data.containsKey('monthlyIncome')) {
      return false;
    }
    if (l$monthlyIncome != lOther$monthlyIncome) {
      return false;
    }
    final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
    final lOther$monthlyIncomeRepresentante = other.monthlyIncomeRepresentante;
    if (_$data.containsKey('monthlyIncomeRepresentante') !=
        other._$data.containsKey('monthlyIncomeRepresentante')) {
      return false;
    }
    if (l$monthlyIncomeRepresentante != lOther$monthlyIncomeRepresentante) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$nameRepresentante = nameRepresentante;
    final lOther$nameRepresentante = other.nameRepresentante;
    if (_$data.containsKey('nameRepresentante') !=
        other._$data.containsKey('nameRepresentante')) {
      return false;
    }
    if (l$nameRepresentante != lOther$nameRepresentante) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$numeroRepresentante = numeroRepresentante;
    final lOther$numeroRepresentante = other.numeroRepresentante;
    if (_$data.containsKey('numeroRepresentante') !=
        other._$data.containsKey('numeroRepresentante')) {
      return false;
    }
    if (l$numeroRepresentante != lOther$numeroRepresentante) {
      return false;
    }
    final l$professionalOccupation = professionalOccupation;
    final lOther$professionalOccupation = other.professionalOccupation;
    if (_$data.containsKey('professionalOccupation') !=
        other._$data.containsKey('professionalOccupation')) {
      return false;
    }
    if (l$professionalOccupation != lOther$professionalOccupation) {
      return false;
    }
    final l$professionalOccupationRepresentante =
        professionalOccupationRepresentante;
    final lOther$professionalOccupationRepresentante =
        other.professionalOccupationRepresentante;
    if (_$data.containsKey('professionalOccupationRepresentante') !=
        other._$data.containsKey('professionalOccupationRepresentante')) {
      return false;
    }
    if (l$professionalOccupationRepresentante !=
        lOther$professionalOccupationRepresentante) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (l$telefone != lOther$telefone) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$tradingName = tradingName;
    final lOther$tradingName = other.tradingName;
    if (_$data.containsKey('tradingName') !=
        other._$data.containsKey('tradingName')) {
      return false;
    }
    if (l$tradingName != lOther$tradingName) {
      return false;
    }
    final l$transferEnabled = transferEnabled;
    final lOther$transferEnabled = other.transferEnabled;
    if (l$transferEnabled != lOther$transferEnabled) {
      return false;
    }
    final l$transferInterval = transferInterval;
    final lOther$transferInterval = other.transferInterval;
    if (l$transferInterval != lOther$transferInterval) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountCheckDigit = accountCheckDigit;
    final l$accountNumber = accountNumber;
    final l$annualRevenue = annualRevenue;
    final l$bairro = bairro;
    final l$bairroRepresentante = bairroRepresentante;
    final l$bank = bank;
    final l$birthdate = birthdate;
    final l$birthdateRepresentante = birthdateRepresentante;
    final l$branchCheckDigit = branchCheckDigit;
    final l$branchNumber = branchNumber;
    final l$cep = cep;
    final l$cepRepresentante = cepRepresentante;
    final l$cidade = cidade;
    final l$cidadeRepresentante = cidadeRepresentante;
    final l$companyName = companyName;
    final l$complemento = complemento;
    final l$complementoRepresentante = complementoRepresentante;
    final l$descricao = descricao;
    final l$document = document;
    final l$documentRepresentante = documentRepresentante;
    final l$email = email;
    final l$emailRepresentante = emailRepresentante;
    final l$estado = estado;
    final l$estadoRepresentante = estadoRepresentante;
    final l$evento = evento;
    final l$holderDocument = holderDocument;
    final l$holderName = holderName;
    final l$holderType = holderType;
    final l$logradouro = logradouro;
    final l$logradouroRepresentante = logradouroRepresentante;
    final l$monthlyIncome = monthlyIncome;
    final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
    final l$name = name;
    final l$nameRepresentante = nameRepresentante;
    final l$numero = numero;
    final l$numeroRepresentante = numeroRepresentante;
    final l$professionalOccupation = professionalOccupation;
    final l$professionalOccupationRepresentante =
        professionalOccupationRepresentante;
    final l$telefone = telefone;
    final l$tipo = tipo;
    final l$tradingName = tradingName;
    final l$transferEnabled = transferEnabled;
    final l$transferInterval = transferInterval;
    final l$type = type;
    return Object.hashAll([
      l$accountCheckDigit,
      l$accountNumber,
      _$data.containsKey('annualRevenue') ? l$annualRevenue : const {},
      l$bairro,
      _$data.containsKey('bairroRepresentante')
          ? l$bairroRepresentante
          : const {},
      l$bank,
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('birthdateRepresentante')
          ? l$birthdateRepresentante
          : const {},
      l$branchCheckDigit,
      l$branchNumber,
      l$cep,
      _$data.containsKey('cepRepresentante') ? l$cepRepresentante : const {},
      l$cidade,
      _$data.containsKey('cidadeRepresentante')
          ? l$cidadeRepresentante
          : const {},
      _$data.containsKey('companyName') ? l$companyName : const {},
      l$complemento,
      _$data.containsKey('complementoRepresentante')
          ? l$complementoRepresentante
          : const {},
      l$descricao,
      l$document,
      _$data.containsKey('documentRepresentante')
          ? l$documentRepresentante
          : const {},
      l$email,
      _$data.containsKey('emailRepresentante')
          ? l$emailRepresentante
          : const {},
      l$estado,
      _$data.containsKey('estadoRepresentante')
          ? l$estadoRepresentante
          : const {},
      l$evento,
      l$holderDocument,
      l$holderName,
      l$holderType,
      l$logradouro,
      _$data.containsKey('logradouroRepresentante')
          ? l$logradouroRepresentante
          : const {},
      _$data.containsKey('monthlyIncome') ? l$monthlyIncome : const {},
      _$data.containsKey('monthlyIncomeRepresentante')
          ? l$monthlyIncomeRepresentante
          : const {},
      l$name,
      _$data.containsKey('nameRepresentante') ? l$nameRepresentante : const {},
      l$numero,
      _$data.containsKey('numeroRepresentante')
          ? l$numeroRepresentante
          : const {},
      _$data.containsKey('professionalOccupation')
          ? l$professionalOccupation
          : const {},
      _$data.containsKey('professionalOccupationRepresentante')
          ? l$professionalOccupationRepresentante
          : const {},
      l$telefone,
      l$tipo,
      _$data.containsKey('tradingName') ? l$tradingName : const {},
      l$transferEnabled,
      l$transferInterval,
      l$type,
    ]);
  }
}

class Input$CriarVendaPosInput {
  factory Input$CriarVendaPosInput({
    List<int>? cardapios,
    required String cpf,
    required int evento,
    List<int>? ingressos,
    required int status,
    required int tipo,
    required int tipoPagamento,
    required double valor,
  }) => Input$CriarVendaPosInput._({
    if (cardapios != null) r'cardapios': cardapios,
    r'cpf': cpf,
    r'evento': evento,
    if (ingressos != null) r'ingressos': ingressos,
    r'status': status,
    r'tipo': tipo,
    r'tipoPagamento': tipoPagamento,
    r'valor': valor,
  });

  Input$CriarVendaPosInput._(this._$data);

  factory Input$CriarVendaPosInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cardapios')) {
      final l$cardapios = data['cardapios'];
      result$data['cardapios'] = (l$cardapios as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    final l$cpf = data['cpf'];
    result$data['cpf'] = (l$cpf as String);
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    if (data.containsKey('ingressos')) {
      final l$ingressos = data['ingressos'];
      result$data['ingressos'] = (l$ingressos as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    final l$status = data['status'];
    result$data['status'] = (l$status as int);
    final l$tipo = data['tipo'];
    result$data['tipo'] = (l$tipo as int);
    final l$tipoPagamento = data['tipoPagamento'];
    result$data['tipoPagamento'] = (l$tipoPagamento as int);
    final l$valor = data['valor'];
    result$data['valor'] = (l$valor as num).toDouble();
    return Input$CriarVendaPosInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<int>? get cardapios => (_$data['cardapios'] as List<int>?);

  String get cpf => (_$data['cpf'] as String);

  int get evento => (_$data['evento'] as int);

  List<int>? get ingressos => (_$data['ingressos'] as List<int>?);

  int get status => (_$data['status'] as int);

  int get tipo => (_$data['tipo'] as int);

  int get tipoPagamento => (_$data['tipoPagamento'] as int);

  double get valor => (_$data['valor'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cardapios')) {
      final l$cardapios = cardapios;
      result$data['cardapios'] = l$cardapios?.map((e) => e).toList();
    }
    final l$cpf = cpf;
    result$data['cpf'] = l$cpf;
    final l$evento = evento;
    result$data['evento'] = l$evento;
    if (_$data.containsKey('ingressos')) {
      final l$ingressos = ingressos;
      result$data['ingressos'] = l$ingressos?.map((e) => e).toList();
    }
    final l$status = status;
    result$data['status'] = l$status;
    final l$tipo = tipo;
    result$data['tipo'] = l$tipo;
    final l$tipoPagamento = tipoPagamento;
    result$data['tipoPagamento'] = l$tipoPagamento;
    final l$valor = valor;
    result$data['valor'] = l$valor;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CriarVendaPosInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapios = cardapios;
    final lOther$cardapios = other.cardapios;
    if (_$data.containsKey('cardapios') !=
        other._$data.containsKey('cardapios')) {
      return false;
    }
    if (l$cardapios != null && lOther$cardapios != null) {
      if (l$cardapios.length != lOther$cardapios.length) {
        return false;
      }
      for (int i = 0; i < l$cardapios.length; i++) {
        final l$cardapios$entry = l$cardapios[i];
        final lOther$cardapios$entry = lOther$cardapios[i];
        if (l$cardapios$entry != lOther$cardapios$entry) {
          return false;
        }
      }
    } else if (l$cardapios != lOther$cardapios) {
      return false;
    }
    final l$cpf = cpf;
    final lOther$cpf = other.cpf;
    if (l$cpf != lOther$cpf) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$ingressos = ingressos;
    final lOther$ingressos = other.ingressos;
    if (_$data.containsKey('ingressos') !=
        other._$data.containsKey('ingressos')) {
      return false;
    }
    if (l$ingressos != null && lOther$ingressos != null) {
      if (l$ingressos.length != lOther$ingressos.length) {
        return false;
      }
      for (int i = 0; i < l$ingressos.length; i++) {
        final l$ingressos$entry = l$ingressos[i];
        final lOther$ingressos$entry = lOther$ingressos[i];
        if (l$ingressos$entry != lOther$ingressos$entry) {
          return false;
        }
      }
    } else if (l$ingressos != lOther$ingressos) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$tipoPagamento = tipoPagamento;
    final lOther$tipoPagamento = other.tipoPagamento;
    if (l$tipoPagamento != lOther$tipoPagamento) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapios = cardapios;
    final l$cpf = cpf;
    final l$evento = evento;
    final l$ingressos = ingressos;
    final l$status = status;
    final l$tipo = tipo;
    final l$tipoPagamento = tipoPagamento;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('cardapios')
          ? l$cardapios == null
                ? null
                : Object.hashAll(l$cardapios.map((v) => v))
          : const {},
      l$cpf,
      l$evento,
      _$data.containsKey('ingressos')
          ? l$ingressos == null
                ? null
                : Object.hashAll(l$ingressos.map((v) => v))
          : const {},
      l$status,
      l$tipo,
      l$tipoPagamento,
      l$valor,
    ]);
  }
}

class Input$DashHomeInputDto {
  factory Input$DashHomeInputDto({
    required String dataInicio,
    required double uuid,
  }) => Input$DashHomeInputDto._({r'dataInicio': dataInicio, r'uuid': uuid});

  Input$DashHomeInputDto._(this._$data);

  factory Input$DashHomeInputDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$dataInicio = data['dataInicio'];
    result$data['dataInicio'] = (l$dataInicio as String);
    final l$uuid = data['uuid'];
    result$data['uuid'] = (l$uuid as num).toDouble();
    return Input$DashHomeInputDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get dataInicio => (_$data['dataInicio'] as String);

  double get uuid => (_$data['uuid'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$dataInicio = dataInicio;
    result$data['dataInicio'] = l$dataInicio;
    final l$uuid = uuid;
    result$data['uuid'] = l$uuid;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DashHomeInputDto || runtimeType != other.runtimeType) {
      return false;
    }
    final l$dataInicio = dataInicio;
    final lOther$dataInicio = other.dataInicio;
    if (l$dataInicio != lOther$dataInicio) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dataInicio = dataInicio;
    final l$uuid = uuid;
    return Object.hashAll([l$dataInicio, l$uuid]);
  }
}

class Input$DuplicarEventoInput {
  factory Input$DuplicarEventoInput({
    required bool duplicarCodigos,
    required bool duplicarCortesias,
    required bool duplicarCupons,
    required bool duplicarEquipe,
    required bool duplicarIngressos,
    required bool duplicarLotes,
    required double eventoId,
  }) => Input$DuplicarEventoInput._({
    r'duplicarCodigos': duplicarCodigos,
    r'duplicarCortesias': duplicarCortesias,
    r'duplicarCupons': duplicarCupons,
    r'duplicarEquipe': duplicarEquipe,
    r'duplicarIngressos': duplicarIngressos,
    r'duplicarLotes': duplicarLotes,
    r'eventoId': eventoId,
  });

  Input$DuplicarEventoInput._(this._$data);

  factory Input$DuplicarEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$duplicarCodigos = data['duplicarCodigos'];
    result$data['duplicarCodigos'] = (l$duplicarCodigos as bool);
    final l$duplicarCortesias = data['duplicarCortesias'];
    result$data['duplicarCortesias'] = (l$duplicarCortesias as bool);
    final l$duplicarCupons = data['duplicarCupons'];
    result$data['duplicarCupons'] = (l$duplicarCupons as bool);
    final l$duplicarEquipe = data['duplicarEquipe'];
    result$data['duplicarEquipe'] = (l$duplicarEquipe as bool);
    final l$duplicarIngressos = data['duplicarIngressos'];
    result$data['duplicarIngressos'] = (l$duplicarIngressos as bool);
    final l$duplicarLotes = data['duplicarLotes'];
    result$data['duplicarLotes'] = (l$duplicarLotes as bool);
    final l$eventoId = data['eventoId'];
    result$data['eventoId'] = (l$eventoId as num).toDouble();
    return Input$DuplicarEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get duplicarCodigos => (_$data['duplicarCodigos'] as bool);

  bool get duplicarCortesias => (_$data['duplicarCortesias'] as bool);

  bool get duplicarCupons => (_$data['duplicarCupons'] as bool);

  bool get duplicarEquipe => (_$data['duplicarEquipe'] as bool);

  bool get duplicarIngressos => (_$data['duplicarIngressos'] as bool);

  bool get duplicarLotes => (_$data['duplicarLotes'] as bool);

  double get eventoId => (_$data['eventoId'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$duplicarCodigos = duplicarCodigos;
    result$data['duplicarCodigos'] = l$duplicarCodigos;
    final l$duplicarCortesias = duplicarCortesias;
    result$data['duplicarCortesias'] = l$duplicarCortesias;
    final l$duplicarCupons = duplicarCupons;
    result$data['duplicarCupons'] = l$duplicarCupons;
    final l$duplicarEquipe = duplicarEquipe;
    result$data['duplicarEquipe'] = l$duplicarEquipe;
    final l$duplicarIngressos = duplicarIngressos;
    result$data['duplicarIngressos'] = l$duplicarIngressos;
    final l$duplicarLotes = duplicarLotes;
    result$data['duplicarLotes'] = l$duplicarLotes;
    final l$eventoId = eventoId;
    result$data['eventoId'] = l$eventoId;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DuplicarEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$duplicarCodigos = duplicarCodigos;
    final lOther$duplicarCodigos = other.duplicarCodigos;
    if (l$duplicarCodigos != lOther$duplicarCodigos) {
      return false;
    }
    final l$duplicarCortesias = duplicarCortesias;
    final lOther$duplicarCortesias = other.duplicarCortesias;
    if (l$duplicarCortesias != lOther$duplicarCortesias) {
      return false;
    }
    final l$duplicarCupons = duplicarCupons;
    final lOther$duplicarCupons = other.duplicarCupons;
    if (l$duplicarCupons != lOther$duplicarCupons) {
      return false;
    }
    final l$duplicarEquipe = duplicarEquipe;
    final lOther$duplicarEquipe = other.duplicarEquipe;
    if (l$duplicarEquipe != lOther$duplicarEquipe) {
      return false;
    }
    final l$duplicarIngressos = duplicarIngressos;
    final lOther$duplicarIngressos = other.duplicarIngressos;
    if (l$duplicarIngressos != lOther$duplicarIngressos) {
      return false;
    }
    final l$duplicarLotes = duplicarLotes;
    final lOther$duplicarLotes = other.duplicarLotes;
    if (l$duplicarLotes != lOther$duplicarLotes) {
      return false;
    }
    final l$eventoId = eventoId;
    final lOther$eventoId = other.eventoId;
    if (l$eventoId != lOther$eventoId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$duplicarCodigos = duplicarCodigos;
    final l$duplicarCortesias = duplicarCortesias;
    final l$duplicarCupons = duplicarCupons;
    final l$duplicarEquipe = duplicarEquipe;
    final l$duplicarIngressos = duplicarIngressos;
    final l$duplicarLotes = duplicarLotes;
    final l$eventoId = eventoId;
    return Object.hashAll([
      l$duplicarCodigos,
      l$duplicarCortesias,
      l$duplicarCupons,
      l$duplicarEquipe,
      l$duplicarIngressos,
      l$duplicarLotes,
      l$eventoId,
    ]);
  }
}

class Input$EditarEventoInput {
  factory Input$EditarEventoInput({
    String? bairro,
    String? categoriaEventoId,
    String? cep,
    String? cidadeId,
    double? comissaoCardapio,
    double? comissaoIngresso,
    String? complemento,
    String? data,
    String? dataFim,
    String? descricao,
    String? estadoId,
    String? horario,
    required double id,
    String? imagem,
    double? inativo,
    String? latitude,
    String? local,
    String? logradouro,
    String? longitude,
    String? mapaEvento,
    String? nome,
    String? numero,
    double? status,
    bool? vendaIngresso,
  }) => Input$EditarEventoInput._({
    if (bairro != null) r'bairro': bairro,
    if (categoriaEventoId != null) r'categoriaEventoId': categoriaEventoId,
    if (cep != null) r'cep': cep,
    if (cidadeId != null) r'cidadeId': cidadeId,
    if (comissaoCardapio != null) r'comissaoCardapio': comissaoCardapio,
    if (comissaoIngresso != null) r'comissaoIngresso': comissaoIngresso,
    if (complemento != null) r'complemento': complemento,
    if (data != null) r'data': data,
    if (dataFim != null) r'dataFim': dataFim,
    if (descricao != null) r'descricao': descricao,
    if (estadoId != null) r'estadoId': estadoId,
    if (horario != null) r'horario': horario,
    r'id': id,
    if (imagem != null) r'imagem': imagem,
    if (inativo != null) r'inativo': inativo,
    if (latitude != null) r'latitude': latitude,
    if (local != null) r'local': local,
    if (logradouro != null) r'logradouro': logradouro,
    if (longitude != null) r'longitude': longitude,
    if (mapaEvento != null) r'mapaEvento': mapaEvento,
    if (nome != null) r'nome': nome,
    if (numero != null) r'numero': numero,
    if (status != null) r'status': status,
    if (vendaIngresso != null) r'vendaIngresso': vendaIngresso,
  });

  Input$EditarEventoInput._(this._$data);

  factory Input$EditarEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('categoriaEventoId')) {
      final l$categoriaEventoId = data['categoriaEventoId'];
      result$data['categoriaEventoId'] = (l$categoriaEventoId as String?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cidadeId')) {
      final l$cidadeId = data['cidadeId'];
      result$data['cidadeId'] = (l$cidadeId as String?);
    }
    if (data.containsKey('comissaoCardapio')) {
      final l$comissaoCardapio = data['comissaoCardapio'];
      result$data['comissaoCardapio'] = (l$comissaoCardapio as num?)
          ?.toDouble();
    }
    if (data.containsKey('comissaoIngresso')) {
      final l$comissaoIngresso = data['comissaoIngresso'];
      result$data['comissaoIngresso'] = (l$comissaoIngresso as num?)
          ?.toDouble();
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    if (data.containsKey('dataFim')) {
      final l$dataFim = data['dataFim'];
      result$data['dataFim'] = (l$dataFim as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('estadoId')) {
      final l$estadoId = data['estadoId'];
      result$data['estadoId'] = (l$estadoId as String?);
    }
    if (data.containsKey('horario')) {
      final l$horario = data['horario'];
      result$data['horario'] = (l$horario as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as num).toDouble();
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as num?)?.toDouble();
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = (l$latitude as String?);
    }
    if (data.containsKey('local')) {
      final l$local = data['local'];
      result$data['local'] = (l$local as String?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = (l$longitude as String?);
    }
    if (data.containsKey('mapaEvento')) {
      final l$mapaEvento = data['mapaEvento'];
      result$data['mapaEvento'] = (l$mapaEvento as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as num?)?.toDouble();
    }
    if (data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = data['vendaIngresso'];
      result$data['vendaIngresso'] = (l$vendaIngresso as bool?);
    }
    return Input$EditarEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bairro => (_$data['bairro'] as String?);

  String? get categoriaEventoId => (_$data['categoriaEventoId'] as String?);

  String? get cep => (_$data['cep'] as String?);

  String? get cidadeId => (_$data['cidadeId'] as String?);

  double? get comissaoCardapio => (_$data['comissaoCardapio'] as double?);

  double? get comissaoIngresso => (_$data['comissaoIngresso'] as double?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get data => (_$data['data'] as String?);

  String? get dataFim => (_$data['dataFim'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get estadoId => (_$data['estadoId'] as String?);

  String? get horario => (_$data['horario'] as String?);

  double get id => (_$data['id'] as double);

  String? get imagem => (_$data['imagem'] as String?);

  double? get inativo => (_$data['inativo'] as double?);

  String? get latitude => (_$data['latitude'] as String?);

  String? get local => (_$data['local'] as String?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get longitude => (_$data['longitude'] as String?);

  String? get mapaEvento => (_$data['mapaEvento'] as String?);

  String? get nome => (_$data['nome'] as String?);

  String? get numero => (_$data['numero'] as String?);

  double? get status => (_$data['status'] as double?);

  bool? get vendaIngresso => (_$data['vendaIngresso'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('categoriaEventoId')) {
      final l$categoriaEventoId = categoriaEventoId;
      result$data['categoriaEventoId'] = l$categoriaEventoId;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cidadeId')) {
      final l$cidadeId = cidadeId;
      result$data['cidadeId'] = l$cidadeId;
    }
    if (_$data.containsKey('comissaoCardapio')) {
      final l$comissaoCardapio = comissaoCardapio;
      result$data['comissaoCardapio'] = l$comissaoCardapio;
    }
    if (_$data.containsKey('comissaoIngresso')) {
      final l$comissaoIngresso = comissaoIngresso;
      result$data['comissaoIngresso'] = l$comissaoIngresso;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    if (_$data.containsKey('dataFim')) {
      final l$dataFim = dataFim;
      result$data['dataFim'] = l$dataFim;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('estadoId')) {
      final l$estadoId = estadoId;
      result$data['estadoId'] = l$estadoId;
    }
    if (_$data.containsKey('horario')) {
      final l$horario = horario;
      result$data['horario'] = l$horario;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude;
    }
    if (_$data.containsKey('local')) {
      final l$local = local;
      result$data['local'] = l$local;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude;
    }
    if (_$data.containsKey('mapaEvento')) {
      final l$mapaEvento = mapaEvento;
      result$data['mapaEvento'] = l$mapaEvento;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = vendaIngresso;
      result$data['vendaIngresso'] = l$vendaIngresso;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EditarEventoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$categoriaEventoId = categoriaEventoId;
    final lOther$categoriaEventoId = other.categoriaEventoId;
    if (_$data.containsKey('categoriaEventoId') !=
        other._$data.containsKey('categoriaEventoId')) {
      return false;
    }
    if (l$categoriaEventoId != lOther$categoriaEventoId) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cidadeId = cidadeId;
    final lOther$cidadeId = other.cidadeId;
    if (_$data.containsKey('cidadeId') !=
        other._$data.containsKey('cidadeId')) {
      return false;
    }
    if (l$cidadeId != lOther$cidadeId) {
      return false;
    }
    final l$comissaoCardapio = comissaoCardapio;
    final lOther$comissaoCardapio = other.comissaoCardapio;
    if (_$data.containsKey('comissaoCardapio') !=
        other._$data.containsKey('comissaoCardapio')) {
      return false;
    }
    if (l$comissaoCardapio != lOther$comissaoCardapio) {
      return false;
    }
    final l$comissaoIngresso = comissaoIngresso;
    final lOther$comissaoIngresso = other.comissaoIngresso;
    if (_$data.containsKey('comissaoIngresso') !=
        other._$data.containsKey('comissaoIngresso')) {
      return false;
    }
    if (l$comissaoIngresso != lOther$comissaoIngresso) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (_$data.containsKey('dataFim') != other._$data.containsKey('dataFim')) {
      return false;
    }
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$estadoId = estadoId;
    final lOther$estadoId = other.estadoId;
    if (_$data.containsKey('estadoId') !=
        other._$data.containsKey('estadoId')) {
      return false;
    }
    if (l$estadoId != lOther$estadoId) {
      return false;
    }
    final l$horario = horario;
    final lOther$horario = other.horario;
    if (_$data.containsKey('horario') != other._$data.containsKey('horario')) {
      return false;
    }
    if (l$horario != lOther$horario) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$local = local;
    final lOther$local = other.local;
    if (_$data.containsKey('local') != other._$data.containsKey('local')) {
      return false;
    }
    if (l$local != lOther$local) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$mapaEvento = mapaEvento;
    final lOther$mapaEvento = other.mapaEvento;
    if (_$data.containsKey('mapaEvento') !=
        other._$data.containsKey('mapaEvento')) {
      return false;
    }
    if (l$mapaEvento != lOther$mapaEvento) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$vendaIngresso = vendaIngresso;
    final lOther$vendaIngresso = other.vendaIngresso;
    if (_$data.containsKey('vendaIngresso') !=
        other._$data.containsKey('vendaIngresso')) {
      return false;
    }
    if (l$vendaIngresso != lOther$vendaIngresso) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bairro = bairro;
    final l$categoriaEventoId = categoriaEventoId;
    final l$cep = cep;
    final l$cidadeId = cidadeId;
    final l$comissaoCardapio = comissaoCardapio;
    final l$comissaoIngresso = comissaoIngresso;
    final l$complemento = complemento;
    final l$data = data;
    final l$dataFim = dataFim;
    final l$descricao = descricao;
    final l$estadoId = estadoId;
    final l$horario = horario;
    final l$id = id;
    final l$imagem = imagem;
    final l$inativo = inativo;
    final l$latitude = latitude;
    final l$local = local;
    final l$logradouro = logradouro;
    final l$longitude = longitude;
    final l$mapaEvento = mapaEvento;
    final l$nome = nome;
    final l$numero = numero;
    final l$status = status;
    final l$vendaIngresso = vendaIngresso;
    return Object.hashAll([
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('categoriaEventoId') ? l$categoriaEventoId : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cidadeId') ? l$cidadeId : const {},
      _$data.containsKey('comissaoCardapio') ? l$comissaoCardapio : const {},
      _$data.containsKey('comissaoIngresso') ? l$comissaoIngresso : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('data') ? l$data : const {},
      _$data.containsKey('dataFim') ? l$dataFim : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('estadoId') ? l$estadoId : const {},
      _$data.containsKey('horario') ? l$horario : const {},
      l$id,
      _$data.containsKey('imagem') ? l$imagem : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('local') ? l$local : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('mapaEvento') ? l$mapaEvento : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('vendaIngresso') ? l$vendaIngresso : const {},
    ]);
  }
}

class Input$EditarIngressoInput {
  factory Input$EditarIngressoInput({
    String? data,
    String? descricao,
    double? eventoId,
    double? limite,
    double? limitePorPessoa,
    String? local,
    double? loteId,
    String? nome,
    double? valor,
  }) => Input$EditarIngressoInput._({
    if (data != null) r'data': data,
    if (descricao != null) r'descricao': descricao,
    if (eventoId != null) r'eventoId': eventoId,
    if (limite != null) r'limite': limite,
    if (limitePorPessoa != null) r'limitePorPessoa': limitePorPessoa,
    if (local != null) r'local': local,
    if (loteId != null) r'loteId': loteId,
    if (nome != null) r'nome': nome,
    if (valor != null) r'valor': valor,
  });

  Input$EditarIngressoInput._(this._$data);

  factory Input$EditarIngressoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('eventoId')) {
      final l$eventoId = data['eventoId'];
      result$data['eventoId'] = (l$eventoId as num?)?.toDouble();
    }
    if (data.containsKey('limite')) {
      final l$limite = data['limite'];
      result$data['limite'] = (l$limite as num?)?.toDouble();
    }
    if (data.containsKey('limitePorPessoa')) {
      final l$limitePorPessoa = data['limitePorPessoa'];
      result$data['limitePorPessoa'] = (l$limitePorPessoa as num?)?.toDouble();
    }
    if (data.containsKey('local')) {
      final l$local = data['local'];
      result$data['local'] = (l$local as String?);
    }
    if (data.containsKey('loteId')) {
      final l$loteId = data['loteId'];
      result$data['loteId'] = (l$loteId as num?)?.toDouble();
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$EditarIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get data => (_$data['data'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  double? get eventoId => (_$data['eventoId'] as double?);

  double? get limite => (_$data['limite'] as double?);

  double? get limitePorPessoa => (_$data['limitePorPessoa'] as double?);

  String? get local => (_$data['local'] as String?);

  double? get loteId => (_$data['loteId'] as double?);

  String? get nome => (_$data['nome'] as String?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('eventoId')) {
      final l$eventoId = eventoId;
      result$data['eventoId'] = l$eventoId;
    }
    if (_$data.containsKey('limite')) {
      final l$limite = limite;
      result$data['limite'] = l$limite;
    }
    if (_$data.containsKey('limitePorPessoa')) {
      final l$limitePorPessoa = limitePorPessoa;
      result$data['limitePorPessoa'] = l$limitePorPessoa;
    }
    if (_$data.containsKey('local')) {
      final l$local = local;
      result$data['local'] = l$local;
    }
    if (_$data.containsKey('loteId')) {
      final l$loteId = loteId;
      result$data['loteId'] = l$loteId;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EditarIngressoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$eventoId = eventoId;
    final lOther$eventoId = other.eventoId;
    if (_$data.containsKey('eventoId') !=
        other._$data.containsKey('eventoId')) {
      return false;
    }
    if (l$eventoId != lOther$eventoId) {
      return false;
    }
    final l$limite = limite;
    final lOther$limite = other.limite;
    if (_$data.containsKey('limite') != other._$data.containsKey('limite')) {
      return false;
    }
    if (l$limite != lOther$limite) {
      return false;
    }
    final l$limitePorPessoa = limitePorPessoa;
    final lOther$limitePorPessoa = other.limitePorPessoa;
    if (_$data.containsKey('limitePorPessoa') !=
        other._$data.containsKey('limitePorPessoa')) {
      return false;
    }
    if (l$limitePorPessoa != lOther$limitePorPessoa) {
      return false;
    }
    final l$local = local;
    final lOther$local = other.local;
    if (_$data.containsKey('local') != other._$data.containsKey('local')) {
      return false;
    }
    if (l$local != lOther$local) {
      return false;
    }
    final l$loteId = loteId;
    final lOther$loteId = other.loteId;
    if (_$data.containsKey('loteId') != other._$data.containsKey('loteId')) {
      return false;
    }
    if (l$loteId != lOther$loteId) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$descricao = descricao;
    final l$eventoId = eventoId;
    final l$limite = limite;
    final l$limitePorPessoa = limitePorPessoa;
    final l$local = local;
    final l$loteId = loteId;
    final l$nome = nome;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('data') ? l$data : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('eventoId') ? l$eventoId : const {},
      _$data.containsKey('limite') ? l$limite : const {},
      _$data.containsKey('limitePorPessoa') ? l$limitePorPessoa : const {},
      _$data.containsKey('local') ? l$local : const {},
      _$data.containsKey('loteId') ? l$loteId : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$EditarPessoaInput {
  factory Input$EditarPessoaInput({
    String? bairro,
    String? cep,
    String? cidadeId,
    String? complemento,
    String? email,
    String? estadoId,
    required double id,
    String? logradouro,
    String? nickname,
    String? nome,
    String? numero,
    String? telefone,
  }) => Input$EditarPessoaInput._({
    if (bairro != null) r'bairro': bairro,
    if (cep != null) r'cep': cep,
    if (cidadeId != null) r'cidadeId': cidadeId,
    if (complemento != null) r'complemento': complemento,
    if (email != null) r'email': email,
    if (estadoId != null) r'estadoId': estadoId,
    r'id': id,
    if (logradouro != null) r'logradouro': logradouro,
    if (nickname != null) r'nickname': nickname,
    if (nome != null) r'nome': nome,
    if (numero != null) r'numero': numero,
    if (telefone != null) r'telefone': telefone,
  });

  Input$EditarPessoaInput._(this._$data);

  factory Input$EditarPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cidadeId')) {
      final l$cidadeId = data['cidadeId'];
      result$data['cidadeId'] = (l$cidadeId as String?);
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('estadoId')) {
      final l$estadoId = data['estadoId'];
      result$data['estadoId'] = (l$estadoId as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as num).toDouble();
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('nickname')) {
      final l$nickname = data['nickname'];
      result$data['nickname'] = (l$nickname as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('telefone')) {
      final l$telefone = data['telefone'];
      result$data['telefone'] = (l$telefone as String?);
    }
    return Input$EditarPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bairro => (_$data['bairro'] as String?);

  String? get cep => (_$data['cep'] as String?);

  String? get cidadeId => (_$data['cidadeId'] as String?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get estadoId => (_$data['estadoId'] as String?);

  double get id => (_$data['id'] as double);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get nickname => (_$data['nickname'] as String?);

  String? get nome => (_$data['nome'] as String?);

  String? get numero => (_$data['numero'] as String?);

  String? get telefone => (_$data['telefone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cidadeId')) {
      final l$cidadeId = cidadeId;
      result$data['cidadeId'] = l$cidadeId;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('estadoId')) {
      final l$estadoId = estadoId;
      result$data['estadoId'] = l$estadoId;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('nickname')) {
      final l$nickname = nickname;
      result$data['nickname'] = l$nickname;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('telefone')) {
      final l$telefone = telefone;
      result$data['telefone'] = l$telefone;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EditarPessoaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cidadeId = cidadeId;
    final lOther$cidadeId = other.cidadeId;
    if (_$data.containsKey('cidadeId') !=
        other._$data.containsKey('cidadeId')) {
      return false;
    }
    if (l$cidadeId != lOther$cidadeId) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$estadoId = estadoId;
    final lOther$estadoId = other.estadoId;
    if (_$data.containsKey('estadoId') !=
        other._$data.containsKey('estadoId')) {
      return false;
    }
    if (l$estadoId != lOther$estadoId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (_$data.containsKey('nickname') !=
        other._$data.containsKey('nickname')) {
      return false;
    }
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (_$data.containsKey('telefone') !=
        other._$data.containsKey('telefone')) {
      return false;
    }
    if (l$telefone != lOther$telefone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bairro = bairro;
    final l$cep = cep;
    final l$cidadeId = cidadeId;
    final l$complemento = complemento;
    final l$email = email;
    final l$estadoId = estadoId;
    final l$id = id;
    final l$logradouro = logradouro;
    final l$nickname = nickname;
    final l$nome = nome;
    final l$numero = numero;
    final l$telefone = telefone;
    return Object.hashAll([
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cidadeId') ? l$cidadeId : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('estadoId') ? l$estadoId : const {},
      l$id,
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('nickname') ? l$nickname : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('telefone') ? l$telefone : const {},
    ]);
  }
}

class Input$EnviarIngressoCortesiaEmailsInput {
  factory Input$EnviarIngressoCortesiaEmailsInput({
    List<String>? emails,
    double? ingresso,
    double? quantidade,
  }) => Input$EnviarIngressoCortesiaEmailsInput._({
    if (emails != null) r'emails': emails,
    if (ingresso != null) r'ingresso': ingresso,
    if (quantidade != null) r'quantidade': quantidade,
  });

  Input$EnviarIngressoCortesiaEmailsInput._(this._$data);

  factory Input$EnviarIngressoCortesiaEmailsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('emails')) {
      final l$emails = data['emails'];
      result$data['emails'] = (l$emails as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('ingresso')) {
      final l$ingresso = data['ingresso'];
      result$data['ingresso'] = (l$ingresso as num?)?.toDouble();
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as num?)?.toDouble();
    }
    return Input$EnviarIngressoCortesiaEmailsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get emails => (_$data['emails'] as List<String>?);

  double? get ingresso => (_$data['ingresso'] as double?);

  double? get quantidade => (_$data['quantidade'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('emails')) {
      final l$emails = emails;
      result$data['emails'] = l$emails?.map((e) => e).toList();
    }
    if (_$data.containsKey('ingresso')) {
      final l$ingresso = ingresso;
      result$data['ingresso'] = l$ingresso;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EnviarIngressoCortesiaEmailsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$emails = emails;
    final lOther$emails = other.emails;
    if (_$data.containsKey('emails') != other._$data.containsKey('emails')) {
      return false;
    }
    if (l$emails != null && lOther$emails != null) {
      if (l$emails.length != lOther$emails.length) {
        return false;
      }
      for (int i = 0; i < l$emails.length; i++) {
        final l$emails$entry = l$emails[i];
        final lOther$emails$entry = lOther$emails[i];
        if (l$emails$entry != lOther$emails$entry) {
          return false;
        }
      }
    } else if (l$emails != lOther$emails) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (_$data.containsKey('ingresso') !=
        other._$data.containsKey('ingresso')) {
      return false;
    }
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$emails = emails;
    final l$ingresso = ingresso;
    final l$quantidade = quantidade;
    return Object.hashAll([
      _$data.containsKey('emails')
          ? l$emails == null
                ? null
                : Object.hashAll(l$emails.map((v) => v))
          : const {},
      _$data.containsKey('ingresso') ? l$ingresso : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
    ]);
  }
}

class Input$EnviarIngressoCortesiaInput {
  factory Input$EnviarIngressoCortesiaInput({
    double? ingresso,
    double? pessoa,
    double? quantidade,
  }) => Input$EnviarIngressoCortesiaInput._({
    if (ingresso != null) r'ingresso': ingresso,
    if (pessoa != null) r'pessoa': pessoa,
    if (quantidade != null) r'quantidade': quantidade,
  });

  Input$EnviarIngressoCortesiaInput._(this._$data);

  factory Input$EnviarIngressoCortesiaInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ingresso')) {
      final l$ingresso = data['ingresso'];
      result$data['ingresso'] = (l$ingresso as num?)?.toDouble();
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as num?)?.toDouble();
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as num?)?.toDouble();
    }
    return Input$EnviarIngressoCortesiaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get ingresso => (_$data['ingresso'] as double?);

  double? get pessoa => (_$data['pessoa'] as double?);

  double? get quantidade => (_$data['quantidade'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ingresso')) {
      final l$ingresso = ingresso;
      result$data['ingresso'] = l$ingresso;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EnviarIngressoCortesiaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (_$data.containsKey('ingresso') !=
        other._$data.containsKey('ingresso')) {
      return false;
    }
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ingresso = ingresso;
    final l$pessoa = pessoa;
    final l$quantidade = quantidade;
    return Object.hashAll([
      _$data.containsKey('ingresso') ? l$ingresso : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
    ]);
  }
}

class Input$GetBancoInput {
  factory Input$GetBancoInput({
    int? createdBy,
    String? createdOn,
    int? id,
    int? lastEditBy,
    String? lastEditOn,
    String? nome,
    double? numBanco,
    String? site,
  }) => Input$GetBancoInput._({
    if (createdBy != null) r'createdBy': createdBy,
    if (createdOn != null) r'createdOn': createdOn,
    if (id != null) r'id': id,
    if (lastEditBy != null) r'lastEditBy': lastEditBy,
    if (lastEditOn != null) r'lastEditOn': lastEditOn,
    if (nome != null) r'nome': nome,
    if (numBanco != null) r'numBanco': numBanco,
    if (site != null) r'site': site,
  });

  Input$GetBancoInput._(this._$data);

  factory Input$GetBancoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as int?);
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = (l$createdOn as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('lastEditBy')) {
      final l$lastEditBy = data['lastEditBy'];
      result$data['lastEditBy'] = (l$lastEditBy as int?);
    }
    if (data.containsKey('lastEditOn')) {
      final l$lastEditOn = data['lastEditOn'];
      result$data['lastEditOn'] = (l$lastEditOn as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('numBanco')) {
      final l$numBanco = data['numBanco'];
      result$data['numBanco'] = (l$numBanco as num?)?.toDouble();
    }
    if (data.containsKey('site')) {
      final l$site = data['site'];
      result$data['site'] = (l$site as String?);
    }
    return Input$GetBancoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get createdBy => (_$data['createdBy'] as int?);

  String? get createdOn => (_$data['createdOn'] as String?);

  int? get id => (_$data['id'] as int?);

  int? get lastEditBy => (_$data['lastEditBy'] as int?);

  String? get lastEditOn => (_$data['lastEditOn'] as String?);

  String? get nome => (_$data['nome'] as String?);

  double? get numBanco => (_$data['numBanco'] as double?);

  String? get site => (_$data['site'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('lastEditBy')) {
      final l$lastEditBy = lastEditBy;
      result$data['lastEditBy'] = l$lastEditBy;
    }
    if (_$data.containsKey('lastEditOn')) {
      final l$lastEditOn = lastEditOn;
      result$data['lastEditOn'] = l$lastEditOn;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('numBanco')) {
      final l$numBanco = numBanco;
      result$data['numBanco'] = l$numBanco;
    }
    if (_$data.containsKey('site')) {
      final l$site = site;
      result$data['site'] = l$site;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetBancoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$lastEditBy = lastEditBy;
    final lOther$lastEditBy = other.lastEditBy;
    if (_$data.containsKey('lastEditBy') !=
        other._$data.containsKey('lastEditBy')) {
      return false;
    }
    if (l$lastEditBy != lOther$lastEditBy) {
      return false;
    }
    final l$lastEditOn = lastEditOn;
    final lOther$lastEditOn = other.lastEditOn;
    if (_$data.containsKey('lastEditOn') !=
        other._$data.containsKey('lastEditOn')) {
      return false;
    }
    if (l$lastEditOn != lOther$lastEditOn) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numBanco = numBanco;
    final lOther$numBanco = other.numBanco;
    if (_$data.containsKey('numBanco') !=
        other._$data.containsKey('numBanco')) {
      return false;
    }
    if (l$numBanco != lOther$numBanco) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (_$data.containsKey('site') != other._$data.containsKey('site')) {
      return false;
    }
    if (l$site != lOther$site) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdBy = createdBy;
    final l$createdOn = createdOn;
    final l$id = id;
    final l$lastEditBy = lastEditBy;
    final l$lastEditOn = lastEditOn;
    final l$nome = nome;
    final l$numBanco = numBanco;
    final l$site = site;
    return Object.hashAll([
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEditBy') ? l$lastEditBy : const {},
      _$data.containsKey('lastEditOn') ? l$lastEditOn : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('numBanco') ? l$numBanco : const {},
      _$data.containsKey('site') ? l$site : const {},
    ]);
  }
}

class Input$GetCardapioInput {
  factory Input$GetCardapioInput({
    int? categoriaCardapio,
    int? createdBy,
    String? createdIp,
    String? createdOn,
    String? descricao,
    int? evento,
    int? id,
    String? imagem,
    int? inativo,
    int? lastEditBy,
    String? lastEditOn,
    String? nome,
    int? quantidade,
    double? valor,
  }) => Input$GetCardapioInput._({
    if (categoriaCardapio != null) r'categoriaCardapio': categoriaCardapio,
    if (createdBy != null) r'createdBy': createdBy,
    if (createdIp != null) r'createdIp': createdIp,
    if (createdOn != null) r'createdOn': createdOn,
    if (descricao != null) r'descricao': descricao,
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (imagem != null) r'imagem': imagem,
    if (inativo != null) r'inativo': inativo,
    if (lastEditBy != null) r'lastEditBy': lastEditBy,
    if (lastEditOn != null) r'lastEditOn': lastEditOn,
    if (nome != null) r'nome': nome,
    if (quantidade != null) r'quantidade': quantidade,
    if (valor != null) r'valor': valor,
  });

  Input$GetCardapioInput._(this._$data);

  factory Input$GetCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('categoriaCardapio')) {
      final l$categoriaCardapio = data['categoriaCardapio'];
      result$data['categoriaCardapio'] = (l$categoriaCardapio as int?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as int?);
    }
    if (data.containsKey('createdIp')) {
      final l$createdIp = data['createdIp'];
      result$data['createdIp'] = (l$createdIp as String?);
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = (l$createdOn as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('lastEditBy')) {
      final l$lastEditBy = data['lastEditBy'];
      result$data['lastEditBy'] = (l$lastEditBy as int?);
    }
    if (data.containsKey('lastEditOn')) {
      final l$lastEditOn = data['lastEditOn'];
      result$data['lastEditOn'] = (l$lastEditOn as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$GetCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get categoriaCardapio => (_$data['categoriaCardapio'] as int?);

  int? get createdBy => (_$data['createdBy'] as int?);

  String? get createdIp => (_$data['createdIp'] as String?);

  String? get createdOn => (_$data['createdOn'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  String? get imagem => (_$data['imagem'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  int? get lastEditBy => (_$data['lastEditBy'] as int?);

  String? get lastEditOn => (_$data['lastEditOn'] as String?);

  String? get nome => (_$data['nome'] as String?);

  int? get quantidade => (_$data['quantidade'] as int?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('categoriaCardapio')) {
      final l$categoriaCardapio = categoriaCardapio;
      result$data['categoriaCardapio'] = l$categoriaCardapio;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('createdIp')) {
      final l$createdIp = createdIp;
      result$data['createdIp'] = l$createdIp;
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('lastEditBy')) {
      final l$lastEditBy = lastEditBy;
      result$data['lastEditBy'] = l$lastEditBy;
    }
    if (_$data.containsKey('lastEditOn')) {
      final l$lastEditOn = lastEditOn;
      result$data['lastEditOn'] = l$lastEditOn;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetCardapioInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categoriaCardapio = categoriaCardapio;
    final lOther$categoriaCardapio = other.categoriaCardapio;
    if (_$data.containsKey('categoriaCardapio') !=
        other._$data.containsKey('categoriaCardapio')) {
      return false;
    }
    if (l$categoriaCardapio != lOther$categoriaCardapio) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdIp = createdIp;
    final lOther$createdIp = other.createdIp;
    if (_$data.containsKey('createdIp') !=
        other._$data.containsKey('createdIp')) {
      return false;
    }
    if (l$createdIp != lOther$createdIp) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$lastEditBy = lastEditBy;
    final lOther$lastEditBy = other.lastEditBy;
    if (_$data.containsKey('lastEditBy') !=
        other._$data.containsKey('lastEditBy')) {
      return false;
    }
    if (l$lastEditBy != lOther$lastEditBy) {
      return false;
    }
    final l$lastEditOn = lastEditOn;
    final lOther$lastEditOn = other.lastEditOn;
    if (_$data.containsKey('lastEditOn') !=
        other._$data.containsKey('lastEditOn')) {
      return false;
    }
    if (l$lastEditOn != lOther$lastEditOn) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categoriaCardapio = categoriaCardapio;
    final l$createdBy = createdBy;
    final l$createdIp = createdIp;
    final l$createdOn = createdOn;
    final l$descricao = descricao;
    final l$evento = evento;
    final l$id = id;
    final l$imagem = imagem;
    final l$inativo = inativo;
    final l$lastEditBy = lastEditBy;
    final l$lastEditOn = lastEditOn;
    final l$nome = nome;
    final l$quantidade = quantidade;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('categoriaCardapio') ? l$categoriaCardapio : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdIp') ? l$createdIp : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagem') ? l$imagem : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('lastEditBy') ? l$lastEditBy : const {},
      _$data.containsKey('lastEditOn') ? l$lastEditOn : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$GetCategoriaCardapioInput {
  factory Input$GetCategoriaCardapioInput({
    int? evento,
    int? id,
    int? inativo,
    String? nome,
  }) => Input$GetCategoriaCardapioInput._({
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (nome != null) r'nome': nome,
  });

  Input$GetCategoriaCardapioInput._(this._$data);

  factory Input$GetCategoriaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    return Input$GetCategoriaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get nome => (_$data['nome'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetCategoriaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$inativo = inativo;
    final l$nome = nome;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('nome') ? l$nome : const {},
    ]);
  }
}

class Input$GetCategoriaEventoInput {
  factory Input$GetCategoriaEventoInput({
    int? id,
    int? inativo,
    String? nome,
  }) => Input$GetCategoriaEventoInput._({
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (nome != null) r'nome': nome,
  });

  Input$GetCategoriaEventoInput._(this._$data);

  factory Input$GetCategoriaEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    return Input$GetCategoriaEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get nome => (_$data['nome'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetCategoriaEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$inativo = inativo;
    final l$nome = nome;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('nome') ? l$nome : const {},
    ]);
  }
}

class Input$GetCidadeInput {
  factory Input$GetCidadeInput({
    int? createdBy,
    String? createdOn,
    int? estado,
    int? id,
    int? lastEditBy,
    String? lastEditOn,
    String? nome,
    String? nomeSem,
  }) => Input$GetCidadeInput._({
    if (createdBy != null) r'createdBy': createdBy,
    if (createdOn != null) r'createdOn': createdOn,
    if (estado != null) r'estado': estado,
    if (id != null) r'id': id,
    if (lastEditBy != null) r'lastEditBy': lastEditBy,
    if (lastEditOn != null) r'lastEditOn': lastEditOn,
    if (nome != null) r'nome': nome,
    if (nomeSem != null) r'nomeSem': nomeSem,
  });

  Input$GetCidadeInput._(this._$data);

  factory Input$GetCidadeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as int?);
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = (l$createdOn as String?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('lastEditBy')) {
      final l$lastEditBy = data['lastEditBy'];
      result$data['lastEditBy'] = (l$lastEditBy as int?);
    }
    if (data.containsKey('lastEditOn')) {
      final l$lastEditOn = data['lastEditOn'];
      result$data['lastEditOn'] = (l$lastEditOn as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('nomeSem')) {
      final l$nomeSem = data['nomeSem'];
      result$data['nomeSem'] = (l$nomeSem as String?);
    }
    return Input$GetCidadeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get createdBy => (_$data['createdBy'] as int?);

  String? get createdOn => (_$data['createdOn'] as String?);

  int? get estado => (_$data['estado'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get lastEditBy => (_$data['lastEditBy'] as int?);

  String? get lastEditOn => (_$data['lastEditOn'] as String?);

  String? get nome => (_$data['nome'] as String?);

  String? get nomeSem => (_$data['nomeSem'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('lastEditBy')) {
      final l$lastEditBy = lastEditBy;
      result$data['lastEditBy'] = l$lastEditBy;
    }
    if (_$data.containsKey('lastEditOn')) {
      final l$lastEditOn = lastEditOn;
      result$data['lastEditOn'] = l$lastEditOn;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('nomeSem')) {
      final l$nomeSem = nomeSem;
      result$data['nomeSem'] = l$nomeSem;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetCidadeInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$lastEditBy = lastEditBy;
    final lOther$lastEditBy = other.lastEditBy;
    if (_$data.containsKey('lastEditBy') !=
        other._$data.containsKey('lastEditBy')) {
      return false;
    }
    if (l$lastEditBy != lOther$lastEditBy) {
      return false;
    }
    final l$lastEditOn = lastEditOn;
    final lOther$lastEditOn = other.lastEditOn;
    if (_$data.containsKey('lastEditOn') !=
        other._$data.containsKey('lastEditOn')) {
      return false;
    }
    if (l$lastEditOn != lOther$lastEditOn) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$nomeSem = nomeSem;
    final lOther$nomeSem = other.nomeSem;
    if (_$data.containsKey('nomeSem') != other._$data.containsKey('nomeSem')) {
      return false;
    }
    if (l$nomeSem != lOther$nomeSem) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdBy = createdBy;
    final l$createdOn = createdOn;
    final l$estado = estado;
    final l$id = id;
    final l$lastEditBy = lastEditBy;
    final l$lastEditOn = lastEditOn;
    final l$nome = nome;
    final l$nomeSem = nomeSem;
    return Object.hashAll([
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEditBy') ? l$lastEditBy : const {},
      _$data.containsKey('lastEditOn') ? l$lastEditOn : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('nomeSem') ? l$nomeSem : const {},
    ]);
  }
}

class Input$GetCortesiaInput {
  factory Input$GetCortesiaInput({
    int? evento,
    int? id,
    int? ingresso,
    int? pessoaRecebe,
    String? quantidade,
    int? status,
  }) => Input$GetCortesiaInput._({
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (ingresso != null) r'ingresso': ingresso,
    if (pessoaRecebe != null) r'pessoaRecebe': pessoaRecebe,
    if (quantidade != null) r'quantidade': quantidade,
    if (status != null) r'status': status,
  });

  Input$GetCortesiaInput._(this._$data);

  factory Input$GetCortesiaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('ingresso')) {
      final l$ingresso = data['ingresso'];
      result$data['ingresso'] = (l$ingresso as int?);
    }
    if (data.containsKey('pessoaRecebe')) {
      final l$pessoaRecebe = data['pessoaRecebe'];
      result$data['pessoaRecebe'] = (l$pessoaRecebe as int?);
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    return Input$GetCortesiaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get ingresso => (_$data['ingresso'] as int?);

  int? get pessoaRecebe => (_$data['pessoaRecebe'] as int?);

  String? get quantidade => (_$data['quantidade'] as String?);

  int? get status => (_$data['status'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('ingresso')) {
      final l$ingresso = ingresso;
      result$data['ingresso'] = l$ingresso;
    }
    if (_$data.containsKey('pessoaRecebe')) {
      final l$pessoaRecebe = pessoaRecebe;
      result$data['pessoaRecebe'] = l$pessoaRecebe;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetCortesiaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (_$data.containsKey('ingresso') !=
        other._$data.containsKey('ingresso')) {
      return false;
    }
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$pessoaRecebe = pessoaRecebe;
    final lOther$pessoaRecebe = other.pessoaRecebe;
    if (_$data.containsKey('pessoaRecebe') !=
        other._$data.containsKey('pessoaRecebe')) {
      return false;
    }
    if (l$pessoaRecebe != lOther$pessoaRecebe) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$ingresso = ingresso;
    final l$pessoaRecebe = pessoaRecebe;
    final l$quantidade = quantidade;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('ingresso') ? l$ingresso : const {},
      _$data.containsKey('pessoaRecebe') ? l$pessoaRecebe : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

class Input$GetCupomDescontoInput {
  factory Input$GetCupomDescontoInput({
    String? cupom,
    int? evento,
    int? id,
    int? inativo,
    int? limite,
    int? tipo,
    double? valor,
  }) => Input$GetCupomDescontoInput._({
    if (cupom != null) r'cupom': cupom,
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (limite != null) r'limite': limite,
    if (tipo != null) r'tipo': tipo,
    if (valor != null) r'valor': valor,
  });

  Input$GetCupomDescontoInput._(this._$data);

  factory Input$GetCupomDescontoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cupom')) {
      final l$cupom = data['cupom'];
      result$data['cupom'] = (l$cupom as String?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('limite')) {
      final l$limite = data['limite'];
      result$data['limite'] = (l$limite as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$GetCupomDescontoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get cupom => (_$data['cupom'] as String?);

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get inativo => (_$data['inativo'] as int?);

  int? get limite => (_$data['limite'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cupom')) {
      final l$cupom = cupom;
      result$data['cupom'] = l$cupom;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('limite')) {
      final l$limite = limite;
      result$data['limite'] = l$limite;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetCupomDescontoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cupom = cupom;
    final lOther$cupom = other.cupom;
    if (_$data.containsKey('cupom') != other._$data.containsKey('cupom')) {
      return false;
    }
    if (l$cupom != lOther$cupom) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$limite = limite;
    final lOther$limite = other.limite;
    if (_$data.containsKey('limite') != other._$data.containsKey('limite')) {
      return false;
    }
    if (l$limite != lOther$limite) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cupom = cupom;
    final l$evento = evento;
    final l$id = id;
    final l$inativo = inativo;
    final l$limite = limite;
    final l$tipo = tipo;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('cupom') ? l$cupom : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('limite') ? l$limite : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$GetCurtiuEventoInput {
  factory Input$GetCurtiuEventoInput({int? evento, int? id, int? pessoa}) =>
      Input$GetCurtiuEventoInput._({
        if (evento != null) r'evento': evento,
        if (id != null) r'id': id,
        if (pessoa != null) r'pessoa': pessoa,
      });

  Input$GetCurtiuEventoInput._(this._$data);

  factory Input$GetCurtiuEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    return Input$GetCurtiuEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetCurtiuEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
    ]);
  }
}

class Input$GetCurtiuStorieInput {
  factory Input$GetCurtiuStorieInput({int? id, int? pessoa, int? stories}) =>
      Input$GetCurtiuStorieInput._({
        if (id != null) r'id': id,
        if (pessoa != null) r'pessoa': pessoa,
        if (stories != null) r'stories': stories,
      });

  Input$GetCurtiuStorieInput._(this._$data);

  factory Input$GetCurtiuStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('stories')) {
      final l$stories = data['stories'];
      result$data['stories'] = (l$stories as int?);
    }
    return Input$GetCurtiuStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get stories => (_$data['stories'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('stories')) {
      final l$stories = stories;
      result$data['stories'] = l$stories;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetCurtiuStorieInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$stories = stories;
    final lOther$stories = other.stories;
    if (_$data.containsKey('stories') != other._$data.containsKey('stories')) {
      return false;
    }
    if (l$stories != lOther$stories) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$pessoa = pessoa;
    final l$stories = stories;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('stories') ? l$stories : const {},
    ]);
  }
}

class Input$GetEquipeEventoInput {
  factory Input$GetEquipeEventoInput({
    int? evento,
    int? id,
    int? pessoa,
    int? tipo,
  }) => Input$GetEquipeEventoInput._({
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
    if (tipo != null) r'tipo': tipo,
  });

  Input$GetEquipeEventoInput._(this._$data);

  factory Input$GetEquipeEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    return Input$GetEquipeEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetEquipeEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    final l$tipo = tipo;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
    ]);
  }
}

class Input$GetEstadoInput {
  factory Input$GetEstadoInput({
    int? id,
    String? nome,
    String? pais,
    String? sigla,
  }) => Input$GetEstadoInput._({
    if (id != null) r'id': id,
    if (nome != null) r'nome': nome,
    if (pais != null) r'pais': pais,
    if (sigla != null) r'sigla': sigla,
  });

  Input$GetEstadoInput._(this._$data);

  factory Input$GetEstadoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('pais')) {
      final l$pais = data['pais'];
      result$data['pais'] = (l$pais as String?);
    }
    if (data.containsKey('sigla')) {
      final l$sigla = data['sigla'];
      result$data['sigla'] = (l$sigla as String?);
    }
    return Input$GetEstadoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get nome => (_$data['nome'] as String?);

  String? get pais => (_$data['pais'] as String?);

  String? get sigla => (_$data['sigla'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('pais')) {
      final l$pais = pais;
      result$data['pais'] = l$pais;
    }
    if (_$data.containsKey('sigla')) {
      final l$sigla = sigla;
      result$data['sigla'] = l$sigla;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetEstadoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$pais = pais;
    final lOther$pais = other.pais;
    if (_$data.containsKey('pais') != other._$data.containsKey('pais')) {
      return false;
    }
    if (l$pais != lOther$pais) {
      return false;
    }
    final l$sigla = sigla;
    final lOther$sigla = other.sigla;
    if (_$data.containsKey('sigla') != other._$data.containsKey('sigla')) {
      return false;
    }
    if (l$sigla != lOther$sigla) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    final l$pais = pais;
    final l$sigla = sigla;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('pais') ? l$pais : const {},
      _$data.containsKey('sigla') ? l$sigla : const {},
    ]);
  }
}

class Input$GetEventoInput {
  factory Input$GetEventoInput({
    String? bairro,
    int? categoriaEvento,
    String? cep,
    int? cidade,
    double? comissaoCardapio,
    double? comissaoIngresso,
    String? complemento,
    int? createdBy,
    String? data,
    String? dataFim,
    String? descricao,
    int? estado,
    String? horario,
    int? id,
    String? imagem,
    int? inativo,
    String? latitude,
    String? local,
    String? logradouro,
    String? longitude,
    String? mapa,
    String? mapaEvento,
    String? nome,
    String? numero,
    String? pessoaEvento,
    int? status,
    int? totalVisualizacao,
    int? vendaIngresso,
  }) => Input$GetEventoInput._({
    if (bairro != null) r'bairro': bairro,
    if (categoriaEvento != null) r'categoriaEvento': categoriaEvento,
    if (cep != null) r'cep': cep,
    if (cidade != null) r'cidade': cidade,
    if (comissaoCardapio != null) r'comissaoCardapio': comissaoCardapio,
    if (comissaoIngresso != null) r'comissaoIngresso': comissaoIngresso,
    if (complemento != null) r'complemento': complemento,
    if (createdBy != null) r'createdBy': createdBy,
    if (data != null) r'data': data,
    if (dataFim != null) r'dataFim': dataFim,
    if (descricao != null) r'descricao': descricao,
    if (estado != null) r'estado': estado,
    if (horario != null) r'horario': horario,
    if (id != null) r'id': id,
    if (imagem != null) r'imagem': imagem,
    if (inativo != null) r'inativo': inativo,
    if (latitude != null) r'latitude': latitude,
    if (local != null) r'local': local,
    if (logradouro != null) r'logradouro': logradouro,
    if (longitude != null) r'longitude': longitude,
    if (mapa != null) r'mapa': mapa,
    if (mapaEvento != null) r'mapaEvento': mapaEvento,
    if (nome != null) r'nome': nome,
    if (numero != null) r'numero': numero,
    if (pessoaEvento != null) r'pessoaEvento': pessoaEvento,
    if (status != null) r'status': status,
    if (totalVisualizacao != null) r'totalVisualizacao': totalVisualizacao,
    if (vendaIngresso != null) r'vendaIngresso': vendaIngresso,
  });

  Input$GetEventoInput._(this._$data);

  factory Input$GetEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('categoriaEvento')) {
      final l$categoriaEvento = data['categoriaEvento'];
      result$data['categoriaEvento'] = (l$categoriaEvento as int?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cidade')) {
      final l$cidade = data['cidade'];
      result$data['cidade'] = (l$cidade as int?);
    }
    if (data.containsKey('comissaoCardapio')) {
      final l$comissaoCardapio = data['comissaoCardapio'];
      result$data['comissaoCardapio'] = (l$comissaoCardapio as num?)
          ?.toDouble();
    }
    if (data.containsKey('comissaoIngresso')) {
      final l$comissaoIngresso = data['comissaoIngresso'];
      result$data['comissaoIngresso'] = (l$comissaoIngresso as num?)
          ?.toDouble();
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as int?);
    }
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    if (data.containsKey('dataFim')) {
      final l$dataFim = data['dataFim'];
      result$data['dataFim'] = (l$dataFim as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as int?);
    }
    if (data.containsKey('horario')) {
      final l$horario = data['horario'];
      result$data['horario'] = (l$horario as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = (l$latitude as String?);
    }
    if (data.containsKey('local')) {
      final l$local = data['local'];
      result$data['local'] = (l$local as String?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = (l$longitude as String?);
    }
    if (data.containsKey('mapa')) {
      final l$mapa = data['mapa'];
      result$data['mapa'] = (l$mapa as String?);
    }
    if (data.containsKey('mapaEvento')) {
      final l$mapaEvento = data['mapaEvento'];
      result$data['mapaEvento'] = (l$mapaEvento as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('pessoaEvento')) {
      final l$pessoaEvento = data['pessoaEvento'];
      result$data['pessoaEvento'] = (l$pessoaEvento as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    if (data.containsKey('totalVisualizacao')) {
      final l$totalVisualizacao = data['totalVisualizacao'];
      result$data['totalVisualizacao'] = (l$totalVisualizacao as int?);
    }
    if (data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = data['vendaIngresso'];
      result$data['vendaIngresso'] = (l$vendaIngresso as int?);
    }
    return Input$GetEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bairro => (_$data['bairro'] as String?);

  int? get categoriaEvento => (_$data['categoriaEvento'] as int?);

  String? get cep => (_$data['cep'] as String?);

  int? get cidade => (_$data['cidade'] as int?);

  double? get comissaoCardapio => (_$data['comissaoCardapio'] as double?);

  double? get comissaoIngresso => (_$data['comissaoIngresso'] as double?);

  String? get complemento => (_$data['complemento'] as String?);

  int? get createdBy => (_$data['createdBy'] as int?);

  String? get data => (_$data['data'] as String?);

  String? get dataFim => (_$data['dataFim'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  int? get estado => (_$data['estado'] as int?);

  String? get horario => (_$data['horario'] as String?);

  int? get id => (_$data['id'] as int?);

  String? get imagem => (_$data['imagem'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get latitude => (_$data['latitude'] as String?);

  String? get local => (_$data['local'] as String?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get longitude => (_$data['longitude'] as String?);

  String? get mapa => (_$data['mapa'] as String?);

  String? get mapaEvento => (_$data['mapaEvento'] as String?);

  String? get nome => (_$data['nome'] as String?);

  String? get numero => (_$data['numero'] as String?);

  String? get pessoaEvento => (_$data['pessoaEvento'] as String?);

  int? get status => (_$data['status'] as int?);

  int? get totalVisualizacao => (_$data['totalVisualizacao'] as int?);

  int? get vendaIngresso => (_$data['vendaIngresso'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('categoriaEvento')) {
      final l$categoriaEvento = categoriaEvento;
      result$data['categoriaEvento'] = l$categoriaEvento;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cidade')) {
      final l$cidade = cidade;
      result$data['cidade'] = l$cidade;
    }
    if (_$data.containsKey('comissaoCardapio')) {
      final l$comissaoCardapio = comissaoCardapio;
      result$data['comissaoCardapio'] = l$comissaoCardapio;
    }
    if (_$data.containsKey('comissaoIngresso')) {
      final l$comissaoIngresso = comissaoIngresso;
      result$data['comissaoIngresso'] = l$comissaoIngresso;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    if (_$data.containsKey('dataFim')) {
      final l$dataFim = dataFim;
      result$data['dataFim'] = l$dataFim;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('horario')) {
      final l$horario = horario;
      result$data['horario'] = l$horario;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude;
    }
    if (_$data.containsKey('local')) {
      final l$local = local;
      result$data['local'] = l$local;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude;
    }
    if (_$data.containsKey('mapa')) {
      final l$mapa = mapa;
      result$data['mapa'] = l$mapa;
    }
    if (_$data.containsKey('mapaEvento')) {
      final l$mapaEvento = mapaEvento;
      result$data['mapaEvento'] = l$mapaEvento;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('pessoaEvento')) {
      final l$pessoaEvento = pessoaEvento;
      result$data['pessoaEvento'] = l$pessoaEvento;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('totalVisualizacao')) {
      final l$totalVisualizacao = totalVisualizacao;
      result$data['totalVisualizacao'] = l$totalVisualizacao;
    }
    if (_$data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = vendaIngresso;
      result$data['vendaIngresso'] = l$vendaIngresso;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetEventoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$categoriaEvento = categoriaEvento;
    final lOther$categoriaEvento = other.categoriaEvento;
    if (_$data.containsKey('categoriaEvento') !=
        other._$data.containsKey('categoriaEvento')) {
      return false;
    }
    if (l$categoriaEvento != lOther$categoriaEvento) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (_$data.containsKey('cidade') != other._$data.containsKey('cidade')) {
      return false;
    }
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$comissaoCardapio = comissaoCardapio;
    final lOther$comissaoCardapio = other.comissaoCardapio;
    if (_$data.containsKey('comissaoCardapio') !=
        other._$data.containsKey('comissaoCardapio')) {
      return false;
    }
    if (l$comissaoCardapio != lOther$comissaoCardapio) {
      return false;
    }
    final l$comissaoIngresso = comissaoIngresso;
    final lOther$comissaoIngresso = other.comissaoIngresso;
    if (_$data.containsKey('comissaoIngresso') !=
        other._$data.containsKey('comissaoIngresso')) {
      return false;
    }
    if (l$comissaoIngresso != lOther$comissaoIngresso) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (_$data.containsKey('dataFim') != other._$data.containsKey('dataFim')) {
      return false;
    }
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$horario = horario;
    final lOther$horario = other.horario;
    if (_$data.containsKey('horario') != other._$data.containsKey('horario')) {
      return false;
    }
    if (l$horario != lOther$horario) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$local = local;
    final lOther$local = other.local;
    if (_$data.containsKey('local') != other._$data.containsKey('local')) {
      return false;
    }
    if (l$local != lOther$local) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$mapa = mapa;
    final lOther$mapa = other.mapa;
    if (_$data.containsKey('mapa') != other._$data.containsKey('mapa')) {
      return false;
    }
    if (l$mapa != lOther$mapa) {
      return false;
    }
    final l$mapaEvento = mapaEvento;
    final lOther$mapaEvento = other.mapaEvento;
    if (_$data.containsKey('mapaEvento') !=
        other._$data.containsKey('mapaEvento')) {
      return false;
    }
    if (l$mapaEvento != lOther$mapaEvento) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$pessoaEvento = pessoaEvento;
    final lOther$pessoaEvento = other.pessoaEvento;
    if (_$data.containsKey('pessoaEvento') !=
        other._$data.containsKey('pessoaEvento')) {
      return false;
    }
    if (l$pessoaEvento != lOther$pessoaEvento) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$totalVisualizacao = totalVisualizacao;
    final lOther$totalVisualizacao = other.totalVisualizacao;
    if (_$data.containsKey('totalVisualizacao') !=
        other._$data.containsKey('totalVisualizacao')) {
      return false;
    }
    if (l$totalVisualizacao != lOther$totalVisualizacao) {
      return false;
    }
    final l$vendaIngresso = vendaIngresso;
    final lOther$vendaIngresso = other.vendaIngresso;
    if (_$data.containsKey('vendaIngresso') !=
        other._$data.containsKey('vendaIngresso')) {
      return false;
    }
    if (l$vendaIngresso != lOther$vendaIngresso) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bairro = bairro;
    final l$categoriaEvento = categoriaEvento;
    final l$cep = cep;
    final l$cidade = cidade;
    final l$comissaoCardapio = comissaoCardapio;
    final l$comissaoIngresso = comissaoIngresso;
    final l$complemento = complemento;
    final l$createdBy = createdBy;
    final l$data = data;
    final l$dataFim = dataFim;
    final l$descricao = descricao;
    final l$estado = estado;
    final l$horario = horario;
    final l$id = id;
    final l$imagem = imagem;
    final l$inativo = inativo;
    final l$latitude = latitude;
    final l$local = local;
    final l$logradouro = logradouro;
    final l$longitude = longitude;
    final l$mapa = mapa;
    final l$mapaEvento = mapaEvento;
    final l$nome = nome;
    final l$numero = numero;
    final l$pessoaEvento = pessoaEvento;
    final l$status = status;
    final l$totalVisualizacao = totalVisualizacao;
    final l$vendaIngresso = vendaIngresso;
    return Object.hashAll([
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('categoriaEvento') ? l$categoriaEvento : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cidade') ? l$cidade : const {},
      _$data.containsKey('comissaoCardapio') ? l$comissaoCardapio : const {},
      _$data.containsKey('comissaoIngresso') ? l$comissaoIngresso : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('data') ? l$data : const {},
      _$data.containsKey('dataFim') ? l$dataFim : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('horario') ? l$horario : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('imagem') ? l$imagem : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('local') ? l$local : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('mapa') ? l$mapa : const {},
      _$data.containsKey('mapaEvento') ? l$mapaEvento : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('pessoaEvento') ? l$pessoaEvento : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('totalVisualizacao') ? l$totalVisualizacao : const {},
      _$data.containsKey('vendaIngresso') ? l$vendaIngresso : const {},
    ]);
  }
}

class Input$GetEventoVisualizacaoInput {
  factory Input$GetEventoVisualizacaoInput({
    int? evento,
    int? id,
    int? pessoa,
  }) => Input$GetEventoVisualizacaoInput._({
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
  });

  Input$GetEventoVisualizacaoInput._(this._$data);

  factory Input$GetEventoVisualizacaoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    return Input$GetEventoVisualizacaoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetEventoVisualizacaoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
    ]);
  }
}

class Input$GetIngressoCodigoInput {
  factory Input$GetIngressoCodigoInput({
    int? evento,
    int? id,
    int? inativo,
    int? ingresso,
    String? nome,
  }) => Input$GetIngressoCodigoInput._({
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (ingresso != null) r'ingresso': ingresso,
    if (nome != null) r'nome': nome,
  });

  Input$GetIngressoCodigoInput._(this._$data);

  factory Input$GetIngressoCodigoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('ingresso')) {
      final l$ingresso = data['ingresso'];
      result$data['ingresso'] = (l$ingresso as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    return Input$GetIngressoCodigoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get inativo => (_$data['inativo'] as int?);

  int? get ingresso => (_$data['ingresso'] as int?);

  String? get nome => (_$data['nome'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('ingresso')) {
      final l$ingresso = ingresso;
      result$data['ingresso'] = l$ingresso;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetIngressoCodigoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (_$data.containsKey('ingresso') !=
        other._$data.containsKey('ingresso')) {
      return false;
    }
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$inativo = inativo;
    final l$ingresso = ingresso;
    final l$nome = nome;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('ingresso') ? l$ingresso : const {},
      _$data.containsKey('nome') ? l$nome : const {},
    ]);
  }
}

class Input$GetIngressoInput {
  factory Input$GetIngressoInput({
    String? codigo,
    String? data,
    String? descricao,
    int? evento,
    int? id,
    int? inativo,
    int? limite,
    int? limitePorPessoa,
    int? loteId,
    String? nome,
    int? transferencia,
    double? valor,
  }) => Input$GetIngressoInput._({
    if (codigo != null) r'codigo': codigo,
    if (data != null) r'data': data,
    if (descricao != null) r'descricao': descricao,
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (limite != null) r'limite': limite,
    if (limitePorPessoa != null) r'limitePorPessoa': limitePorPessoa,
    if (loteId != null) r'loteId': loteId,
    if (nome != null) r'nome': nome,
    if (transferencia != null) r'transferencia': transferencia,
    if (valor != null) r'valor': valor,
  });

  Input$GetIngressoInput._(this._$data);

  factory Input$GetIngressoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('codigo')) {
      final l$codigo = data['codigo'];
      result$data['codigo'] = (l$codigo as String?);
    }
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('limite')) {
      final l$limite = data['limite'];
      result$data['limite'] = (l$limite as int?);
    }
    if (data.containsKey('limitePorPessoa')) {
      final l$limitePorPessoa = data['limitePorPessoa'];
      result$data['limitePorPessoa'] = (l$limitePorPessoa as int?);
    }
    if (data.containsKey('loteId')) {
      final l$loteId = data['loteId'];
      result$data['loteId'] = (l$loteId as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('transferencia')) {
      final l$transferencia = data['transferencia'];
      result$data['transferencia'] = (l$transferencia as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$GetIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get codigo => (_$data['codigo'] as String?);

  String? get data => (_$data['data'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get inativo => (_$data['inativo'] as int?);

  int? get limite => (_$data['limite'] as int?);

  int? get limitePorPessoa => (_$data['limitePorPessoa'] as int?);

  int? get loteId => (_$data['loteId'] as int?);

  String? get nome => (_$data['nome'] as String?);

  int? get transferencia => (_$data['transferencia'] as int?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('codigo')) {
      final l$codigo = codigo;
      result$data['codigo'] = l$codigo;
    }
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('limite')) {
      final l$limite = limite;
      result$data['limite'] = l$limite;
    }
    if (_$data.containsKey('limitePorPessoa')) {
      final l$limitePorPessoa = limitePorPessoa;
      result$data['limitePorPessoa'] = l$limitePorPessoa;
    }
    if (_$data.containsKey('loteId')) {
      final l$loteId = loteId;
      result$data['loteId'] = l$loteId;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('transferencia')) {
      final l$transferencia = transferencia;
      result$data['transferencia'] = l$transferencia;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetIngressoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$codigo = codigo;
    final lOther$codigo = other.codigo;
    if (_$data.containsKey('codigo') != other._$data.containsKey('codigo')) {
      return false;
    }
    if (l$codigo != lOther$codigo) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$limite = limite;
    final lOther$limite = other.limite;
    if (_$data.containsKey('limite') != other._$data.containsKey('limite')) {
      return false;
    }
    if (l$limite != lOther$limite) {
      return false;
    }
    final l$limitePorPessoa = limitePorPessoa;
    final lOther$limitePorPessoa = other.limitePorPessoa;
    if (_$data.containsKey('limitePorPessoa') !=
        other._$data.containsKey('limitePorPessoa')) {
      return false;
    }
    if (l$limitePorPessoa != lOther$limitePorPessoa) {
      return false;
    }
    final l$loteId = loteId;
    final lOther$loteId = other.loteId;
    if (_$data.containsKey('loteId') != other._$data.containsKey('loteId')) {
      return false;
    }
    if (l$loteId != lOther$loteId) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$transferencia = transferencia;
    final lOther$transferencia = other.transferencia;
    if (_$data.containsKey('transferencia') !=
        other._$data.containsKey('transferencia')) {
      return false;
    }
    if (l$transferencia != lOther$transferencia) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$codigo = codigo;
    final l$data = data;
    final l$descricao = descricao;
    final l$evento = evento;
    final l$id = id;
    final l$inativo = inativo;
    final l$limite = limite;
    final l$limitePorPessoa = limitePorPessoa;
    final l$loteId = loteId;
    final l$nome = nome;
    final l$transferencia = transferencia;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('codigo') ? l$codigo : const {},
      _$data.containsKey('data') ? l$data : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('limite') ? l$limite : const {},
      _$data.containsKey('limitePorPessoa') ? l$limitePorPessoa : const {},
      _$data.containsKey('loteId') ? l$loteId : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('transferencia') ? l$transferencia : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$GetIngressoPessoaEventoInput {
  factory Input$GetIngressoPessoaEventoInput({
    String? codigo,
    int? cortesia,
    int? evento,
    int? id,
    int? idCortesia,
    int? ingresso,
    int? pessoa,
    int? solicitacaoTransferenciaIngresso,
    int? transferencia,
    String? transferidoEm,
    int? transferidoPara,
    int? utilizado,
    String? validadoEm,
    int? validadoPor,
    double? valor,
    double? valorEvento,
    double? valorFastPay,
    double? valorUnitario,
    int? venda,
  }) => Input$GetIngressoPessoaEventoInput._({
    if (codigo != null) r'codigo': codigo,
    if (cortesia != null) r'cortesia': cortesia,
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (idCortesia != null) r'idCortesia': idCortesia,
    if (ingresso != null) r'ingresso': ingresso,
    if (pessoa != null) r'pessoa': pessoa,
    if (solicitacaoTransferenciaIngresso != null)
      r'solicitacaoTransferenciaIngresso': solicitacaoTransferenciaIngresso,
    if (transferencia != null) r'transferencia': transferencia,
    if (transferidoEm != null) r'transferidoEm': transferidoEm,
    if (transferidoPara != null) r'transferidoPara': transferidoPara,
    if (utilizado != null) r'utilizado': utilizado,
    if (validadoEm != null) r'validadoEm': validadoEm,
    if (validadoPor != null) r'validadoPor': validadoPor,
    if (valor != null) r'valor': valor,
    if (valorEvento != null) r'valorEvento': valorEvento,
    if (valorFastPay != null) r'valorFastPay': valorFastPay,
    if (valorUnitario != null) r'valorUnitario': valorUnitario,
    if (venda != null) r'venda': venda,
  });

  Input$GetIngressoPessoaEventoInput._(this._$data);

  factory Input$GetIngressoPessoaEventoInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('codigo')) {
      final l$codigo = data['codigo'];
      result$data['codigo'] = (l$codigo as String?);
    }
    if (data.containsKey('cortesia')) {
      final l$cortesia = data['cortesia'];
      result$data['cortesia'] = (l$cortesia as int?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('idCortesia')) {
      final l$idCortesia = data['idCortesia'];
      result$data['idCortesia'] = (l$idCortesia as int?);
    }
    if (data.containsKey('ingresso')) {
      final l$ingresso = data['ingresso'];
      result$data['ingresso'] = (l$ingresso as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          data['solicitacaoTransferenciaIngresso'];
      result$data['solicitacaoTransferenciaIngresso'] =
          (l$solicitacaoTransferenciaIngresso as int?);
    }
    if (data.containsKey('transferencia')) {
      final l$transferencia = data['transferencia'];
      result$data['transferencia'] = (l$transferencia as int?);
    }
    if (data.containsKey('transferidoEm')) {
      final l$transferidoEm = data['transferidoEm'];
      result$data['transferidoEm'] = (l$transferidoEm as String?);
    }
    if (data.containsKey('transferidoPara')) {
      final l$transferidoPara = data['transferidoPara'];
      result$data['transferidoPara'] = (l$transferidoPara as int?);
    }
    if (data.containsKey('utilizado')) {
      final l$utilizado = data['utilizado'];
      result$data['utilizado'] = (l$utilizado as int?);
    }
    if (data.containsKey('validadoEm')) {
      final l$validadoEm = data['validadoEm'];
      result$data['validadoEm'] = (l$validadoEm as String?);
    }
    if (data.containsKey('validadoPor')) {
      final l$validadoPor = data['validadoPor'];
      result$data['validadoPor'] = (l$validadoPor as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    if (data.containsKey('valorEvento')) {
      final l$valorEvento = data['valorEvento'];
      result$data['valorEvento'] = (l$valorEvento as num?)?.toDouble();
    }
    if (data.containsKey('valorFastPay')) {
      final l$valorFastPay = data['valorFastPay'];
      result$data['valorFastPay'] = (l$valorFastPay as num?)?.toDouble();
    }
    if (data.containsKey('valorUnitario')) {
      final l$valorUnitario = data['valorUnitario'];
      result$data['valorUnitario'] = (l$valorUnitario as num?)?.toDouble();
    }
    if (data.containsKey('venda')) {
      final l$venda = data['venda'];
      result$data['venda'] = (l$venda as int?);
    }
    return Input$GetIngressoPessoaEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get codigo => (_$data['codigo'] as String?);

  int? get cortesia => (_$data['cortesia'] as int?);

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get idCortesia => (_$data['idCortesia'] as int?);

  int? get ingresso => (_$data['ingresso'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get solicitacaoTransferenciaIngresso =>
      (_$data['solicitacaoTransferenciaIngresso'] as int?);

  int? get transferencia => (_$data['transferencia'] as int?);

  String? get transferidoEm => (_$data['transferidoEm'] as String?);

  int? get transferidoPara => (_$data['transferidoPara'] as int?);

  int? get utilizado => (_$data['utilizado'] as int?);

  String? get validadoEm => (_$data['validadoEm'] as String?);

  int? get validadoPor => (_$data['validadoPor'] as int?);

  double? get valor => (_$data['valor'] as double?);

  double? get valorEvento => (_$data['valorEvento'] as double?);

  double? get valorFastPay => (_$data['valorFastPay'] as double?);

  double? get valorUnitario => (_$data['valorUnitario'] as double?);

  int? get venda => (_$data['venda'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('codigo')) {
      final l$codigo = codigo;
      result$data['codigo'] = l$codigo;
    }
    if (_$data.containsKey('cortesia')) {
      final l$cortesia = cortesia;
      result$data['cortesia'] = l$cortesia;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idCortesia')) {
      final l$idCortesia = idCortesia;
      result$data['idCortesia'] = l$idCortesia;
    }
    if (_$data.containsKey('ingresso')) {
      final l$ingresso = ingresso;
      result$data['ingresso'] = l$ingresso;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          solicitacaoTransferenciaIngresso;
      result$data['solicitacaoTransferenciaIngresso'] =
          l$solicitacaoTransferenciaIngresso;
    }
    if (_$data.containsKey('transferencia')) {
      final l$transferencia = transferencia;
      result$data['transferencia'] = l$transferencia;
    }
    if (_$data.containsKey('transferidoEm')) {
      final l$transferidoEm = transferidoEm;
      result$data['transferidoEm'] = l$transferidoEm;
    }
    if (_$data.containsKey('transferidoPara')) {
      final l$transferidoPara = transferidoPara;
      result$data['transferidoPara'] = l$transferidoPara;
    }
    if (_$data.containsKey('utilizado')) {
      final l$utilizado = utilizado;
      result$data['utilizado'] = l$utilizado;
    }
    if (_$data.containsKey('validadoEm')) {
      final l$validadoEm = validadoEm;
      result$data['validadoEm'] = l$validadoEm;
    }
    if (_$data.containsKey('validadoPor')) {
      final l$validadoPor = validadoPor;
      result$data['validadoPor'] = l$validadoPor;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    if (_$data.containsKey('valorEvento')) {
      final l$valorEvento = valorEvento;
      result$data['valorEvento'] = l$valorEvento;
    }
    if (_$data.containsKey('valorFastPay')) {
      final l$valorFastPay = valorFastPay;
      result$data['valorFastPay'] = l$valorFastPay;
    }
    if (_$data.containsKey('valorUnitario')) {
      final l$valorUnitario = valorUnitario;
      result$data['valorUnitario'] = l$valorUnitario;
    }
    if (_$data.containsKey('venda')) {
      final l$venda = venda;
      result$data['venda'] = l$venda;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetIngressoPessoaEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$codigo = codigo;
    final lOther$codigo = other.codigo;
    if (_$data.containsKey('codigo') != other._$data.containsKey('codigo')) {
      return false;
    }
    if (l$codigo != lOther$codigo) {
      return false;
    }
    final l$cortesia = cortesia;
    final lOther$cortesia = other.cortesia;
    if (_$data.containsKey('cortesia') !=
        other._$data.containsKey('cortesia')) {
      return false;
    }
    if (l$cortesia != lOther$cortesia) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idCortesia = idCortesia;
    final lOther$idCortesia = other.idCortesia;
    if (_$data.containsKey('idCortesia') !=
        other._$data.containsKey('idCortesia')) {
      return false;
    }
    if (l$idCortesia != lOther$idCortesia) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (_$data.containsKey('ingresso') !=
        other._$data.containsKey('ingresso')) {
      return false;
    }
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final lOther$solicitacaoTransferenciaIngresso =
        other.solicitacaoTransferenciaIngresso;
    if (_$data.containsKey('solicitacaoTransferenciaIngresso') !=
        other._$data.containsKey('solicitacaoTransferenciaIngresso')) {
      return false;
    }
    if (l$solicitacaoTransferenciaIngresso !=
        lOther$solicitacaoTransferenciaIngresso) {
      return false;
    }
    final l$transferencia = transferencia;
    final lOther$transferencia = other.transferencia;
    if (_$data.containsKey('transferencia') !=
        other._$data.containsKey('transferencia')) {
      return false;
    }
    if (l$transferencia != lOther$transferencia) {
      return false;
    }
    final l$transferidoEm = transferidoEm;
    final lOther$transferidoEm = other.transferidoEm;
    if (_$data.containsKey('transferidoEm') !=
        other._$data.containsKey('transferidoEm')) {
      return false;
    }
    if (l$transferidoEm != lOther$transferidoEm) {
      return false;
    }
    final l$transferidoPara = transferidoPara;
    final lOther$transferidoPara = other.transferidoPara;
    if (_$data.containsKey('transferidoPara') !=
        other._$data.containsKey('transferidoPara')) {
      return false;
    }
    if (l$transferidoPara != lOther$transferidoPara) {
      return false;
    }
    final l$utilizado = utilizado;
    final lOther$utilizado = other.utilizado;
    if (_$data.containsKey('utilizado') !=
        other._$data.containsKey('utilizado')) {
      return false;
    }
    if (l$utilizado != lOther$utilizado) {
      return false;
    }
    final l$validadoEm = validadoEm;
    final lOther$validadoEm = other.validadoEm;
    if (_$data.containsKey('validadoEm') !=
        other._$data.containsKey('validadoEm')) {
      return false;
    }
    if (l$validadoEm != lOther$validadoEm) {
      return false;
    }
    final l$validadoPor = validadoPor;
    final lOther$validadoPor = other.validadoPor;
    if (_$data.containsKey('validadoPor') !=
        other._$data.containsKey('validadoPor')) {
      return false;
    }
    if (l$validadoPor != lOther$validadoPor) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    final l$valorEvento = valorEvento;
    final lOther$valorEvento = other.valorEvento;
    if (_$data.containsKey('valorEvento') !=
        other._$data.containsKey('valorEvento')) {
      return false;
    }
    if (l$valorEvento != lOther$valorEvento) {
      return false;
    }
    final l$valorFastPay = valorFastPay;
    final lOther$valorFastPay = other.valorFastPay;
    if (_$data.containsKey('valorFastPay') !=
        other._$data.containsKey('valorFastPay')) {
      return false;
    }
    if (l$valorFastPay != lOther$valorFastPay) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (_$data.containsKey('valorUnitario') !=
        other._$data.containsKey('valorUnitario')) {
      return false;
    }
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    final l$venda = venda;
    final lOther$venda = other.venda;
    if (_$data.containsKey('venda') != other._$data.containsKey('venda')) {
      return false;
    }
    if (l$venda != lOther$venda) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$codigo = codigo;
    final l$cortesia = cortesia;
    final l$evento = evento;
    final l$id = id;
    final l$idCortesia = idCortesia;
    final l$ingresso = ingresso;
    final l$pessoa = pessoa;
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final l$transferencia = transferencia;
    final l$transferidoEm = transferidoEm;
    final l$transferidoPara = transferidoPara;
    final l$utilizado = utilizado;
    final l$validadoEm = validadoEm;
    final l$validadoPor = validadoPor;
    final l$valor = valor;
    final l$valorEvento = valorEvento;
    final l$valorFastPay = valorFastPay;
    final l$valorUnitario = valorUnitario;
    final l$venda = venda;
    return Object.hashAll([
      _$data.containsKey('codigo') ? l$codigo : const {},
      _$data.containsKey('cortesia') ? l$cortesia : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idCortesia') ? l$idCortesia : const {},
      _$data.containsKey('ingresso') ? l$ingresso : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('solicitacaoTransferenciaIngresso')
          ? l$solicitacaoTransferenciaIngresso
          : const {},
      _$data.containsKey('transferencia') ? l$transferencia : const {},
      _$data.containsKey('transferidoEm') ? l$transferidoEm : const {},
      _$data.containsKey('transferidoPara') ? l$transferidoPara : const {},
      _$data.containsKey('utilizado') ? l$utilizado : const {},
      _$data.containsKey('validadoEm') ? l$validadoEm : const {},
      _$data.containsKey('validadoPor') ? l$validadoPor : const {},
      _$data.containsKey('valor') ? l$valor : const {},
      _$data.containsKey('valorEvento') ? l$valorEvento : const {},
      _$data.containsKey('valorFastPay') ? l$valorFastPay : const {},
      _$data.containsKey('valorUnitario') ? l$valorUnitario : const {},
      _$data.containsKey('venda') ? l$venda : const {},
    ]);
  }
}

class Input$GetItemCardapioVendaInput {
  factory Input$GetItemCardapioVendaInput({
    int? cardapio,
    Input$GetCardapioInput? cardapioDetalhes,
    String? codigo,
    int? createdBy,
    String? createdIp,
    String? createdOn,
    int? evento,
    Input$GetEventoInput? eventoDetalhes,
    int? id,
    int? lastEditBy,
    String? lastEditOn,
    int? pessoa,
    Input$GetPessoaInput? pessoaDetalhes,
    Input$GetPessoaInput? pessoaValidaDetalhes,
    int? utilizado,
    String? validadoEm,
    int? validadoPor,
    double? valorEvento,
    double? valorFastPay,
    double? valorTotal,
    double? valorUnitario,
    int? venda,
    int? vendaCardapio,
  }) => Input$GetItemCardapioVendaInput._({
    if (cardapio != null) r'cardapio': cardapio,
    if (cardapioDetalhes != null) r'cardapioDetalhes': cardapioDetalhes,
    if (codigo != null) r'codigo': codigo,
    if (createdBy != null) r'createdBy': createdBy,
    if (createdIp != null) r'createdIp': createdIp,
    if (createdOn != null) r'createdOn': createdOn,
    if (evento != null) r'evento': evento,
    if (eventoDetalhes != null) r'eventoDetalhes': eventoDetalhes,
    if (id != null) r'id': id,
    if (lastEditBy != null) r'lastEditBy': lastEditBy,
    if (lastEditOn != null) r'lastEditOn': lastEditOn,
    if (pessoa != null) r'pessoa': pessoa,
    if (pessoaDetalhes != null) r'pessoaDetalhes': pessoaDetalhes,
    if (pessoaValidaDetalhes != null)
      r'pessoaValidaDetalhes': pessoaValidaDetalhes,
    if (utilizado != null) r'utilizado': utilizado,
    if (validadoEm != null) r'validadoEm': validadoEm,
    if (validadoPor != null) r'validadoPor': validadoPor,
    if (valorEvento != null) r'valorEvento': valorEvento,
    if (valorFastPay != null) r'valorFastPay': valorFastPay,
    if (valorTotal != null) r'valorTotal': valorTotal,
    if (valorUnitario != null) r'valorUnitario': valorUnitario,
    if (venda != null) r'venda': venda,
    if (vendaCardapio != null) r'vendaCardapio': vendaCardapio,
  });

  Input$GetItemCardapioVendaInput._(this._$data);

  factory Input$GetItemCardapioVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cardapio')) {
      final l$cardapio = data['cardapio'];
      result$data['cardapio'] = (l$cardapio as int?);
    }
    if (data.containsKey('cardapioDetalhes')) {
      final l$cardapioDetalhes = data['cardapioDetalhes'];
      result$data['cardapioDetalhes'] = l$cardapioDetalhes == null
          ? null
          : Input$GetCardapioInput.fromJson(
              (l$cardapioDetalhes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('codigo')) {
      final l$codigo = data['codigo'];
      result$data['codigo'] = (l$codigo as String?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as int?);
    }
    if (data.containsKey('createdIp')) {
      final l$createdIp = data['createdIp'];
      result$data['createdIp'] = (l$createdIp as String?);
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = (l$createdOn as String?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('eventoDetalhes')) {
      final l$eventoDetalhes = data['eventoDetalhes'];
      result$data['eventoDetalhes'] = l$eventoDetalhes == null
          ? null
          : Input$GetEventoInput.fromJson(
              (l$eventoDetalhes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('lastEditBy')) {
      final l$lastEditBy = data['lastEditBy'];
      result$data['lastEditBy'] = (l$lastEditBy as int?);
    }
    if (data.containsKey('lastEditOn')) {
      final l$lastEditOn = data['lastEditOn'];
      result$data['lastEditOn'] = (l$lastEditOn as String?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('pessoaDetalhes')) {
      final l$pessoaDetalhes = data['pessoaDetalhes'];
      result$data['pessoaDetalhes'] = l$pessoaDetalhes == null
          ? null
          : Input$GetPessoaInput.fromJson(
              (l$pessoaDetalhes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('pessoaValidaDetalhes')) {
      final l$pessoaValidaDetalhes = data['pessoaValidaDetalhes'];
      result$data['pessoaValidaDetalhes'] = l$pessoaValidaDetalhes == null
          ? null
          : Input$GetPessoaInput.fromJson(
              (l$pessoaValidaDetalhes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('utilizado')) {
      final l$utilizado = data['utilizado'];
      result$data['utilizado'] = (l$utilizado as int?);
    }
    if (data.containsKey('validadoEm')) {
      final l$validadoEm = data['validadoEm'];
      result$data['validadoEm'] = (l$validadoEm as String?);
    }
    if (data.containsKey('validadoPor')) {
      final l$validadoPor = data['validadoPor'];
      result$data['validadoPor'] = (l$validadoPor as int?);
    }
    if (data.containsKey('valorEvento')) {
      final l$valorEvento = data['valorEvento'];
      result$data['valorEvento'] = (l$valorEvento as num?)?.toDouble();
    }
    if (data.containsKey('valorFastPay')) {
      final l$valorFastPay = data['valorFastPay'];
      result$data['valorFastPay'] = (l$valorFastPay as num?)?.toDouble();
    }
    if (data.containsKey('valorTotal')) {
      final l$valorTotal = data['valorTotal'];
      result$data['valorTotal'] = (l$valorTotal as num?)?.toDouble();
    }
    if (data.containsKey('valorUnitario')) {
      final l$valorUnitario = data['valorUnitario'];
      result$data['valorUnitario'] = (l$valorUnitario as num?)?.toDouble();
    }
    if (data.containsKey('venda')) {
      final l$venda = data['venda'];
      result$data['venda'] = (l$venda as int?);
    }
    if (data.containsKey('vendaCardapio')) {
      final l$vendaCardapio = data['vendaCardapio'];
      result$data['vendaCardapio'] = (l$vendaCardapio as int?);
    }
    return Input$GetItemCardapioVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cardapio => (_$data['cardapio'] as int?);

  Input$GetCardapioInput? get cardapioDetalhes =>
      (_$data['cardapioDetalhes'] as Input$GetCardapioInput?);

  String? get codigo => (_$data['codigo'] as String?);

  int? get createdBy => (_$data['createdBy'] as int?);

  String? get createdIp => (_$data['createdIp'] as String?);

  String? get createdOn => (_$data['createdOn'] as String?);

  int? get evento => (_$data['evento'] as int?);

  Input$GetEventoInput? get eventoDetalhes =>
      (_$data['eventoDetalhes'] as Input$GetEventoInput?);

  int? get id => (_$data['id'] as int?);

  int? get lastEditBy => (_$data['lastEditBy'] as int?);

  String? get lastEditOn => (_$data['lastEditOn'] as String?);

  int? get pessoa => (_$data['pessoa'] as int?);

  Input$GetPessoaInput? get pessoaDetalhes =>
      (_$data['pessoaDetalhes'] as Input$GetPessoaInput?);

  Input$GetPessoaInput? get pessoaValidaDetalhes =>
      (_$data['pessoaValidaDetalhes'] as Input$GetPessoaInput?);

  int? get utilizado => (_$data['utilizado'] as int?);

  String? get validadoEm => (_$data['validadoEm'] as String?);

  int? get validadoPor => (_$data['validadoPor'] as int?);

  double? get valorEvento => (_$data['valorEvento'] as double?);

  double? get valorFastPay => (_$data['valorFastPay'] as double?);

  double? get valorTotal => (_$data['valorTotal'] as double?);

  double? get valorUnitario => (_$data['valorUnitario'] as double?);

  int? get venda => (_$data['venda'] as int?);

  int? get vendaCardapio => (_$data['vendaCardapio'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cardapio')) {
      final l$cardapio = cardapio;
      result$data['cardapio'] = l$cardapio;
    }
    if (_$data.containsKey('cardapioDetalhes')) {
      final l$cardapioDetalhes = cardapioDetalhes;
      result$data['cardapioDetalhes'] = l$cardapioDetalhes?.toJson();
    }
    if (_$data.containsKey('codigo')) {
      final l$codigo = codigo;
      result$data['codigo'] = l$codigo;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('createdIp')) {
      final l$createdIp = createdIp;
      result$data['createdIp'] = l$createdIp;
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('eventoDetalhes')) {
      final l$eventoDetalhes = eventoDetalhes;
      result$data['eventoDetalhes'] = l$eventoDetalhes?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('lastEditBy')) {
      final l$lastEditBy = lastEditBy;
      result$data['lastEditBy'] = l$lastEditBy;
    }
    if (_$data.containsKey('lastEditOn')) {
      final l$lastEditOn = lastEditOn;
      result$data['lastEditOn'] = l$lastEditOn;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('pessoaDetalhes')) {
      final l$pessoaDetalhes = pessoaDetalhes;
      result$data['pessoaDetalhes'] = l$pessoaDetalhes?.toJson();
    }
    if (_$data.containsKey('pessoaValidaDetalhes')) {
      final l$pessoaValidaDetalhes = pessoaValidaDetalhes;
      result$data['pessoaValidaDetalhes'] = l$pessoaValidaDetalhes?.toJson();
    }
    if (_$data.containsKey('utilizado')) {
      final l$utilizado = utilizado;
      result$data['utilizado'] = l$utilizado;
    }
    if (_$data.containsKey('validadoEm')) {
      final l$validadoEm = validadoEm;
      result$data['validadoEm'] = l$validadoEm;
    }
    if (_$data.containsKey('validadoPor')) {
      final l$validadoPor = validadoPor;
      result$data['validadoPor'] = l$validadoPor;
    }
    if (_$data.containsKey('valorEvento')) {
      final l$valorEvento = valorEvento;
      result$data['valorEvento'] = l$valorEvento;
    }
    if (_$data.containsKey('valorFastPay')) {
      final l$valorFastPay = valorFastPay;
      result$data['valorFastPay'] = l$valorFastPay;
    }
    if (_$data.containsKey('valorTotal')) {
      final l$valorTotal = valorTotal;
      result$data['valorTotal'] = l$valorTotal;
    }
    if (_$data.containsKey('valorUnitario')) {
      final l$valorUnitario = valorUnitario;
      result$data['valorUnitario'] = l$valorUnitario;
    }
    if (_$data.containsKey('venda')) {
      final l$venda = venda;
      result$data['venda'] = l$venda;
    }
    if (_$data.containsKey('vendaCardapio')) {
      final l$vendaCardapio = vendaCardapio;
      result$data['vendaCardapio'] = l$vendaCardapio;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetItemCardapioVendaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (_$data.containsKey('cardapio') !=
        other._$data.containsKey('cardapio')) {
      return false;
    }
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$cardapioDetalhes = cardapioDetalhes;
    final lOther$cardapioDetalhes = other.cardapioDetalhes;
    if (_$data.containsKey('cardapioDetalhes') !=
        other._$data.containsKey('cardapioDetalhes')) {
      return false;
    }
    if (l$cardapioDetalhes != lOther$cardapioDetalhes) {
      return false;
    }
    final l$codigo = codigo;
    final lOther$codigo = other.codigo;
    if (_$data.containsKey('codigo') != other._$data.containsKey('codigo')) {
      return false;
    }
    if (l$codigo != lOther$codigo) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdIp = createdIp;
    final lOther$createdIp = other.createdIp;
    if (_$data.containsKey('createdIp') !=
        other._$data.containsKey('createdIp')) {
      return false;
    }
    if (l$createdIp != lOther$createdIp) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$eventoDetalhes = eventoDetalhes;
    final lOther$eventoDetalhes = other.eventoDetalhes;
    if (_$data.containsKey('eventoDetalhes') !=
        other._$data.containsKey('eventoDetalhes')) {
      return false;
    }
    if (l$eventoDetalhes != lOther$eventoDetalhes) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$lastEditBy = lastEditBy;
    final lOther$lastEditBy = other.lastEditBy;
    if (_$data.containsKey('lastEditBy') !=
        other._$data.containsKey('lastEditBy')) {
      return false;
    }
    if (l$lastEditBy != lOther$lastEditBy) {
      return false;
    }
    final l$lastEditOn = lastEditOn;
    final lOther$lastEditOn = other.lastEditOn;
    if (_$data.containsKey('lastEditOn') !=
        other._$data.containsKey('lastEditOn')) {
      return false;
    }
    if (l$lastEditOn != lOther$lastEditOn) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$pessoaDetalhes = pessoaDetalhes;
    final lOther$pessoaDetalhes = other.pessoaDetalhes;
    if (_$data.containsKey('pessoaDetalhes') !=
        other._$data.containsKey('pessoaDetalhes')) {
      return false;
    }
    if (l$pessoaDetalhes != lOther$pessoaDetalhes) {
      return false;
    }
    final l$pessoaValidaDetalhes = pessoaValidaDetalhes;
    final lOther$pessoaValidaDetalhes = other.pessoaValidaDetalhes;
    if (_$data.containsKey('pessoaValidaDetalhes') !=
        other._$data.containsKey('pessoaValidaDetalhes')) {
      return false;
    }
    if (l$pessoaValidaDetalhes != lOther$pessoaValidaDetalhes) {
      return false;
    }
    final l$utilizado = utilizado;
    final lOther$utilizado = other.utilizado;
    if (_$data.containsKey('utilizado') !=
        other._$data.containsKey('utilizado')) {
      return false;
    }
    if (l$utilizado != lOther$utilizado) {
      return false;
    }
    final l$validadoEm = validadoEm;
    final lOther$validadoEm = other.validadoEm;
    if (_$data.containsKey('validadoEm') !=
        other._$data.containsKey('validadoEm')) {
      return false;
    }
    if (l$validadoEm != lOther$validadoEm) {
      return false;
    }
    final l$validadoPor = validadoPor;
    final lOther$validadoPor = other.validadoPor;
    if (_$data.containsKey('validadoPor') !=
        other._$data.containsKey('validadoPor')) {
      return false;
    }
    if (l$validadoPor != lOther$validadoPor) {
      return false;
    }
    final l$valorEvento = valorEvento;
    final lOther$valorEvento = other.valorEvento;
    if (_$data.containsKey('valorEvento') !=
        other._$data.containsKey('valorEvento')) {
      return false;
    }
    if (l$valorEvento != lOther$valorEvento) {
      return false;
    }
    final l$valorFastPay = valorFastPay;
    final lOther$valorFastPay = other.valorFastPay;
    if (_$data.containsKey('valorFastPay') !=
        other._$data.containsKey('valorFastPay')) {
      return false;
    }
    if (l$valorFastPay != lOther$valorFastPay) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (_$data.containsKey('valorTotal') !=
        other._$data.containsKey('valorTotal')) {
      return false;
    }
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (_$data.containsKey('valorUnitario') !=
        other._$data.containsKey('valorUnitario')) {
      return false;
    }
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    final l$venda = venda;
    final lOther$venda = other.venda;
    if (_$data.containsKey('venda') != other._$data.containsKey('venda')) {
      return false;
    }
    if (l$venda != lOther$venda) {
      return false;
    }
    final l$vendaCardapio = vendaCardapio;
    final lOther$vendaCardapio = other.vendaCardapio;
    if (_$data.containsKey('vendaCardapio') !=
        other._$data.containsKey('vendaCardapio')) {
      return false;
    }
    if (l$vendaCardapio != lOther$vendaCardapio) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$cardapioDetalhes = cardapioDetalhes;
    final l$codigo = codigo;
    final l$createdBy = createdBy;
    final l$createdIp = createdIp;
    final l$createdOn = createdOn;
    final l$evento = evento;
    final l$eventoDetalhes = eventoDetalhes;
    final l$id = id;
    final l$lastEditBy = lastEditBy;
    final l$lastEditOn = lastEditOn;
    final l$pessoa = pessoa;
    final l$pessoaDetalhes = pessoaDetalhes;
    final l$pessoaValidaDetalhes = pessoaValidaDetalhes;
    final l$utilizado = utilizado;
    final l$validadoEm = validadoEm;
    final l$validadoPor = validadoPor;
    final l$valorEvento = valorEvento;
    final l$valorFastPay = valorFastPay;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    final l$venda = venda;
    final l$vendaCardapio = vendaCardapio;
    return Object.hashAll([
      _$data.containsKey('cardapio') ? l$cardapio : const {},
      _$data.containsKey('cardapioDetalhes') ? l$cardapioDetalhes : const {},
      _$data.containsKey('codigo') ? l$codigo : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('createdIp') ? l$createdIp : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('eventoDetalhes') ? l$eventoDetalhes : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEditBy') ? l$lastEditBy : const {},
      _$data.containsKey('lastEditOn') ? l$lastEditOn : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('pessoaDetalhes') ? l$pessoaDetalhes : const {},
      _$data.containsKey('pessoaValidaDetalhes')
          ? l$pessoaValidaDetalhes
          : const {},
      _$data.containsKey('utilizado') ? l$utilizado : const {},
      _$data.containsKey('validadoEm') ? l$validadoEm : const {},
      _$data.containsKey('validadoPor') ? l$validadoPor : const {},
      _$data.containsKey('valorEvento') ? l$valorEvento : const {},
      _$data.containsKey('valorFastPay') ? l$valorFastPay : const {},
      _$data.containsKey('valorTotal') ? l$valorTotal : const {},
      _$data.containsKey('valorUnitario') ? l$valorUnitario : const {},
      _$data.containsKey('venda') ? l$venda : const {},
      _$data.containsKey('vendaCardapio') ? l$vendaCardapio : const {},
    ]);
  }
}

class Input$GetLoteInput {
  factory Input$GetLoteInput({
    String? dataFim,
    String? dataInicio,
    int? evento,
    int? id,
    int? inativo,
    String? nome,
  }) => Input$GetLoteInput._({
    if (dataFim != null) r'dataFim': dataFim,
    if (dataInicio != null) r'dataInicio': dataInicio,
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (nome != null) r'nome': nome,
  });

  Input$GetLoteInput._(this._$data);

  factory Input$GetLoteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dataFim')) {
      final l$dataFim = data['dataFim'];
      result$data['dataFim'] = (l$dataFim as String?);
    }
    if (data.containsKey('dataInicio')) {
      final l$dataInicio = data['dataInicio'];
      result$data['dataInicio'] = (l$dataInicio as String?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    return Input$GetLoteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get dataFim => (_$data['dataFim'] as String?);

  String? get dataInicio => (_$data['dataInicio'] as String?);

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get nome => (_$data['nome'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dataFim')) {
      final l$dataFim = dataFim;
      result$data['dataFim'] = l$dataFim;
    }
    if (_$data.containsKey('dataInicio')) {
      final l$dataInicio = dataInicio;
      result$data['dataInicio'] = l$dataInicio;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetLoteInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (_$data.containsKey('dataFim') != other._$data.containsKey('dataFim')) {
      return false;
    }
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$dataInicio = dataInicio;
    final lOther$dataInicio = other.dataInicio;
    if (_$data.containsKey('dataInicio') !=
        other._$data.containsKey('dataInicio')) {
      return false;
    }
    if (l$dataInicio != lOther$dataInicio) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dataFim = dataFim;
    final l$dataInicio = dataInicio;
    final l$evento = evento;
    final l$id = id;
    final l$inativo = inativo;
    final l$nome = nome;
    return Object.hashAll([
      _$data.containsKey('dataFim') ? l$dataFim : const {},
      _$data.containsKey('dataInicio') ? l$dataInicio : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('nome') ? l$nome : const {},
    ]);
  }
}

class Input$GetPessoaCartaoInput {
  factory Input$GetPessoaCartaoInput({
    String? brand,
    int? id,
    String? idPagarme,
    int? inativo,
    String? lastFourDigits,
    int? pessoa,
  }) => Input$GetPessoaCartaoInput._({
    if (brand != null) r'brand': brand,
    if (id != null) r'id': id,
    if (idPagarme != null) r'idPagarme': idPagarme,
    if (inativo != null) r'inativo': inativo,
    if (lastFourDigits != null) r'lastFourDigits': lastFourDigits,
    if (pessoa != null) r'pessoa': pessoa,
  });

  Input$GetPessoaCartaoInput._(this._$data);

  factory Input$GetPessoaCartaoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('brand')) {
      final l$brand = data['brand'];
      result$data['brand'] = (l$brand as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('idPagarme')) {
      final l$idPagarme = data['idPagarme'];
      result$data['idPagarme'] = (l$idPagarme as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('lastFourDigits')) {
      final l$lastFourDigits = data['lastFourDigits'];
      result$data['lastFourDigits'] = (l$lastFourDigits as String?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    return Input$GetPessoaCartaoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get brand => (_$data['brand'] as String?);

  int? get id => (_$data['id'] as int?);

  String? get idPagarme => (_$data['idPagarme'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get lastFourDigits => (_$data['lastFourDigits'] as String?);

  int? get pessoa => (_$data['pessoa'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('brand')) {
      final l$brand = brand;
      result$data['brand'] = l$brand;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idPagarme')) {
      final l$idPagarme = idPagarme;
      result$data['idPagarme'] = l$idPagarme;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('lastFourDigits')) {
      final l$lastFourDigits = lastFourDigits;
      result$data['lastFourDigits'] = l$lastFourDigits;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetPessoaCartaoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (_$data.containsKey('brand') != other._$data.containsKey('brand')) {
      return false;
    }
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idPagarme = idPagarme;
    final lOther$idPagarme = other.idPagarme;
    if (_$data.containsKey('idPagarme') !=
        other._$data.containsKey('idPagarme')) {
      return false;
    }
    if (l$idPagarme != lOther$idPagarme) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$lastFourDigits = lastFourDigits;
    final lOther$lastFourDigits = other.lastFourDigits;
    if (_$data.containsKey('lastFourDigits') !=
        other._$data.containsKey('lastFourDigits')) {
      return false;
    }
    if (l$lastFourDigits != lOther$lastFourDigits) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$brand = brand;
    final l$id = id;
    final l$idPagarme = idPagarme;
    final l$inativo = inativo;
    final l$lastFourDigits = lastFourDigits;
    final l$pessoa = pessoa;
    return Object.hashAll([
      _$data.containsKey('brand') ? l$brand : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idPagarme') ? l$idPagarme : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('lastFourDigits') ? l$lastFourDigits : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
    ]);
  }
}

class Input$GetPessoaInput {
  factory Input$GetPessoaInput({
    String? backgroundImage,
    String? bairro,
    String? cep,
    int? cidade,
    String? complemento,
    String? cpf,
    String? descricao,
    String? email,
    int? estado,
    String? fotoPerfil,
    String? idClientePagarme,
    int? inativo,
    String? logradouro,
    String? nickname,
    String? numero,
    int? perfilAberto,
    int? pesId,
    String? pesLogin,
    String? pesNome,
    String? provider,
    String? telefone,
    int? validado,
  }) => Input$GetPessoaInput._({
    if (backgroundImage != null) r'backgroundImage': backgroundImage,
    if (bairro != null) r'bairro': bairro,
    if (cep != null) r'cep': cep,
    if (cidade != null) r'cidade': cidade,
    if (complemento != null) r'complemento': complemento,
    if (cpf != null) r'cpf': cpf,
    if (descricao != null) r'descricao': descricao,
    if (email != null) r'email': email,
    if (estado != null) r'estado': estado,
    if (fotoPerfil != null) r'fotoPerfil': fotoPerfil,
    if (idClientePagarme != null) r'idClientePagarme': idClientePagarme,
    if (inativo != null) r'inativo': inativo,
    if (logradouro != null) r'logradouro': logradouro,
    if (nickname != null) r'nickname': nickname,
    if (numero != null) r'numero': numero,
    if (perfilAberto != null) r'perfilAberto': perfilAberto,
    if (pesId != null) r'pesId': pesId,
    if (pesLogin != null) r'pesLogin': pesLogin,
    if (pesNome != null) r'pesNome': pesNome,
    if (provider != null) r'provider': provider,
    if (telefone != null) r'telefone': telefone,
    if (validado != null) r'validado': validado,
  });

  Input$GetPessoaInput._(this._$data);

  factory Input$GetPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('backgroundImage')) {
      final l$backgroundImage = data['backgroundImage'];
      result$data['backgroundImage'] = (l$backgroundImage as String?);
    }
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cidade')) {
      final l$cidade = data['cidade'];
      result$data['cidade'] = (l$cidade as int?);
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('cpf')) {
      final l$cpf = data['cpf'];
      result$data['cpf'] = (l$cpf as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as int?);
    }
    if (data.containsKey('fotoPerfil')) {
      final l$fotoPerfil = data['fotoPerfil'];
      result$data['fotoPerfil'] = (l$fotoPerfil as String?);
    }
    if (data.containsKey('idClientePagarme')) {
      final l$idClientePagarme = data['idClientePagarme'];
      result$data['idClientePagarme'] = (l$idClientePagarme as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('nickname')) {
      final l$nickname = data['nickname'];
      result$data['nickname'] = (l$nickname as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('perfilAberto')) {
      final l$perfilAberto = data['perfilAberto'];
      result$data['perfilAberto'] = (l$perfilAberto as int?);
    }
    if (data.containsKey('pesId')) {
      final l$pesId = data['pesId'];
      result$data['pesId'] = (l$pesId as int?);
    }
    if (data.containsKey('pesLogin')) {
      final l$pesLogin = data['pesLogin'];
      result$data['pesLogin'] = (l$pesLogin as String?);
    }
    if (data.containsKey('pesNome')) {
      final l$pesNome = data['pesNome'];
      result$data['pesNome'] = (l$pesNome as String?);
    }
    if (data.containsKey('provider')) {
      final l$provider = data['provider'];
      result$data['provider'] = (l$provider as String?);
    }
    if (data.containsKey('telefone')) {
      final l$telefone = data['telefone'];
      result$data['telefone'] = (l$telefone as String?);
    }
    if (data.containsKey('validado')) {
      final l$validado = data['validado'];
      result$data['validado'] = (l$validado as int?);
    }
    return Input$GetPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get backgroundImage => (_$data['backgroundImage'] as String?);

  String? get bairro => (_$data['bairro'] as String?);

  String? get cep => (_$data['cep'] as String?);

  int? get cidade => (_$data['cidade'] as int?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get cpf => (_$data['cpf'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get email => (_$data['email'] as String?);

  int? get estado => (_$data['estado'] as int?);

  String? get fotoPerfil => (_$data['fotoPerfil'] as String?);

  String? get idClientePagarme => (_$data['idClientePagarme'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get nickname => (_$data['nickname'] as String?);

  String? get numero => (_$data['numero'] as String?);

  int? get perfilAberto => (_$data['perfilAberto'] as int?);

  int? get pesId => (_$data['pesId'] as int?);

  String? get pesLogin => (_$data['pesLogin'] as String?);

  String? get pesNome => (_$data['pesNome'] as String?);

  String? get provider => (_$data['provider'] as String?);

  String? get telefone => (_$data['telefone'] as String?);

  int? get validado => (_$data['validado'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('backgroundImage')) {
      final l$backgroundImage = backgroundImage;
      result$data['backgroundImage'] = l$backgroundImage;
    }
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cidade')) {
      final l$cidade = cidade;
      result$data['cidade'] = l$cidade;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('cpf')) {
      final l$cpf = cpf;
      result$data['cpf'] = l$cpf;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('fotoPerfil')) {
      final l$fotoPerfil = fotoPerfil;
      result$data['fotoPerfil'] = l$fotoPerfil;
    }
    if (_$data.containsKey('idClientePagarme')) {
      final l$idClientePagarme = idClientePagarme;
      result$data['idClientePagarme'] = l$idClientePagarme;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('nickname')) {
      final l$nickname = nickname;
      result$data['nickname'] = l$nickname;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('perfilAberto')) {
      final l$perfilAberto = perfilAberto;
      result$data['perfilAberto'] = l$perfilAberto;
    }
    if (_$data.containsKey('pesId')) {
      final l$pesId = pesId;
      result$data['pesId'] = l$pesId;
    }
    if (_$data.containsKey('pesLogin')) {
      final l$pesLogin = pesLogin;
      result$data['pesLogin'] = l$pesLogin;
    }
    if (_$data.containsKey('pesNome')) {
      final l$pesNome = pesNome;
      result$data['pesNome'] = l$pesNome;
    }
    if (_$data.containsKey('provider')) {
      final l$provider = provider;
      result$data['provider'] = l$provider;
    }
    if (_$data.containsKey('telefone')) {
      final l$telefone = telefone;
      result$data['telefone'] = l$telefone;
    }
    if (_$data.containsKey('validado')) {
      final l$validado = validado;
      result$data['validado'] = l$validado;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetPessoaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$backgroundImage = backgroundImage;
    final lOther$backgroundImage = other.backgroundImage;
    if (_$data.containsKey('backgroundImage') !=
        other._$data.containsKey('backgroundImage')) {
      return false;
    }
    if (l$backgroundImage != lOther$backgroundImage) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (_$data.containsKey('cidade') != other._$data.containsKey('cidade')) {
      return false;
    }
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$cpf = cpf;
    final lOther$cpf = other.cpf;
    if (_$data.containsKey('cpf') != other._$data.containsKey('cpf')) {
      return false;
    }
    if (l$cpf != lOther$cpf) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$fotoPerfil = fotoPerfil;
    final lOther$fotoPerfil = other.fotoPerfil;
    if (_$data.containsKey('fotoPerfil') !=
        other._$data.containsKey('fotoPerfil')) {
      return false;
    }
    if (l$fotoPerfil != lOther$fotoPerfil) {
      return false;
    }
    final l$idClientePagarme = idClientePagarme;
    final lOther$idClientePagarme = other.idClientePagarme;
    if (_$data.containsKey('idClientePagarme') !=
        other._$data.containsKey('idClientePagarme')) {
      return false;
    }
    if (l$idClientePagarme != lOther$idClientePagarme) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (_$data.containsKey('nickname') !=
        other._$data.containsKey('nickname')) {
      return false;
    }
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$perfilAberto = perfilAberto;
    final lOther$perfilAberto = other.perfilAberto;
    if (_$data.containsKey('perfilAberto') !=
        other._$data.containsKey('perfilAberto')) {
      return false;
    }
    if (l$perfilAberto != lOther$perfilAberto) {
      return false;
    }
    final l$pesId = pesId;
    final lOther$pesId = other.pesId;
    if (_$data.containsKey('pesId') != other._$data.containsKey('pesId')) {
      return false;
    }
    if (l$pesId != lOther$pesId) {
      return false;
    }
    final l$pesLogin = pesLogin;
    final lOther$pesLogin = other.pesLogin;
    if (_$data.containsKey('pesLogin') !=
        other._$data.containsKey('pesLogin')) {
      return false;
    }
    if (l$pesLogin != lOther$pesLogin) {
      return false;
    }
    final l$pesNome = pesNome;
    final lOther$pesNome = other.pesNome;
    if (_$data.containsKey('pesNome') != other._$data.containsKey('pesNome')) {
      return false;
    }
    if (l$pesNome != lOther$pesNome) {
      return false;
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (_$data.containsKey('provider') !=
        other._$data.containsKey('provider')) {
      return false;
    }
    if (l$provider != lOther$provider) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (_$data.containsKey('telefone') !=
        other._$data.containsKey('telefone')) {
      return false;
    }
    if (l$telefone != lOther$telefone) {
      return false;
    }
    final l$validado = validado;
    final lOther$validado = other.validado;
    if (_$data.containsKey('validado') !=
        other._$data.containsKey('validado')) {
      return false;
    }
    if (l$validado != lOther$validado) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$backgroundImage = backgroundImage;
    final l$bairro = bairro;
    final l$cep = cep;
    final l$cidade = cidade;
    final l$complemento = complemento;
    final l$cpf = cpf;
    final l$descricao = descricao;
    final l$email = email;
    final l$estado = estado;
    final l$fotoPerfil = fotoPerfil;
    final l$idClientePagarme = idClientePagarme;
    final l$inativo = inativo;
    final l$logradouro = logradouro;
    final l$nickname = nickname;
    final l$numero = numero;
    final l$perfilAberto = perfilAberto;
    final l$pesId = pesId;
    final l$pesLogin = pesLogin;
    final l$pesNome = pesNome;
    final l$provider = provider;
    final l$telefone = telefone;
    final l$validado = validado;
    return Object.hashAll([
      _$data.containsKey('backgroundImage') ? l$backgroundImage : const {},
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cidade') ? l$cidade : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('cpf') ? l$cpf : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('fotoPerfil') ? l$fotoPerfil : const {},
      _$data.containsKey('idClientePagarme') ? l$idClientePagarme : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('nickname') ? l$nickname : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('perfilAberto') ? l$perfilAberto : const {},
      _$data.containsKey('pesId') ? l$pesId : const {},
      _$data.containsKey('pesLogin') ? l$pesLogin : const {},
      _$data.containsKey('pesNome') ? l$pesNome : const {},
      _$data.containsKey('provider') ? l$provider : const {},
      _$data.containsKey('telefone') ? l$telefone : const {},
      _$data.containsKey('validado') ? l$validado : const {},
    ]);
  }
}

class Input$GetPessoaPagamentoInput {
  factory Input$GetPessoaPagamentoInput({
    String? accountCheckDigit,
    String? accountNumber,
    double? annualRevenue,
    String? bairro,
    String? bairroRepresentante,
    int? bank,
    String? birthdate,
    String? birthdateRepresentante,
    String? branchCheckDigit,
    String? branchNumber,
    String? cep,
    String? cepRepresentante,
    int? cidade,
    int? cidadeRepresentante,
    String? companyName,
    String? complemento,
    String? complementoRepresentante,
    String? descricao,
    String? document,
    String? documentRepresentante,
    String? email,
    String? emailRepresentante,
    int? estado,
    int? estadoRepresentante,
    int? evento,
    String? holderDocument,
    String? holderName,
    int? holderType,
    int? id,
    String? idPagarme,
    String? idPagarmeConta,
    String? logradouro,
    String? logradouroRepresentante,
    double? monthlyIncome,
    double? monthlyIncomeRepresentante,
    String? name,
    String? nameRepresentante,
    String? numero,
    String? numeroRepresentante,
    String? professionalOccupation,
    String? professionalOccupationRepresentante,
    String? telefone,
    double? tipo,
    String? tradingName,
    int? transferEnabled,
    int? transferInterval,
    int? type,
  }) => Input$GetPessoaPagamentoInput._({
    if (accountCheckDigit != null) r'accountCheckDigit': accountCheckDigit,
    if (accountNumber != null) r'accountNumber': accountNumber,
    if (annualRevenue != null) r'annualRevenue': annualRevenue,
    if (bairro != null) r'bairro': bairro,
    if (bairroRepresentante != null)
      r'bairroRepresentante': bairroRepresentante,
    if (bank != null) r'bank': bank,
    if (birthdate != null) r'birthdate': birthdate,
    if (birthdateRepresentante != null)
      r'birthdateRepresentante': birthdateRepresentante,
    if (branchCheckDigit != null) r'branchCheckDigit': branchCheckDigit,
    if (branchNumber != null) r'branchNumber': branchNumber,
    if (cep != null) r'cep': cep,
    if (cepRepresentante != null) r'cepRepresentante': cepRepresentante,
    if (cidade != null) r'cidade': cidade,
    if (cidadeRepresentante != null)
      r'cidadeRepresentante': cidadeRepresentante,
    if (companyName != null) r'companyName': companyName,
    if (complemento != null) r'complemento': complemento,
    if (complementoRepresentante != null)
      r'complementoRepresentante': complementoRepresentante,
    if (descricao != null) r'descricao': descricao,
    if (document != null) r'document': document,
    if (documentRepresentante != null)
      r'documentRepresentante': documentRepresentante,
    if (email != null) r'email': email,
    if (emailRepresentante != null) r'emailRepresentante': emailRepresentante,
    if (estado != null) r'estado': estado,
    if (estadoRepresentante != null)
      r'estadoRepresentante': estadoRepresentante,
    if (evento != null) r'evento': evento,
    if (holderDocument != null) r'holderDocument': holderDocument,
    if (holderName != null) r'holderName': holderName,
    if (holderType != null) r'holderType': holderType,
    if (id != null) r'id': id,
    if (idPagarme != null) r'idPagarme': idPagarme,
    if (idPagarmeConta != null) r'idPagarmeConta': idPagarmeConta,
    if (logradouro != null) r'logradouro': logradouro,
    if (logradouroRepresentante != null)
      r'logradouroRepresentante': logradouroRepresentante,
    if (monthlyIncome != null) r'monthlyIncome': monthlyIncome,
    if (monthlyIncomeRepresentante != null)
      r'monthlyIncomeRepresentante': monthlyIncomeRepresentante,
    if (name != null) r'name': name,
    if (nameRepresentante != null) r'nameRepresentante': nameRepresentante,
    if (numero != null) r'numero': numero,
    if (numeroRepresentante != null)
      r'numeroRepresentante': numeroRepresentante,
    if (professionalOccupation != null)
      r'professionalOccupation': professionalOccupation,
    if (professionalOccupationRepresentante != null)
      r'professionalOccupationRepresentante':
          professionalOccupationRepresentante,
    if (telefone != null) r'telefone': telefone,
    if (tipo != null) r'tipo': tipo,
    if (tradingName != null) r'tradingName': tradingName,
    if (transferEnabled != null) r'transferEnabled': transferEnabled,
    if (transferInterval != null) r'transferInterval': transferInterval,
    if (type != null) r'type': type,
  });

  Input$GetPessoaPagamentoInput._(this._$data);

  factory Input$GetPessoaPagamentoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountCheckDigit')) {
      final l$accountCheckDigit = data['accountCheckDigit'];
      result$data['accountCheckDigit'] = (l$accountCheckDigit as String?);
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = (l$accountNumber as String?);
    }
    if (data.containsKey('annualRevenue')) {
      final l$annualRevenue = data['annualRevenue'];
      result$data['annualRevenue'] = (l$annualRevenue as num?)?.toDouble();
    }
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('bairroRepresentante')) {
      final l$bairroRepresentante = data['bairroRepresentante'];
      result$data['bairroRepresentante'] = (l$bairroRepresentante as String?);
    }
    if (data.containsKey('bank')) {
      final l$bank = data['bank'];
      result$data['bank'] = (l$bank as int?);
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = (l$birthdate as String?);
    }
    if (data.containsKey('birthdateRepresentante')) {
      final l$birthdateRepresentante = data['birthdateRepresentante'];
      result$data['birthdateRepresentante'] =
          (l$birthdateRepresentante as String?);
    }
    if (data.containsKey('branchCheckDigit')) {
      final l$branchCheckDigit = data['branchCheckDigit'];
      result$data['branchCheckDigit'] = (l$branchCheckDigit as String?);
    }
    if (data.containsKey('branchNumber')) {
      final l$branchNumber = data['branchNumber'];
      result$data['branchNumber'] = (l$branchNumber as String?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cepRepresentante')) {
      final l$cepRepresentante = data['cepRepresentante'];
      result$data['cepRepresentante'] = (l$cepRepresentante as String?);
    }
    if (data.containsKey('cidade')) {
      final l$cidade = data['cidade'];
      result$data['cidade'] = (l$cidade as int?);
    }
    if (data.containsKey('cidadeRepresentante')) {
      final l$cidadeRepresentante = data['cidadeRepresentante'];
      result$data['cidadeRepresentante'] = (l$cidadeRepresentante as int?);
    }
    if (data.containsKey('companyName')) {
      final l$companyName = data['companyName'];
      result$data['companyName'] = (l$companyName as String?);
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('complementoRepresentante')) {
      final l$complementoRepresentante = data['complementoRepresentante'];
      result$data['complementoRepresentante'] =
          (l$complementoRepresentante as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('document')) {
      final l$document = data['document'];
      result$data['document'] = (l$document as String?);
    }
    if (data.containsKey('documentRepresentante')) {
      final l$documentRepresentante = data['documentRepresentante'];
      result$data['documentRepresentante'] =
          (l$documentRepresentante as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('emailRepresentante')) {
      final l$emailRepresentante = data['emailRepresentante'];
      result$data['emailRepresentante'] = (l$emailRepresentante as String?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as int?);
    }
    if (data.containsKey('estadoRepresentante')) {
      final l$estadoRepresentante = data['estadoRepresentante'];
      result$data['estadoRepresentante'] = (l$estadoRepresentante as int?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('holderDocument')) {
      final l$holderDocument = data['holderDocument'];
      result$data['holderDocument'] = (l$holderDocument as String?);
    }
    if (data.containsKey('holderName')) {
      final l$holderName = data['holderName'];
      result$data['holderName'] = (l$holderName as String?);
    }
    if (data.containsKey('holderType')) {
      final l$holderType = data['holderType'];
      result$data['holderType'] = (l$holderType as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('idPagarme')) {
      final l$idPagarme = data['idPagarme'];
      result$data['idPagarme'] = (l$idPagarme as String?);
    }
    if (data.containsKey('idPagarmeConta')) {
      final l$idPagarmeConta = data['idPagarmeConta'];
      result$data['idPagarmeConta'] = (l$idPagarmeConta as String?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('logradouroRepresentante')) {
      final l$logradouroRepresentante = data['logradouroRepresentante'];
      result$data['logradouroRepresentante'] =
          (l$logradouroRepresentante as String?);
    }
    if (data.containsKey('monthlyIncome')) {
      final l$monthlyIncome = data['monthlyIncome'];
      result$data['monthlyIncome'] = (l$monthlyIncome as num?)?.toDouble();
    }
    if (data.containsKey('monthlyIncomeRepresentante')) {
      final l$monthlyIncomeRepresentante = data['monthlyIncomeRepresentante'];
      result$data['monthlyIncomeRepresentante'] =
          (l$monthlyIncomeRepresentante as num?)?.toDouble();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nameRepresentante')) {
      final l$nameRepresentante = data['nameRepresentante'];
      result$data['nameRepresentante'] = (l$nameRepresentante as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('numeroRepresentante')) {
      final l$numeroRepresentante = data['numeroRepresentante'];
      result$data['numeroRepresentante'] = (l$numeroRepresentante as String?);
    }
    if (data.containsKey('professionalOccupation')) {
      final l$professionalOccupation = data['professionalOccupation'];
      result$data['professionalOccupation'] =
          (l$professionalOccupation as String?);
    }
    if (data.containsKey('professionalOccupationRepresentante')) {
      final l$professionalOccupationRepresentante =
          data['professionalOccupationRepresentante'];
      result$data['professionalOccupationRepresentante'] =
          (l$professionalOccupationRepresentante as String?);
    }
    if (data.containsKey('telefone')) {
      final l$telefone = data['telefone'];
      result$data['telefone'] = (l$telefone as String?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as num?)?.toDouble();
    }
    if (data.containsKey('tradingName')) {
      final l$tradingName = data['tradingName'];
      result$data['tradingName'] = (l$tradingName as String?);
    }
    if (data.containsKey('transferEnabled')) {
      final l$transferEnabled = data['transferEnabled'];
      result$data['transferEnabled'] = (l$transferEnabled as int?);
    }
    if (data.containsKey('transferInterval')) {
      final l$transferInterval = data['transferInterval'];
      result$data['transferInterval'] = (l$transferInterval as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as int?);
    }
    return Input$GetPessoaPagamentoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountCheckDigit => (_$data['accountCheckDigit'] as String?);

  String? get accountNumber => (_$data['accountNumber'] as String?);

  double? get annualRevenue => (_$data['annualRevenue'] as double?);

  String? get bairro => (_$data['bairro'] as String?);

  String? get bairroRepresentante => (_$data['bairroRepresentante'] as String?);

  int? get bank => (_$data['bank'] as int?);

  String? get birthdate => (_$data['birthdate'] as String?);

  String? get birthdateRepresentante =>
      (_$data['birthdateRepresentante'] as String?);

  String? get branchCheckDigit => (_$data['branchCheckDigit'] as String?);

  String? get branchNumber => (_$data['branchNumber'] as String?);

  String? get cep => (_$data['cep'] as String?);

  String? get cepRepresentante => (_$data['cepRepresentante'] as String?);

  int? get cidade => (_$data['cidade'] as int?);

  int? get cidadeRepresentante => (_$data['cidadeRepresentante'] as int?);

  String? get companyName => (_$data['companyName'] as String?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get complementoRepresentante =>
      (_$data['complementoRepresentante'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get document => (_$data['document'] as String?);

  String? get documentRepresentante =>
      (_$data['documentRepresentante'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get emailRepresentante => (_$data['emailRepresentante'] as String?);

  int? get estado => (_$data['estado'] as int?);

  int? get estadoRepresentante => (_$data['estadoRepresentante'] as int?);

  int? get evento => (_$data['evento'] as int?);

  String? get holderDocument => (_$data['holderDocument'] as String?);

  String? get holderName => (_$data['holderName'] as String?);

  int? get holderType => (_$data['holderType'] as int?);

  int? get id => (_$data['id'] as int?);

  String? get idPagarme => (_$data['idPagarme'] as String?);

  String? get idPagarmeConta => (_$data['idPagarmeConta'] as String?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get logradouroRepresentante =>
      (_$data['logradouroRepresentante'] as String?);

  double? get monthlyIncome => (_$data['monthlyIncome'] as double?);

  double? get monthlyIncomeRepresentante =>
      (_$data['monthlyIncomeRepresentante'] as double?);

  String? get name => (_$data['name'] as String?);

  String? get nameRepresentante => (_$data['nameRepresentante'] as String?);

  String? get numero => (_$data['numero'] as String?);

  String? get numeroRepresentante => (_$data['numeroRepresentante'] as String?);

  String? get professionalOccupation =>
      (_$data['professionalOccupation'] as String?);

  String? get professionalOccupationRepresentante =>
      (_$data['professionalOccupationRepresentante'] as String?);

  String? get telefone => (_$data['telefone'] as String?);

  double? get tipo => (_$data['tipo'] as double?);

  String? get tradingName => (_$data['tradingName'] as String?);

  int? get transferEnabled => (_$data['transferEnabled'] as int?);

  int? get transferInterval => (_$data['transferInterval'] as int?);

  int? get type => (_$data['type'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountCheckDigit')) {
      final l$accountCheckDigit = accountCheckDigit;
      result$data['accountCheckDigit'] = l$accountCheckDigit;
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber;
    }
    if (_$data.containsKey('annualRevenue')) {
      final l$annualRevenue = annualRevenue;
      result$data['annualRevenue'] = l$annualRevenue;
    }
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('bairroRepresentante')) {
      final l$bairroRepresentante = bairroRepresentante;
      result$data['bairroRepresentante'] = l$bairroRepresentante;
    }
    if (_$data.containsKey('bank')) {
      final l$bank = bank;
      result$data['bank'] = l$bank;
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate;
    }
    if (_$data.containsKey('birthdateRepresentante')) {
      final l$birthdateRepresentante = birthdateRepresentante;
      result$data['birthdateRepresentante'] = l$birthdateRepresentante;
    }
    if (_$data.containsKey('branchCheckDigit')) {
      final l$branchCheckDigit = branchCheckDigit;
      result$data['branchCheckDigit'] = l$branchCheckDigit;
    }
    if (_$data.containsKey('branchNumber')) {
      final l$branchNumber = branchNumber;
      result$data['branchNumber'] = l$branchNumber;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cepRepresentante')) {
      final l$cepRepresentante = cepRepresentante;
      result$data['cepRepresentante'] = l$cepRepresentante;
    }
    if (_$data.containsKey('cidade')) {
      final l$cidade = cidade;
      result$data['cidade'] = l$cidade;
    }
    if (_$data.containsKey('cidadeRepresentante')) {
      final l$cidadeRepresentante = cidadeRepresentante;
      result$data['cidadeRepresentante'] = l$cidadeRepresentante;
    }
    if (_$data.containsKey('companyName')) {
      final l$companyName = companyName;
      result$data['companyName'] = l$companyName;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('complementoRepresentante')) {
      final l$complementoRepresentante = complementoRepresentante;
      result$data['complementoRepresentante'] = l$complementoRepresentante;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('document')) {
      final l$document = document;
      result$data['document'] = l$document;
    }
    if (_$data.containsKey('documentRepresentante')) {
      final l$documentRepresentante = documentRepresentante;
      result$data['documentRepresentante'] = l$documentRepresentante;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('emailRepresentante')) {
      final l$emailRepresentante = emailRepresentante;
      result$data['emailRepresentante'] = l$emailRepresentante;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('estadoRepresentante')) {
      final l$estadoRepresentante = estadoRepresentante;
      result$data['estadoRepresentante'] = l$estadoRepresentante;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('holderDocument')) {
      final l$holderDocument = holderDocument;
      result$data['holderDocument'] = l$holderDocument;
    }
    if (_$data.containsKey('holderName')) {
      final l$holderName = holderName;
      result$data['holderName'] = l$holderName;
    }
    if (_$data.containsKey('holderType')) {
      final l$holderType = holderType;
      result$data['holderType'] = l$holderType;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idPagarme')) {
      final l$idPagarme = idPagarme;
      result$data['idPagarme'] = l$idPagarme;
    }
    if (_$data.containsKey('idPagarmeConta')) {
      final l$idPagarmeConta = idPagarmeConta;
      result$data['idPagarmeConta'] = l$idPagarmeConta;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('logradouroRepresentante')) {
      final l$logradouroRepresentante = logradouroRepresentante;
      result$data['logradouroRepresentante'] = l$logradouroRepresentante;
    }
    if (_$data.containsKey('monthlyIncome')) {
      final l$monthlyIncome = monthlyIncome;
      result$data['monthlyIncome'] = l$monthlyIncome;
    }
    if (_$data.containsKey('monthlyIncomeRepresentante')) {
      final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
      result$data['monthlyIncomeRepresentante'] = l$monthlyIncomeRepresentante;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nameRepresentante')) {
      final l$nameRepresentante = nameRepresentante;
      result$data['nameRepresentante'] = l$nameRepresentante;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('numeroRepresentante')) {
      final l$numeroRepresentante = numeroRepresentante;
      result$data['numeroRepresentante'] = l$numeroRepresentante;
    }
    if (_$data.containsKey('professionalOccupation')) {
      final l$professionalOccupation = professionalOccupation;
      result$data['professionalOccupation'] = l$professionalOccupation;
    }
    if (_$data.containsKey('professionalOccupationRepresentante')) {
      final l$professionalOccupationRepresentante =
          professionalOccupationRepresentante;
      result$data['professionalOccupationRepresentante'] =
          l$professionalOccupationRepresentante;
    }
    if (_$data.containsKey('telefone')) {
      final l$telefone = telefone;
      result$data['telefone'] = l$telefone;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    if (_$data.containsKey('tradingName')) {
      final l$tradingName = tradingName;
      result$data['tradingName'] = l$tradingName;
    }
    if (_$data.containsKey('transferEnabled')) {
      final l$transferEnabled = transferEnabled;
      result$data['transferEnabled'] = l$transferEnabled;
    }
    if (_$data.containsKey('transferInterval')) {
      final l$transferInterval = transferInterval;
      result$data['transferInterval'] = l$transferInterval;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetPessoaPagamentoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountCheckDigit = accountCheckDigit;
    final lOther$accountCheckDigit = other.accountCheckDigit;
    if (_$data.containsKey('accountCheckDigit') !=
        other._$data.containsKey('accountCheckDigit')) {
      return false;
    }
    if (l$accountCheckDigit != lOther$accountCheckDigit) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$annualRevenue = annualRevenue;
    final lOther$annualRevenue = other.annualRevenue;
    if (_$data.containsKey('annualRevenue') !=
        other._$data.containsKey('annualRevenue')) {
      return false;
    }
    if (l$annualRevenue != lOther$annualRevenue) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$bairroRepresentante = bairroRepresentante;
    final lOther$bairroRepresentante = other.bairroRepresentante;
    if (_$data.containsKey('bairroRepresentante') !=
        other._$data.containsKey('bairroRepresentante')) {
      return false;
    }
    if (l$bairroRepresentante != lOther$bairroRepresentante) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (_$data.containsKey('bank') != other._$data.containsKey('bank')) {
      return false;
    }
    if (l$bank != lOther$bank) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$birthdateRepresentante = birthdateRepresentante;
    final lOther$birthdateRepresentante = other.birthdateRepresentante;
    if (_$data.containsKey('birthdateRepresentante') !=
        other._$data.containsKey('birthdateRepresentante')) {
      return false;
    }
    if (l$birthdateRepresentante != lOther$birthdateRepresentante) {
      return false;
    }
    final l$branchCheckDigit = branchCheckDigit;
    final lOther$branchCheckDigit = other.branchCheckDigit;
    if (_$data.containsKey('branchCheckDigit') !=
        other._$data.containsKey('branchCheckDigit')) {
      return false;
    }
    if (l$branchCheckDigit != lOther$branchCheckDigit) {
      return false;
    }
    final l$branchNumber = branchNumber;
    final lOther$branchNumber = other.branchNumber;
    if (_$data.containsKey('branchNumber') !=
        other._$data.containsKey('branchNumber')) {
      return false;
    }
    if (l$branchNumber != lOther$branchNumber) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cepRepresentante = cepRepresentante;
    final lOther$cepRepresentante = other.cepRepresentante;
    if (_$data.containsKey('cepRepresentante') !=
        other._$data.containsKey('cepRepresentante')) {
      return false;
    }
    if (l$cepRepresentante != lOther$cepRepresentante) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (_$data.containsKey('cidade') != other._$data.containsKey('cidade')) {
      return false;
    }
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$cidadeRepresentante = cidadeRepresentante;
    final lOther$cidadeRepresentante = other.cidadeRepresentante;
    if (_$data.containsKey('cidadeRepresentante') !=
        other._$data.containsKey('cidadeRepresentante')) {
      return false;
    }
    if (l$cidadeRepresentante != lOther$cidadeRepresentante) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (_$data.containsKey('companyName') !=
        other._$data.containsKey('companyName')) {
      return false;
    }
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$complementoRepresentante = complementoRepresentante;
    final lOther$complementoRepresentante = other.complementoRepresentante;
    if (_$data.containsKey('complementoRepresentante') !=
        other._$data.containsKey('complementoRepresentante')) {
      return false;
    }
    if (l$complementoRepresentante != lOther$complementoRepresentante) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (_$data.containsKey('document') !=
        other._$data.containsKey('document')) {
      return false;
    }
    if (l$document != lOther$document) {
      return false;
    }
    final l$documentRepresentante = documentRepresentante;
    final lOther$documentRepresentante = other.documentRepresentante;
    if (_$data.containsKey('documentRepresentante') !=
        other._$data.containsKey('documentRepresentante')) {
      return false;
    }
    if (l$documentRepresentante != lOther$documentRepresentante) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$emailRepresentante = emailRepresentante;
    final lOther$emailRepresentante = other.emailRepresentante;
    if (_$data.containsKey('emailRepresentante') !=
        other._$data.containsKey('emailRepresentante')) {
      return false;
    }
    if (l$emailRepresentante != lOther$emailRepresentante) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$estadoRepresentante = estadoRepresentante;
    final lOther$estadoRepresentante = other.estadoRepresentante;
    if (_$data.containsKey('estadoRepresentante') !=
        other._$data.containsKey('estadoRepresentante')) {
      return false;
    }
    if (l$estadoRepresentante != lOther$estadoRepresentante) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$holderDocument = holderDocument;
    final lOther$holderDocument = other.holderDocument;
    if (_$data.containsKey('holderDocument') !=
        other._$data.containsKey('holderDocument')) {
      return false;
    }
    if (l$holderDocument != lOther$holderDocument) {
      return false;
    }
    final l$holderName = holderName;
    final lOther$holderName = other.holderName;
    if (_$data.containsKey('holderName') !=
        other._$data.containsKey('holderName')) {
      return false;
    }
    if (l$holderName != lOther$holderName) {
      return false;
    }
    final l$holderType = holderType;
    final lOther$holderType = other.holderType;
    if (_$data.containsKey('holderType') !=
        other._$data.containsKey('holderType')) {
      return false;
    }
    if (l$holderType != lOther$holderType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idPagarme = idPagarme;
    final lOther$idPagarme = other.idPagarme;
    if (_$data.containsKey('idPagarme') !=
        other._$data.containsKey('idPagarme')) {
      return false;
    }
    if (l$idPagarme != lOther$idPagarme) {
      return false;
    }
    final l$idPagarmeConta = idPagarmeConta;
    final lOther$idPagarmeConta = other.idPagarmeConta;
    if (_$data.containsKey('idPagarmeConta') !=
        other._$data.containsKey('idPagarmeConta')) {
      return false;
    }
    if (l$idPagarmeConta != lOther$idPagarmeConta) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$logradouroRepresentante = logradouroRepresentante;
    final lOther$logradouroRepresentante = other.logradouroRepresentante;
    if (_$data.containsKey('logradouroRepresentante') !=
        other._$data.containsKey('logradouroRepresentante')) {
      return false;
    }
    if (l$logradouroRepresentante != lOther$logradouroRepresentante) {
      return false;
    }
    final l$monthlyIncome = monthlyIncome;
    final lOther$monthlyIncome = other.monthlyIncome;
    if (_$data.containsKey('monthlyIncome') !=
        other._$data.containsKey('monthlyIncome')) {
      return false;
    }
    if (l$monthlyIncome != lOther$monthlyIncome) {
      return false;
    }
    final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
    final lOther$monthlyIncomeRepresentante = other.monthlyIncomeRepresentante;
    if (_$data.containsKey('monthlyIncomeRepresentante') !=
        other._$data.containsKey('monthlyIncomeRepresentante')) {
      return false;
    }
    if (l$monthlyIncomeRepresentante != lOther$monthlyIncomeRepresentante) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$nameRepresentante = nameRepresentante;
    final lOther$nameRepresentante = other.nameRepresentante;
    if (_$data.containsKey('nameRepresentante') !=
        other._$data.containsKey('nameRepresentante')) {
      return false;
    }
    if (l$nameRepresentante != lOther$nameRepresentante) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$numeroRepresentante = numeroRepresentante;
    final lOther$numeroRepresentante = other.numeroRepresentante;
    if (_$data.containsKey('numeroRepresentante') !=
        other._$data.containsKey('numeroRepresentante')) {
      return false;
    }
    if (l$numeroRepresentante != lOther$numeroRepresentante) {
      return false;
    }
    final l$professionalOccupation = professionalOccupation;
    final lOther$professionalOccupation = other.professionalOccupation;
    if (_$data.containsKey('professionalOccupation') !=
        other._$data.containsKey('professionalOccupation')) {
      return false;
    }
    if (l$professionalOccupation != lOther$professionalOccupation) {
      return false;
    }
    final l$professionalOccupationRepresentante =
        professionalOccupationRepresentante;
    final lOther$professionalOccupationRepresentante =
        other.professionalOccupationRepresentante;
    if (_$data.containsKey('professionalOccupationRepresentante') !=
        other._$data.containsKey('professionalOccupationRepresentante')) {
      return false;
    }
    if (l$professionalOccupationRepresentante !=
        lOther$professionalOccupationRepresentante) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (_$data.containsKey('telefone') !=
        other._$data.containsKey('telefone')) {
      return false;
    }
    if (l$telefone != lOther$telefone) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$tradingName = tradingName;
    final lOther$tradingName = other.tradingName;
    if (_$data.containsKey('tradingName') !=
        other._$data.containsKey('tradingName')) {
      return false;
    }
    if (l$tradingName != lOther$tradingName) {
      return false;
    }
    final l$transferEnabled = transferEnabled;
    final lOther$transferEnabled = other.transferEnabled;
    if (_$data.containsKey('transferEnabled') !=
        other._$data.containsKey('transferEnabled')) {
      return false;
    }
    if (l$transferEnabled != lOther$transferEnabled) {
      return false;
    }
    final l$transferInterval = transferInterval;
    final lOther$transferInterval = other.transferInterval;
    if (_$data.containsKey('transferInterval') !=
        other._$data.containsKey('transferInterval')) {
      return false;
    }
    if (l$transferInterval != lOther$transferInterval) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountCheckDigit = accountCheckDigit;
    final l$accountNumber = accountNumber;
    final l$annualRevenue = annualRevenue;
    final l$bairro = bairro;
    final l$bairroRepresentante = bairroRepresentante;
    final l$bank = bank;
    final l$birthdate = birthdate;
    final l$birthdateRepresentante = birthdateRepresentante;
    final l$branchCheckDigit = branchCheckDigit;
    final l$branchNumber = branchNumber;
    final l$cep = cep;
    final l$cepRepresentante = cepRepresentante;
    final l$cidade = cidade;
    final l$cidadeRepresentante = cidadeRepresentante;
    final l$companyName = companyName;
    final l$complemento = complemento;
    final l$complementoRepresentante = complementoRepresentante;
    final l$descricao = descricao;
    final l$document = document;
    final l$documentRepresentante = documentRepresentante;
    final l$email = email;
    final l$emailRepresentante = emailRepresentante;
    final l$estado = estado;
    final l$estadoRepresentante = estadoRepresentante;
    final l$evento = evento;
    final l$holderDocument = holderDocument;
    final l$holderName = holderName;
    final l$holderType = holderType;
    final l$id = id;
    final l$idPagarme = idPagarme;
    final l$idPagarmeConta = idPagarmeConta;
    final l$logradouro = logradouro;
    final l$logradouroRepresentante = logradouroRepresentante;
    final l$monthlyIncome = monthlyIncome;
    final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
    final l$name = name;
    final l$nameRepresentante = nameRepresentante;
    final l$numero = numero;
    final l$numeroRepresentante = numeroRepresentante;
    final l$professionalOccupation = professionalOccupation;
    final l$professionalOccupationRepresentante =
        professionalOccupationRepresentante;
    final l$telefone = telefone;
    final l$tipo = tipo;
    final l$tradingName = tradingName;
    final l$transferEnabled = transferEnabled;
    final l$transferInterval = transferInterval;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('accountCheckDigit') ? l$accountCheckDigit : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('annualRevenue') ? l$annualRevenue : const {},
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('bairroRepresentante')
          ? l$bairroRepresentante
          : const {},
      _$data.containsKey('bank') ? l$bank : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('birthdateRepresentante')
          ? l$birthdateRepresentante
          : const {},
      _$data.containsKey('branchCheckDigit') ? l$branchCheckDigit : const {},
      _$data.containsKey('branchNumber') ? l$branchNumber : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cepRepresentante') ? l$cepRepresentante : const {},
      _$data.containsKey('cidade') ? l$cidade : const {},
      _$data.containsKey('cidadeRepresentante')
          ? l$cidadeRepresentante
          : const {},
      _$data.containsKey('companyName') ? l$companyName : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('complementoRepresentante')
          ? l$complementoRepresentante
          : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('document') ? l$document : const {},
      _$data.containsKey('documentRepresentante')
          ? l$documentRepresentante
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('emailRepresentante')
          ? l$emailRepresentante
          : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('estadoRepresentante')
          ? l$estadoRepresentante
          : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('holderDocument') ? l$holderDocument : const {},
      _$data.containsKey('holderName') ? l$holderName : const {},
      _$data.containsKey('holderType') ? l$holderType : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idPagarme') ? l$idPagarme : const {},
      _$data.containsKey('idPagarmeConta') ? l$idPagarmeConta : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('logradouroRepresentante')
          ? l$logradouroRepresentante
          : const {},
      _$data.containsKey('monthlyIncome') ? l$monthlyIncome : const {},
      _$data.containsKey('monthlyIncomeRepresentante')
          ? l$monthlyIncomeRepresentante
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nameRepresentante') ? l$nameRepresentante : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('numeroRepresentante')
          ? l$numeroRepresentante
          : const {},
      _$data.containsKey('professionalOccupation')
          ? l$professionalOccupation
          : const {},
      _$data.containsKey('professionalOccupationRepresentante')
          ? l$professionalOccupationRepresentante
          : const {},
      _$data.containsKey('telefone') ? l$telefone : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
      _$data.containsKey('tradingName') ? l$tradingName : const {},
      _$data.containsKey('transferEnabled') ? l$transferEnabled : const {},
      _$data.containsKey('transferInterval') ? l$transferInterval : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

class Input$GetPreVendaCardapioInput {
  factory Input$GetPreVendaCardapioInput({
    int? cardapio,
    int? evento,
    int? id,
    int? preVenda,
    int? quantidade,
    double? valorTotal,
    double? valorUnitario,
  }) => Input$GetPreVendaCardapioInput._({
    if (cardapio != null) r'cardapio': cardapio,
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (preVenda != null) r'preVenda': preVenda,
    if (quantidade != null) r'quantidade': quantidade,
    if (valorTotal != null) r'valorTotal': valorTotal,
    if (valorUnitario != null) r'valorUnitario': valorUnitario,
  });

  Input$GetPreVendaCardapioInput._(this._$data);

  factory Input$GetPreVendaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cardapio')) {
      final l$cardapio = data['cardapio'];
      result$data['cardapio'] = (l$cardapio as int?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('preVenda')) {
      final l$preVenda = data['preVenda'];
      result$data['preVenda'] = (l$preVenda as int?);
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as int?);
    }
    if (data.containsKey('valorTotal')) {
      final l$valorTotal = data['valorTotal'];
      result$data['valorTotal'] = (l$valorTotal as num?)?.toDouble();
    }
    if (data.containsKey('valorUnitario')) {
      final l$valorUnitario = data['valorUnitario'];
      result$data['valorUnitario'] = (l$valorUnitario as num?)?.toDouble();
    }
    return Input$GetPreVendaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cardapio => (_$data['cardapio'] as int?);

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get preVenda => (_$data['preVenda'] as int?);

  int? get quantidade => (_$data['quantidade'] as int?);

  double? get valorTotal => (_$data['valorTotal'] as double?);

  double? get valorUnitario => (_$data['valorUnitario'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cardapio')) {
      final l$cardapio = cardapio;
      result$data['cardapio'] = l$cardapio;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('preVenda')) {
      final l$preVenda = preVenda;
      result$data['preVenda'] = l$preVenda;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    if (_$data.containsKey('valorTotal')) {
      final l$valorTotal = valorTotal;
      result$data['valorTotal'] = l$valorTotal;
    }
    if (_$data.containsKey('valorUnitario')) {
      final l$valorUnitario = valorUnitario;
      result$data['valorUnitario'] = l$valorUnitario;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetPreVendaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (_$data.containsKey('cardapio') !=
        other._$data.containsKey('cardapio')) {
      return false;
    }
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (_$data.containsKey('preVenda') !=
        other._$data.containsKey('preVenda')) {
      return false;
    }
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (_$data.containsKey('valorTotal') !=
        other._$data.containsKey('valorTotal')) {
      return false;
    }
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (_$data.containsKey('valorUnitario') !=
        other._$data.containsKey('valorUnitario')) {
      return false;
    }
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$evento = evento;
    final l$id = id;
    final l$preVenda = preVenda;
    final l$quantidade = quantidade;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    return Object.hashAll([
      _$data.containsKey('cardapio') ? l$cardapio : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('preVenda') ? l$preVenda : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
      _$data.containsKey('valorTotal') ? l$valorTotal : const {},
      _$data.containsKey('valorUnitario') ? l$valorUnitario : const {},
    ]);
  }
}

class Input$GetPreVendaIngressoInput {
  factory Input$GetPreVendaIngressoInput({
    int? evento,
    int? id,
    int? ingresso,
    int? preVenda,
    int? quantidade,
    double? valorTotal,
    double? valorUnitario,
  }) => Input$GetPreVendaIngressoInput._({
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (ingresso != null) r'ingresso': ingresso,
    if (preVenda != null) r'preVenda': preVenda,
    if (quantidade != null) r'quantidade': quantidade,
    if (valorTotal != null) r'valorTotal': valorTotal,
    if (valorUnitario != null) r'valorUnitario': valorUnitario,
  });

  Input$GetPreVendaIngressoInput._(this._$data);

  factory Input$GetPreVendaIngressoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('ingresso')) {
      final l$ingresso = data['ingresso'];
      result$data['ingresso'] = (l$ingresso as int?);
    }
    if (data.containsKey('preVenda')) {
      final l$preVenda = data['preVenda'];
      result$data['preVenda'] = (l$preVenda as int?);
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as int?);
    }
    if (data.containsKey('valorTotal')) {
      final l$valorTotal = data['valorTotal'];
      result$data['valorTotal'] = (l$valorTotal as num?)?.toDouble();
    }
    if (data.containsKey('valorUnitario')) {
      final l$valorUnitario = data['valorUnitario'];
      result$data['valorUnitario'] = (l$valorUnitario as num?)?.toDouble();
    }
    return Input$GetPreVendaIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get ingresso => (_$data['ingresso'] as int?);

  int? get preVenda => (_$data['preVenda'] as int?);

  int? get quantidade => (_$data['quantidade'] as int?);

  double? get valorTotal => (_$data['valorTotal'] as double?);

  double? get valorUnitario => (_$data['valorUnitario'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('ingresso')) {
      final l$ingresso = ingresso;
      result$data['ingresso'] = l$ingresso;
    }
    if (_$data.containsKey('preVenda')) {
      final l$preVenda = preVenda;
      result$data['preVenda'] = l$preVenda;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    if (_$data.containsKey('valorTotal')) {
      final l$valorTotal = valorTotal;
      result$data['valorTotal'] = l$valorTotal;
    }
    if (_$data.containsKey('valorUnitario')) {
      final l$valorUnitario = valorUnitario;
      result$data['valorUnitario'] = l$valorUnitario;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetPreVendaIngressoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (_$data.containsKey('ingresso') !=
        other._$data.containsKey('ingresso')) {
      return false;
    }
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (_$data.containsKey('preVenda') !=
        other._$data.containsKey('preVenda')) {
      return false;
    }
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (_$data.containsKey('valorTotal') !=
        other._$data.containsKey('valorTotal')) {
      return false;
    }
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (_$data.containsKey('valorUnitario') !=
        other._$data.containsKey('valorUnitario')) {
      return false;
    }
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$ingresso = ingresso;
    final l$preVenda = preVenda;
    final l$quantidade = quantidade;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('ingresso') ? l$ingresso : const {},
      _$data.containsKey('preVenda') ? l$preVenda : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
      _$data.containsKey('valorTotal') ? l$valorTotal : const {},
      _$data.containsKey('valorUnitario') ? l$valorUnitario : const {},
    ]);
  }
}

class Input$GetPreVendaInput {
  factory Input$GetPreVendaInput({
    int? evento,
    int? id,
    int? inativo,
    int? pessoa,
    int? status,
    int? tipo,
    double? valor,
  }) => Input$GetPreVendaInput._({
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (pessoa != null) r'pessoa': pessoa,
    if (status != null) r'status': status,
    if (tipo != null) r'tipo': tipo,
    if (valor != null) r'valor': valor,
  });

  Input$GetPreVendaInput._(this._$data);

  factory Input$GetPreVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$GetPreVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get inativo => (_$data['inativo'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get status => (_$data['status'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetPreVendaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$inativo = inativo;
    final l$pessoa = pessoa;
    final l$status = status;
    final l$tipo = tipo;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$GetPreVendaPessoaInput {
  factory Input$GetPreVendaPessoaInput({
    int? id,
    int? pessoaCartao,
    int? pessoaEnvia,
    int? pessoaRecebe,
    int? preVenda,
    int? status,
    int? tipo,
  }) => Input$GetPreVendaPessoaInput._({
    if (id != null) r'id': id,
    if (pessoaCartao != null) r'pessoaCartao': pessoaCartao,
    if (pessoaEnvia != null) r'pessoaEnvia': pessoaEnvia,
    if (pessoaRecebe != null) r'pessoaRecebe': pessoaRecebe,
    if (preVenda != null) r'preVenda': preVenda,
    if (status != null) r'status': status,
    if (tipo != null) r'tipo': tipo,
  });

  Input$GetPreVendaPessoaInput._(this._$data);

  factory Input$GetPreVendaPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('pessoaCartao')) {
      final l$pessoaCartao = data['pessoaCartao'];
      result$data['pessoaCartao'] = (l$pessoaCartao as int?);
    }
    if (data.containsKey('pessoaEnvia')) {
      final l$pessoaEnvia = data['pessoaEnvia'];
      result$data['pessoaEnvia'] = (l$pessoaEnvia as int?);
    }
    if (data.containsKey('pessoaRecebe')) {
      final l$pessoaRecebe = data['pessoaRecebe'];
      result$data['pessoaRecebe'] = (l$pessoaRecebe as int?);
    }
    if (data.containsKey('preVenda')) {
      final l$preVenda = data['preVenda'];
      result$data['preVenda'] = (l$preVenda as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    return Input$GetPreVendaPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get pessoaCartao => (_$data['pessoaCartao'] as int?);

  int? get pessoaEnvia => (_$data['pessoaEnvia'] as int?);

  int? get pessoaRecebe => (_$data['pessoaRecebe'] as int?);

  int? get preVenda => (_$data['preVenda'] as int?);

  int? get status => (_$data['status'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('pessoaCartao')) {
      final l$pessoaCartao = pessoaCartao;
      result$data['pessoaCartao'] = l$pessoaCartao;
    }
    if (_$data.containsKey('pessoaEnvia')) {
      final l$pessoaEnvia = pessoaEnvia;
      result$data['pessoaEnvia'] = l$pessoaEnvia;
    }
    if (_$data.containsKey('pessoaRecebe')) {
      final l$pessoaRecebe = pessoaRecebe;
      result$data['pessoaRecebe'] = l$pessoaRecebe;
    }
    if (_$data.containsKey('preVenda')) {
      final l$preVenda = preVenda;
      result$data['preVenda'] = l$preVenda;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetPreVendaPessoaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoaCartao = pessoaCartao;
    final lOther$pessoaCartao = other.pessoaCartao;
    if (_$data.containsKey('pessoaCartao') !=
        other._$data.containsKey('pessoaCartao')) {
      return false;
    }
    if (l$pessoaCartao != lOther$pessoaCartao) {
      return false;
    }
    final l$pessoaEnvia = pessoaEnvia;
    final lOther$pessoaEnvia = other.pessoaEnvia;
    if (_$data.containsKey('pessoaEnvia') !=
        other._$data.containsKey('pessoaEnvia')) {
      return false;
    }
    if (l$pessoaEnvia != lOther$pessoaEnvia) {
      return false;
    }
    final l$pessoaRecebe = pessoaRecebe;
    final lOther$pessoaRecebe = other.pessoaRecebe;
    if (_$data.containsKey('pessoaRecebe') !=
        other._$data.containsKey('pessoaRecebe')) {
      return false;
    }
    if (l$pessoaRecebe != lOther$pessoaRecebe) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (_$data.containsKey('preVenda') !=
        other._$data.containsKey('preVenda')) {
      return false;
    }
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$pessoaCartao = pessoaCartao;
    final l$pessoaEnvia = pessoaEnvia;
    final l$pessoaRecebe = pessoaRecebe;
    final l$preVenda = preVenda;
    final l$status = status;
    final l$tipo = tipo;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('pessoaCartao') ? l$pessoaCartao : const {},
      _$data.containsKey('pessoaEnvia') ? l$pessoaEnvia : const {},
      _$data.containsKey('pessoaRecebe') ? l$pessoaRecebe : const {},
      _$data.containsKey('preVenda') ? l$preVenda : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
    ]);
  }
}

class Input$GetSeguindoInput {
  factory Input$GetSeguindoInput({
    int? id,
    int? pessoa,
    int? pessoaSeguida,
    int? status,
  }) => Input$GetSeguindoInput._({
    if (id != null) r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
    if (pessoaSeguida != null) r'pessoaSeguida': pessoaSeguida,
    if (status != null) r'status': status,
  });

  Input$GetSeguindoInput._(this._$data);

  factory Input$GetSeguindoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('pessoaSeguida')) {
      final l$pessoaSeguida = data['pessoaSeguida'];
      result$data['pessoaSeguida'] = (l$pessoaSeguida as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    return Input$GetSeguindoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get pessoaSeguida => (_$data['pessoaSeguida'] as int?);

  int? get status => (_$data['status'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('pessoaSeguida')) {
      final l$pessoaSeguida = pessoaSeguida;
      result$data['pessoaSeguida'] = l$pessoaSeguida;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetSeguindoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$pessoaSeguida = pessoaSeguida;
    final lOther$pessoaSeguida = other.pessoaSeguida;
    if (_$data.containsKey('pessoaSeguida') !=
        other._$data.containsKey('pessoaSeguida')) {
      return false;
    }
    if (l$pessoaSeguida != lOther$pessoaSeguida) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$pessoa = pessoa;
    final l$pessoaSeguida = pessoaSeguida;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('pessoaSeguida') ? l$pessoaSeguida : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

class Input$GetSolicitacaoTransferenciaIngressoInput {
  factory Input$GetSolicitacaoTransferenciaIngressoInput({
    int? evento,
    int? id,
    int? ingresso,
    int? ingressoPessoaEvento,
    int? pessoaEnvia,
    int? pessoaRecebe,
    int? status,
  }) => Input$GetSolicitacaoTransferenciaIngressoInput._({
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (ingresso != null) r'ingresso': ingresso,
    if (ingressoPessoaEvento != null)
      r'ingressoPessoaEvento': ingressoPessoaEvento,
    if (pessoaEnvia != null) r'pessoaEnvia': pessoaEnvia,
    if (pessoaRecebe != null) r'pessoaRecebe': pessoaRecebe,
    if (status != null) r'status': status,
  });

  Input$GetSolicitacaoTransferenciaIngressoInput._(this._$data);

  factory Input$GetSolicitacaoTransferenciaIngressoInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('ingresso')) {
      final l$ingresso = data['ingresso'];
      result$data['ingresso'] = (l$ingresso as int?);
    }
    if (data.containsKey('ingressoPessoaEvento')) {
      final l$ingressoPessoaEvento = data['ingressoPessoaEvento'];
      result$data['ingressoPessoaEvento'] = (l$ingressoPessoaEvento as int?);
    }
    if (data.containsKey('pessoaEnvia')) {
      final l$pessoaEnvia = data['pessoaEnvia'];
      result$data['pessoaEnvia'] = (l$pessoaEnvia as int?);
    }
    if (data.containsKey('pessoaRecebe')) {
      final l$pessoaRecebe = data['pessoaRecebe'];
      result$data['pessoaRecebe'] = (l$pessoaRecebe as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    return Input$GetSolicitacaoTransferenciaIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get ingresso => (_$data['ingresso'] as int?);

  int? get ingressoPessoaEvento => (_$data['ingressoPessoaEvento'] as int?);

  int? get pessoaEnvia => (_$data['pessoaEnvia'] as int?);

  int? get pessoaRecebe => (_$data['pessoaRecebe'] as int?);

  int? get status => (_$data['status'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('ingresso')) {
      final l$ingresso = ingresso;
      result$data['ingresso'] = l$ingresso;
    }
    if (_$data.containsKey('ingressoPessoaEvento')) {
      final l$ingressoPessoaEvento = ingressoPessoaEvento;
      result$data['ingressoPessoaEvento'] = l$ingressoPessoaEvento;
    }
    if (_$data.containsKey('pessoaEnvia')) {
      final l$pessoaEnvia = pessoaEnvia;
      result$data['pessoaEnvia'] = l$pessoaEnvia;
    }
    if (_$data.containsKey('pessoaRecebe')) {
      final l$pessoaRecebe = pessoaRecebe;
      result$data['pessoaRecebe'] = l$pessoaRecebe;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetSolicitacaoTransferenciaIngressoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (_$data.containsKey('ingresso') !=
        other._$data.containsKey('ingresso')) {
      return false;
    }
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$ingressoPessoaEvento = ingressoPessoaEvento;
    final lOther$ingressoPessoaEvento = other.ingressoPessoaEvento;
    if (_$data.containsKey('ingressoPessoaEvento') !=
        other._$data.containsKey('ingressoPessoaEvento')) {
      return false;
    }
    if (l$ingressoPessoaEvento != lOther$ingressoPessoaEvento) {
      return false;
    }
    final l$pessoaEnvia = pessoaEnvia;
    final lOther$pessoaEnvia = other.pessoaEnvia;
    if (_$data.containsKey('pessoaEnvia') !=
        other._$data.containsKey('pessoaEnvia')) {
      return false;
    }
    if (l$pessoaEnvia != lOther$pessoaEnvia) {
      return false;
    }
    final l$pessoaRecebe = pessoaRecebe;
    final lOther$pessoaRecebe = other.pessoaRecebe;
    if (_$data.containsKey('pessoaRecebe') !=
        other._$data.containsKey('pessoaRecebe')) {
      return false;
    }
    if (l$pessoaRecebe != lOther$pessoaRecebe) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$ingresso = ingresso;
    final l$ingressoPessoaEvento = ingressoPessoaEvento;
    final l$pessoaEnvia = pessoaEnvia;
    final l$pessoaRecebe = pessoaRecebe;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('ingresso') ? l$ingresso : const {},
      _$data.containsKey('ingressoPessoaEvento')
          ? l$ingressoPessoaEvento
          : const {},
      _$data.containsKey('pessoaEnvia') ? l$pessoaEnvia : const {},
      _$data.containsKey('pessoaRecebe') ? l$pessoaRecebe : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

class Input$GetStorieInput {
  factory Input$GetStorieInput({
    String? arquivo,
    int? id,
    int? inativo,
    int? tempo,
    int? tipo,
  }) => Input$GetStorieInput._({
    if (arquivo != null) r'arquivo': arquivo,
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (tempo != null) r'tempo': tempo,
    if (tipo != null) r'tipo': tipo,
  });

  Input$GetStorieInput._(this._$data);

  factory Input$GetStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arquivo')) {
      final l$arquivo = data['arquivo'];
      result$data['arquivo'] = (l$arquivo as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('tempo')) {
      final l$tempo = data['tempo'];
      result$data['tempo'] = (l$tempo as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    return Input$GetStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get arquivo => (_$data['arquivo'] as String?);

  int? get id => (_$data['id'] as int?);

  int? get inativo => (_$data['inativo'] as int?);

  int? get tempo => (_$data['tempo'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arquivo')) {
      final l$arquivo = arquivo;
      result$data['arquivo'] = l$arquivo;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('tempo')) {
      final l$tempo = tempo;
      result$data['tempo'] = l$tempo;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetStorieInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$arquivo = arquivo;
    final lOther$arquivo = other.arquivo;
    if (_$data.containsKey('arquivo') != other._$data.containsKey('arquivo')) {
      return false;
    }
    if (l$arquivo != lOther$arquivo) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$tempo = tempo;
    final lOther$tempo = other.tempo;
    if (_$data.containsKey('tempo') != other._$data.containsKey('tempo')) {
      return false;
    }
    if (l$tempo != lOther$tempo) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arquivo = arquivo;
    final l$id = id;
    final l$inativo = inativo;
    final l$tempo = tempo;
    final l$tipo = tipo;
    return Object.hashAll([
      _$data.containsKey('arquivo') ? l$arquivo : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('tempo') ? l$tempo : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
    ]);
  }
}

class Input$GetVendaCardapioInput {
  factory Input$GetVendaCardapioInput({
    int? cardapio,
    int? evento,
    int? id,
    int? pessoa,
    int? quantidade,
    double? valorEvento,
    double? valorFastPay,
    double? valorTotal,
    double? valorUnitario,
    int? venda,
  }) => Input$GetVendaCardapioInput._({
    if (cardapio != null) r'cardapio': cardapio,
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
    if (quantidade != null) r'quantidade': quantidade,
    if (valorEvento != null) r'valorEvento': valorEvento,
    if (valorFastPay != null) r'valorFastPay': valorFastPay,
    if (valorTotal != null) r'valorTotal': valorTotal,
    if (valorUnitario != null) r'valorUnitario': valorUnitario,
    if (venda != null) r'venda': venda,
  });

  Input$GetVendaCardapioInput._(this._$data);

  factory Input$GetVendaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cardapio')) {
      final l$cardapio = data['cardapio'];
      result$data['cardapio'] = (l$cardapio as int?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as int?);
    }
    if (data.containsKey('valorEvento')) {
      final l$valorEvento = data['valorEvento'];
      result$data['valorEvento'] = (l$valorEvento as num?)?.toDouble();
    }
    if (data.containsKey('valorFastPay')) {
      final l$valorFastPay = data['valorFastPay'];
      result$data['valorFastPay'] = (l$valorFastPay as num?)?.toDouble();
    }
    if (data.containsKey('valorTotal')) {
      final l$valorTotal = data['valorTotal'];
      result$data['valorTotal'] = (l$valorTotal as num?)?.toDouble();
    }
    if (data.containsKey('valorUnitario')) {
      final l$valorUnitario = data['valorUnitario'];
      result$data['valorUnitario'] = (l$valorUnitario as num?)?.toDouble();
    }
    if (data.containsKey('venda')) {
      final l$venda = data['venda'];
      result$data['venda'] = (l$venda as int?);
    }
    return Input$GetVendaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cardapio => (_$data['cardapio'] as int?);

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get quantidade => (_$data['quantidade'] as int?);

  double? get valorEvento => (_$data['valorEvento'] as double?);

  double? get valorFastPay => (_$data['valorFastPay'] as double?);

  double? get valorTotal => (_$data['valorTotal'] as double?);

  double? get valorUnitario => (_$data['valorUnitario'] as double?);

  int? get venda => (_$data['venda'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cardapio')) {
      final l$cardapio = cardapio;
      result$data['cardapio'] = l$cardapio;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    if (_$data.containsKey('valorEvento')) {
      final l$valorEvento = valorEvento;
      result$data['valorEvento'] = l$valorEvento;
    }
    if (_$data.containsKey('valorFastPay')) {
      final l$valorFastPay = valorFastPay;
      result$data['valorFastPay'] = l$valorFastPay;
    }
    if (_$data.containsKey('valorTotal')) {
      final l$valorTotal = valorTotal;
      result$data['valorTotal'] = l$valorTotal;
    }
    if (_$data.containsKey('valorUnitario')) {
      final l$valorUnitario = valorUnitario;
      result$data['valorUnitario'] = l$valorUnitario;
    }
    if (_$data.containsKey('venda')) {
      final l$venda = venda;
      result$data['venda'] = l$venda;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetVendaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (_$data.containsKey('cardapio') !=
        other._$data.containsKey('cardapio')) {
      return false;
    }
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorEvento = valorEvento;
    final lOther$valorEvento = other.valorEvento;
    if (_$data.containsKey('valorEvento') !=
        other._$data.containsKey('valorEvento')) {
      return false;
    }
    if (l$valorEvento != lOther$valorEvento) {
      return false;
    }
    final l$valorFastPay = valorFastPay;
    final lOther$valorFastPay = other.valorFastPay;
    if (_$data.containsKey('valorFastPay') !=
        other._$data.containsKey('valorFastPay')) {
      return false;
    }
    if (l$valorFastPay != lOther$valorFastPay) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (_$data.containsKey('valorTotal') !=
        other._$data.containsKey('valorTotal')) {
      return false;
    }
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (_$data.containsKey('valorUnitario') !=
        other._$data.containsKey('valorUnitario')) {
      return false;
    }
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    final l$venda = venda;
    final lOther$venda = other.venda;
    if (_$data.containsKey('venda') != other._$data.containsKey('venda')) {
      return false;
    }
    if (l$venda != lOther$venda) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    final l$quantidade = quantidade;
    final l$valorEvento = valorEvento;
    final l$valorFastPay = valorFastPay;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    final l$venda = venda;
    return Object.hashAll([
      _$data.containsKey('cardapio') ? l$cardapio : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
      _$data.containsKey('valorEvento') ? l$valorEvento : const {},
      _$data.containsKey('valorFastPay') ? l$valorFastPay : const {},
      _$data.containsKey('valorTotal') ? l$valorTotal : const {},
      _$data.containsKey('valorUnitario') ? l$valorUnitario : const {},
      _$data.containsKey('venda') ? l$venda : const {},
    ]);
  }
}

class Input$GetVendaInput {
  factory Input$GetVendaInput({
    int? cortesia,
    int? cupomDesconto,
    int? evento,
    int? id,
    int? idCortesia,
    String? idPagarme,
    int? inativo,
    int? pessoa,
    int? preVenda,
    String? qrcode,
    String? qrcodeUrl,
    int? solicitacaoTransferenciaIngresso,
    int? status,
    int? tipo,
    int? tipoPagamento,
    double? valor,
  }) => Input$GetVendaInput._({
    if (cortesia != null) r'cortesia': cortesia,
    if (cupomDesconto != null) r'cupomDesconto': cupomDesconto,
    if (evento != null) r'evento': evento,
    if (id != null) r'id': id,
    if (idCortesia != null) r'idCortesia': idCortesia,
    if (idPagarme != null) r'idPagarme': idPagarme,
    if (inativo != null) r'inativo': inativo,
    if (pessoa != null) r'pessoa': pessoa,
    if (preVenda != null) r'preVenda': preVenda,
    if (qrcode != null) r'qrcode': qrcode,
    if (qrcodeUrl != null) r'qrcodeUrl': qrcodeUrl,
    if (solicitacaoTransferenciaIngresso != null)
      r'solicitacaoTransferenciaIngresso': solicitacaoTransferenciaIngresso,
    if (status != null) r'status': status,
    if (tipo != null) r'tipo': tipo,
    if (tipoPagamento != null) r'tipoPagamento': tipoPagamento,
    if (valor != null) r'valor': valor,
  });

  Input$GetVendaInput._(this._$data);

  factory Input$GetVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cortesia')) {
      final l$cortesia = data['cortesia'];
      result$data['cortesia'] = (l$cortesia as int?);
    }
    if (data.containsKey('cupomDesconto')) {
      final l$cupomDesconto = data['cupomDesconto'];
      result$data['cupomDesconto'] = (l$cupomDesconto as int?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('idCortesia')) {
      final l$idCortesia = data['idCortesia'];
      result$data['idCortesia'] = (l$idCortesia as int?);
    }
    if (data.containsKey('idPagarme')) {
      final l$idPagarme = data['idPagarme'];
      result$data['idPagarme'] = (l$idPagarme as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('preVenda')) {
      final l$preVenda = data['preVenda'];
      result$data['preVenda'] = (l$preVenda as int?);
    }
    if (data.containsKey('qrcode')) {
      final l$qrcode = data['qrcode'];
      result$data['qrcode'] = (l$qrcode as String?);
    }
    if (data.containsKey('qrcodeUrl')) {
      final l$qrcodeUrl = data['qrcodeUrl'];
      result$data['qrcodeUrl'] = (l$qrcodeUrl as String?);
    }
    if (data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          data['solicitacaoTransferenciaIngresso'];
      result$data['solicitacaoTransferenciaIngresso'] =
          (l$solicitacaoTransferenciaIngresso as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    if (data.containsKey('tipoPagamento')) {
      final l$tipoPagamento = data['tipoPagamento'];
      result$data['tipoPagamento'] = (l$tipoPagamento as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$GetVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cortesia => (_$data['cortesia'] as int?);

  int? get cupomDesconto => (_$data['cupomDesconto'] as int?);

  int? get evento => (_$data['evento'] as int?);

  int? get id => (_$data['id'] as int?);

  int? get idCortesia => (_$data['idCortesia'] as int?);

  String? get idPagarme => (_$data['idPagarme'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get preVenda => (_$data['preVenda'] as int?);

  String? get qrcode => (_$data['qrcode'] as String?);

  String? get qrcodeUrl => (_$data['qrcodeUrl'] as String?);

  int? get solicitacaoTransferenciaIngresso =>
      (_$data['solicitacaoTransferenciaIngresso'] as int?);

  int? get status => (_$data['status'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  int? get tipoPagamento => (_$data['tipoPagamento'] as int?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cortesia')) {
      final l$cortesia = cortesia;
      result$data['cortesia'] = l$cortesia;
    }
    if (_$data.containsKey('cupomDesconto')) {
      final l$cupomDesconto = cupomDesconto;
      result$data['cupomDesconto'] = l$cupomDesconto;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idCortesia')) {
      final l$idCortesia = idCortesia;
      result$data['idCortesia'] = l$idCortesia;
    }
    if (_$data.containsKey('idPagarme')) {
      final l$idPagarme = idPagarme;
      result$data['idPagarme'] = l$idPagarme;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('preVenda')) {
      final l$preVenda = preVenda;
      result$data['preVenda'] = l$preVenda;
    }
    if (_$data.containsKey('qrcode')) {
      final l$qrcode = qrcode;
      result$data['qrcode'] = l$qrcode;
    }
    if (_$data.containsKey('qrcodeUrl')) {
      final l$qrcodeUrl = qrcodeUrl;
      result$data['qrcodeUrl'] = l$qrcodeUrl;
    }
    if (_$data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          solicitacaoTransferenciaIngresso;
      result$data['solicitacaoTransferenciaIngresso'] =
          l$solicitacaoTransferenciaIngresso;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    if (_$data.containsKey('tipoPagamento')) {
      final l$tipoPagamento = tipoPagamento;
      result$data['tipoPagamento'] = l$tipoPagamento;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetVendaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cortesia = cortesia;
    final lOther$cortesia = other.cortesia;
    if (_$data.containsKey('cortesia') !=
        other._$data.containsKey('cortesia')) {
      return false;
    }
    if (l$cortesia != lOther$cortesia) {
      return false;
    }
    final l$cupomDesconto = cupomDesconto;
    final lOther$cupomDesconto = other.cupomDesconto;
    if (_$data.containsKey('cupomDesconto') !=
        other._$data.containsKey('cupomDesconto')) {
      return false;
    }
    if (l$cupomDesconto != lOther$cupomDesconto) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idCortesia = idCortesia;
    final lOther$idCortesia = other.idCortesia;
    if (_$data.containsKey('idCortesia') !=
        other._$data.containsKey('idCortesia')) {
      return false;
    }
    if (l$idCortesia != lOther$idCortesia) {
      return false;
    }
    final l$idPagarme = idPagarme;
    final lOther$idPagarme = other.idPagarme;
    if (_$data.containsKey('idPagarme') !=
        other._$data.containsKey('idPagarme')) {
      return false;
    }
    if (l$idPagarme != lOther$idPagarme) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (_$data.containsKey('preVenda') !=
        other._$data.containsKey('preVenda')) {
      return false;
    }
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$qrcode = qrcode;
    final lOther$qrcode = other.qrcode;
    if (_$data.containsKey('qrcode') != other._$data.containsKey('qrcode')) {
      return false;
    }
    if (l$qrcode != lOther$qrcode) {
      return false;
    }
    final l$qrcodeUrl = qrcodeUrl;
    final lOther$qrcodeUrl = other.qrcodeUrl;
    if (_$data.containsKey('qrcodeUrl') !=
        other._$data.containsKey('qrcodeUrl')) {
      return false;
    }
    if (l$qrcodeUrl != lOther$qrcodeUrl) {
      return false;
    }
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final lOther$solicitacaoTransferenciaIngresso =
        other.solicitacaoTransferenciaIngresso;
    if (_$data.containsKey('solicitacaoTransferenciaIngresso') !=
        other._$data.containsKey('solicitacaoTransferenciaIngresso')) {
      return false;
    }
    if (l$solicitacaoTransferenciaIngresso !=
        lOther$solicitacaoTransferenciaIngresso) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$tipoPagamento = tipoPagamento;
    final lOther$tipoPagamento = other.tipoPagamento;
    if (_$data.containsKey('tipoPagamento') !=
        other._$data.containsKey('tipoPagamento')) {
      return false;
    }
    if (l$tipoPagamento != lOther$tipoPagamento) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cortesia = cortesia;
    final l$cupomDesconto = cupomDesconto;
    final l$evento = evento;
    final l$id = id;
    final l$idCortesia = idCortesia;
    final l$idPagarme = idPagarme;
    final l$inativo = inativo;
    final l$pessoa = pessoa;
    final l$preVenda = preVenda;
    final l$qrcode = qrcode;
    final l$qrcodeUrl = qrcodeUrl;
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final l$status = status;
    final l$tipo = tipo;
    final l$tipoPagamento = tipoPagamento;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('cortesia') ? l$cortesia : const {},
      _$data.containsKey('cupomDesconto') ? l$cupomDesconto : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idCortesia') ? l$idCortesia : const {},
      _$data.containsKey('idPagarme') ? l$idPagarme : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('preVenda') ? l$preVenda : const {},
      _$data.containsKey('qrcode') ? l$qrcode : const {},
      _$data.containsKey('qrcodeUrl') ? l$qrcodeUrl : const {},
      _$data.containsKey('solicitacaoTransferenciaIngresso')
          ? l$solicitacaoTransferenciaIngresso
          : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
      _$data.containsKey('tipoPagamento') ? l$tipoPagamento : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$GetVisualizouStorieInput {
  factory Input$GetVisualizouStorieInput({
    int? id,
    int? pessoa,
    int? stories,
  }) => Input$GetVisualizouStorieInput._({
    if (id != null) r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
    if (stories != null) r'stories': stories,
  });

  Input$GetVisualizouStorieInput._(this._$data);

  factory Input$GetVisualizouStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('stories')) {
      final l$stories = data['stories'];
      result$data['stories'] = (l$stories as int?);
    }
    return Input$GetVisualizouStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get stories => (_$data['stories'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('stories')) {
      final l$stories = stories;
      result$data['stories'] = l$stories;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetVisualizouStorieInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$stories = stories;
    final lOther$stories = other.stories;
    if (_$data.containsKey('stories') != other._$data.containsKey('stories')) {
      return false;
    }
    if (l$stories != lOther$stories) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$pessoa = pessoa;
    final l$stories = stories;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('stories') ? l$stories : const {},
    ]);
  }
}

class Input$ListaEventosCompletosInput {
  factory Input$ListaEventosCompletosInput({
    List<int>? ids,
    String? lat,
    String? lon,
    required double uuid,
  }) => Input$ListaEventosCompletosInput._({
    if (ids != null) r'ids': ids,
    if (lat != null) r'lat': lat,
    if (lon != null) r'lon': lon,
    r'uuid': uuid,
  });

  Input$ListaEventosCompletosInput._(this._$data);

  factory Input$ListaEventosCompletosInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] = (l$ids as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    if (data.containsKey('lat')) {
      final l$lat = data['lat'];
      result$data['lat'] = (l$lat as String?);
    }
    if (data.containsKey('lon')) {
      final l$lon = data['lon'];
      result$data['lon'] = (l$lon as String?);
    }
    final l$uuid = data['uuid'];
    result$data['uuid'] = (l$uuid as num).toDouble();
    return Input$ListaEventosCompletosInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<int>? get ids => (_$data['ids'] as List<int>?);

  String? get lat => (_$data['lat'] as String?);

  String? get lon => (_$data['lon'] as String?);

  double get uuid => (_$data['uuid'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('lat')) {
      final l$lat = lat;
      result$data['lat'] = l$lat;
    }
    if (_$data.containsKey('lon')) {
      final l$lon = lon;
      result$data['lon'] = l$lon;
    }
    final l$uuid = uuid;
    result$data['uuid'] = l$uuid;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListaEventosCompletosInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (_$data.containsKey('lat') != other._$data.containsKey('lat')) {
      return false;
    }
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lon = lon;
    final lOther$lon = other.lon;
    if (_$data.containsKey('lon') != other._$data.containsKey('lon')) {
      return false;
    }
    if (l$lon != lOther$lon) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$lat = lat;
    final l$lon = lon;
    final l$uuid = uuid;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
                ? null
                : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('lat') ? l$lat : const {},
      _$data.containsKey('lon') ? l$lon : const {},
      l$uuid,
    ]);
  }
}

class Input$ListarUsuariosPorEmailInput {
  factory Input$ListarUsuariosPorEmailInput({required List<String> emails}) =>
      Input$ListarUsuariosPorEmailInput._({r'emails': emails});

  Input$ListarUsuariosPorEmailInput._(this._$data);

  factory Input$ListarUsuariosPorEmailInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$emails = data['emails'];
    result$data['emails'] = (l$emails as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Input$ListarUsuariosPorEmailInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get emails => (_$data['emails'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$emails = emails;
    result$data['emails'] = l$emails.map((e) => e).toList();
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListarUsuariosPorEmailInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$emails = emails;
    final lOther$emails = other.emails;
    if (l$emails.length != lOther$emails.length) {
      return false;
    }
    for (int i = 0; i < l$emails.length; i++) {
      final l$emails$entry = l$emails[i];
      final lOther$emails$entry = lOther$emails[i];
      if (l$emails$entry != lOther$emails$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$emails = emails;
    return Object.hashAll([Object.hashAll(l$emails.map((v) => v))]);
  }
}

class Input$LoginDashInput {
  factory Input$LoginDashInput({
    required String email,
    required String password,
  }) => Input$LoginDashInput._({r'email': email, r'password': password});

  Input$LoginDashInput._(this._$data);

  factory Input$LoginDashInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginDashInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoginDashInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([l$email, l$password]);
  }
}

class Input$MeusEventosFilterInput {
  factory Input$MeusEventosFilterInput({
    String? cidade,
    String? dataFim,
    String? dataInicio,
    String? estado,
    double? id,
    double? inativo,
    String? nome,
  }) => Input$MeusEventosFilterInput._({
    if (cidade != null) r'cidade': cidade,
    if (dataFim != null) r'dataFim': dataFim,
    if (dataInicio != null) r'dataInicio': dataInicio,
    if (estado != null) r'estado': estado,
    if (id != null) r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (nome != null) r'nome': nome,
  });

  Input$MeusEventosFilterInput._(this._$data);

  factory Input$MeusEventosFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cidade')) {
      final l$cidade = data['cidade'];
      result$data['cidade'] = (l$cidade as String?);
    }
    if (data.containsKey('dataFim')) {
      final l$dataFim = data['dataFim'];
      result$data['dataFim'] = (l$dataFim as String?);
    }
    if (data.containsKey('dataInicio')) {
      final l$dataInicio = data['dataInicio'];
      result$data['dataInicio'] = (l$dataInicio as String?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as num?)?.toDouble();
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as num?)?.toDouble();
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    return Input$MeusEventosFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get cidade => (_$data['cidade'] as String?);

  String? get dataFim => (_$data['dataFim'] as String?);

  String? get dataInicio => (_$data['dataInicio'] as String?);

  String? get estado => (_$data['estado'] as String?);

  double? get id => (_$data['id'] as double?);

  double? get inativo => (_$data['inativo'] as double?);

  String? get nome => (_$data['nome'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cidade')) {
      final l$cidade = cidade;
      result$data['cidade'] = l$cidade;
    }
    if (_$data.containsKey('dataFim')) {
      final l$dataFim = dataFim;
      result$data['dataFim'] = l$dataFim;
    }
    if (_$data.containsKey('dataInicio')) {
      final l$dataInicio = dataInicio;
      result$data['dataInicio'] = l$dataInicio;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MeusEventosFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (_$data.containsKey('cidade') != other._$data.containsKey('cidade')) {
      return false;
    }
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (_$data.containsKey('dataFim') != other._$data.containsKey('dataFim')) {
      return false;
    }
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$dataInicio = dataInicio;
    final lOther$dataInicio = other.dataInicio;
    if (_$data.containsKey('dataInicio') !=
        other._$data.containsKey('dataInicio')) {
      return false;
    }
    if (l$dataInicio != lOther$dataInicio) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cidade = cidade;
    final l$dataFim = dataFim;
    final l$dataInicio = dataInicio;
    final l$estado = estado;
    final l$id = id;
    final l$inativo = inativo;
    final l$nome = nome;
    return Object.hashAll([
      _$data.containsKey('cidade') ? l$cidade : const {},
      _$data.containsKey('dataFim') ? l$dataFim : const {},
      _$data.containsKey('dataInicio') ? l$dataInicio : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('nome') ? l$nome : const {},
    ]);
  }
}

class Input$PostBancoInput {
  factory Input$PostBancoInput({
    required String nome,
    required int numBanco,
    required String site,
  }) => Input$PostBancoInput._({
    r'nome': nome,
    r'numBanco': numBanco,
    r'site': site,
  });

  Input$PostBancoInput._(this._$data);

  factory Input$PostBancoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$numBanco = data['numBanco'];
    result$data['numBanco'] = (l$numBanco as int);
    final l$site = data['site'];
    result$data['site'] = (l$site as String);
    return Input$PostBancoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get nome => (_$data['nome'] as String);

  int get numBanco => (_$data['numBanco'] as int);

  String get site => (_$data['site'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$numBanco = numBanco;
    result$data['numBanco'] = l$numBanco;
    final l$site = site;
    result$data['site'] = l$site;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostBancoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numBanco = numBanco;
    final lOther$numBanco = other.numBanco;
    if (l$numBanco != lOther$numBanco) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$nome = nome;
    final l$numBanco = numBanco;
    final l$site = site;
    return Object.hashAll([l$nome, l$numBanco, l$site]);
  }
}

class Input$PostCardapioInput {
  factory Input$PostCardapioInput({
    required int categoriaCardapio,
    String? descricao,
    required int evento,
    String? imagem,
    required String nome,
    required int quantidade,
    required double valor,
  }) => Input$PostCardapioInput._({
    r'categoriaCardapio': categoriaCardapio,
    if (descricao != null) r'descricao': descricao,
    r'evento': evento,
    if (imagem != null) r'imagem': imagem,
    r'nome': nome,
    r'quantidade': quantidade,
    r'valor': valor,
  });

  Input$PostCardapioInput._(this._$data);

  factory Input$PostCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$categoriaCardapio = data['categoriaCardapio'];
    result$data['categoriaCardapio'] = (l$categoriaCardapio as int);
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$quantidade = data['quantidade'];
    result$data['quantidade'] = (l$quantidade as int);
    final l$valor = data['valor'];
    result$data['valor'] = (l$valor as num).toDouble();
    return Input$PostCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get categoriaCardapio => (_$data['categoriaCardapio'] as int);

  String? get descricao => (_$data['descricao'] as String?);

  int get evento => (_$data['evento'] as int);

  String? get imagem => (_$data['imagem'] as String?);

  String get nome => (_$data['nome'] as String);

  int get quantidade => (_$data['quantidade'] as int);

  double get valor => (_$data['valor'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$categoriaCardapio = categoriaCardapio;
    result$data['categoriaCardapio'] = l$categoriaCardapio;
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    final l$evento = evento;
    result$data['evento'] = l$evento;
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$quantidade = quantidade;
    result$data['quantidade'] = l$quantidade;
    final l$valor = valor;
    result$data['valor'] = l$valor;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCardapioInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categoriaCardapio = categoriaCardapio;
    final lOther$categoriaCardapio = other.categoriaCardapio;
    if (l$categoriaCardapio != lOther$categoriaCardapio) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categoriaCardapio = categoriaCardapio;
    final l$descricao = descricao;
    final l$evento = evento;
    final l$imagem = imagem;
    final l$nome = nome;
    final l$quantidade = quantidade;
    final l$valor = valor;
    return Object.hashAll([
      l$categoriaCardapio,
      _$data.containsKey('descricao') ? l$descricao : const {},
      l$evento,
      _$data.containsKey('imagem') ? l$imagem : const {},
      l$nome,
      l$quantidade,
      l$valor,
    ]);
  }
}

class Input$PostCategoriaCardapioInput {
  factory Input$PostCategoriaCardapioInput({
    required int evento,
    required int id,
    required String nome,
  }) => Input$PostCategoriaCardapioInput._({
    r'evento': evento,
    r'id': id,
    r'nome': nome,
  });

  Input$PostCategoriaCardapioInput._(this._$data);

  factory Input$PostCategoriaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    return Input$PostCategoriaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get id => (_$data['id'] as int);

  String get nome => (_$data['nome'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$id = id;
    result$data['id'] = l$id;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCategoriaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
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

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$nome = nome;
    return Object.hashAll([l$evento, l$id, l$nome]);
  }
}

class Input$PostCategoriaEventoInput {
  factory Input$PostCategoriaEventoInput({required String nome}) =>
      Input$PostCategoriaEventoInput._({r'nome': nome});

  Input$PostCategoriaEventoInput._(this._$data);

  factory Input$PostCategoriaEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    return Input$PostCategoriaEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get nome => (_$data['nome'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$nome = nome;
    result$data['nome'] = l$nome;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCategoriaEventoInput ||
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

  @override
  int get hashCode {
    final l$nome = nome;
    return Object.hashAll([l$nome]);
  }
}

class Input$PostCidadeInput {
  factory Input$PostCidadeInput({
    required int estado,
    required String nome,
    required String nomeSem,
  }) => Input$PostCidadeInput._({
    r'estado': estado,
    r'nome': nome,
    r'nomeSem': nomeSem,
  });

  Input$PostCidadeInput._(this._$data);

  factory Input$PostCidadeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$estado = data['estado'];
    result$data['estado'] = (l$estado as int);
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$nomeSem = data['nomeSem'];
    result$data['nomeSem'] = (l$nomeSem as String);
    return Input$PostCidadeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get estado => (_$data['estado'] as int);

  String get nome => (_$data['nome'] as String);

  String get nomeSem => (_$data['nomeSem'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$estado = estado;
    result$data['estado'] = l$estado;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$nomeSem = nomeSem;
    result$data['nomeSem'] = l$nomeSem;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCidadeInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$nomeSem = nomeSem;
    final lOther$nomeSem = other.nomeSem;
    if (l$nomeSem != lOther$nomeSem) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$estado = estado;
    final l$nome = nome;
    final l$nomeSem = nomeSem;
    return Object.hashAll([l$estado, l$nome, l$nomeSem]);
  }
}

class Input$PostCortesiaInput {
  factory Input$PostCortesiaInput({
    required int evento,
    required int ingresso,
    required int pessoaRecebe,
    required String quantidade,
  }) => Input$PostCortesiaInput._({
    r'evento': evento,
    r'ingresso': ingresso,
    r'pessoaRecebe': pessoaRecebe,
    r'quantidade': quantidade,
  });

  Input$PostCortesiaInput._(this._$data);

  factory Input$PostCortesiaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$ingresso = data['ingresso'];
    result$data['ingresso'] = (l$ingresso as int);
    final l$pessoaRecebe = data['pessoaRecebe'];
    result$data['pessoaRecebe'] = (l$pessoaRecebe as int);
    final l$quantidade = data['quantidade'];
    result$data['quantidade'] = (l$quantidade as String);
    return Input$PostCortesiaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get ingresso => (_$data['ingresso'] as int);

  int get pessoaRecebe => (_$data['pessoaRecebe'] as int);

  String get quantidade => (_$data['quantidade'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$ingresso = ingresso;
    result$data['ingresso'] = l$ingresso;
    final l$pessoaRecebe = pessoaRecebe;
    result$data['pessoaRecebe'] = l$pessoaRecebe;
    final l$quantidade = quantidade;
    result$data['quantidade'] = l$quantidade;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCortesiaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$pessoaRecebe = pessoaRecebe;
    final lOther$pessoaRecebe = other.pessoaRecebe;
    if (l$pessoaRecebe != lOther$pessoaRecebe) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$ingresso = ingresso;
    final l$pessoaRecebe = pessoaRecebe;
    final l$quantidade = quantidade;
    return Object.hashAll([l$evento, l$ingresso, l$pessoaRecebe, l$quantidade]);
  }
}

class Input$PostCupomDescontoInput {
  factory Input$PostCupomDescontoInput({
    required String cupom,
    required int evento,
    required int limite,
    required int tipo,
    required double valor,
  }) => Input$PostCupomDescontoInput._({
    r'cupom': cupom,
    r'evento': evento,
    r'limite': limite,
    r'tipo': tipo,
    r'valor': valor,
  });

  Input$PostCupomDescontoInput._(this._$data);

  factory Input$PostCupomDescontoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cupom = data['cupom'];
    result$data['cupom'] = (l$cupom as String);
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$limite = data['limite'];
    result$data['limite'] = (l$limite as int);
    final l$tipo = data['tipo'];
    result$data['tipo'] = (l$tipo as int);
    final l$valor = data['valor'];
    result$data['valor'] = (l$valor as num).toDouble();
    return Input$PostCupomDescontoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get cupom => (_$data['cupom'] as String);

  int get evento => (_$data['evento'] as int);

  int get limite => (_$data['limite'] as int);

  int get tipo => (_$data['tipo'] as int);

  double get valor => (_$data['valor'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cupom = cupom;
    result$data['cupom'] = l$cupom;
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$limite = limite;
    result$data['limite'] = l$limite;
    final l$tipo = tipo;
    result$data['tipo'] = l$tipo;
    final l$valor = valor;
    result$data['valor'] = l$valor;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCupomDescontoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cupom = cupom;
    final lOther$cupom = other.cupom;
    if (l$cupom != lOther$cupom) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$limite = limite;
    final lOther$limite = other.limite;
    if (l$limite != lOther$limite) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cupom = cupom;
    final l$evento = evento;
    final l$limite = limite;
    final l$tipo = tipo;
    final l$valor = valor;
    return Object.hashAll([l$cupom, l$evento, l$limite, l$tipo, l$valor]);
  }
}

class Input$PostCurtiuEventoInput {
  factory Input$PostCurtiuEventoInput({required int evento}) =>
      Input$PostCurtiuEventoInput._({r'evento': evento});

  Input$PostCurtiuEventoInput._(this._$data);

  factory Input$PostCurtiuEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    return Input$PostCurtiuEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCurtiuEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    return Object.hashAll([l$evento]);
  }
}

class Input$PostCurtiuStorieInput {
  factory Input$PostCurtiuStorieInput({
    required int pessoa,
    required int stories,
  }) => Input$PostCurtiuStorieInput._({r'pessoa': pessoa, r'stories': stories});

  Input$PostCurtiuStorieInput._(this._$data);

  factory Input$PostCurtiuStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$stories = data['stories'];
    result$data['stories'] = (l$stories as int);
    return Input$PostCurtiuStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get pessoa => (_$data['pessoa'] as int);

  int get stories => (_$data['stories'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$stories = stories;
    result$data['stories'] = l$stories;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCurtiuStorieInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$stories = stories;
    final lOther$stories = other.stories;
    if (l$stories != lOther$stories) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pessoa = pessoa;
    final l$stories = stories;
    return Object.hashAll([l$pessoa, l$stories]);
  }
}

class Input$PostEquipeEventoInput {
  factory Input$PostEquipeEventoInput({
    required int evento,
    required int pessoa,
    required int tipo,
  }) => Input$PostEquipeEventoInput._({
    r'evento': evento,
    r'pessoa': pessoa,
    r'tipo': tipo,
  });

  Input$PostEquipeEventoInput._(this._$data);

  factory Input$PostEquipeEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$tipo = data['tipo'];
    result$data['tipo'] = (l$tipo as int);
    return Input$PostEquipeEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  int get tipo => (_$data['tipo'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$tipo = tipo;
    result$data['tipo'] = l$tipo;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostEquipeEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$pessoa = pessoa;
    final l$tipo = tipo;
    return Object.hashAll([l$evento, l$pessoa, l$tipo]);
  }
}

class Input$PostEstadoInput {
  factory Input$PostEstadoInput({
    required int id,
    required String nome,
    required String sigla,
  }) => Input$PostEstadoInput._({r'id': id, r'nome': nome, r'sigla': sigla});

  Input$PostEstadoInput._(this._$data);

  factory Input$PostEstadoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$sigla = data['sigla'];
    result$data['sigla'] = (l$sigla as String);
    return Input$PostEstadoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get nome => (_$data['nome'] as String);

  String get sigla => (_$data['sigla'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$sigla = sigla;
    result$data['sigla'] = l$sigla;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostEstadoInput || runtimeType != other.runtimeType) {
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
    final l$sigla = sigla;
    final lOther$sigla = other.sigla;
    if (l$sigla != lOther$sigla) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    final l$sigla = sigla;
    return Object.hashAll([l$id, l$nome, l$sigla]);
  }
}

class Input$PostEventoInput {
  factory Input$PostEventoInput({
    required String bairro,
    required int categoriaEvento,
    required String cep,
    required int cidade,
    required String complemento,
    required String data,
    required String dataFim,
    required String descricao,
    required int estado,
    required String horario,
    String? imagem,
    required String latitude,
    required String local,
    required String logradouro,
    required String longitude,
    String? mapaEvento,
    required String nome,
    required String numero,
    int? vendaIngresso,
  }) => Input$PostEventoInput._({
    r'bairro': bairro,
    r'categoriaEvento': categoriaEvento,
    r'cep': cep,
    r'cidade': cidade,
    r'complemento': complemento,
    r'data': data,
    r'dataFim': dataFim,
    r'descricao': descricao,
    r'estado': estado,
    r'horario': horario,
    if (imagem != null) r'imagem': imagem,
    r'latitude': latitude,
    r'local': local,
    r'logradouro': logradouro,
    r'longitude': longitude,
    if (mapaEvento != null) r'mapaEvento': mapaEvento,
    r'nome': nome,
    r'numero': numero,
    if (vendaIngresso != null) r'vendaIngresso': vendaIngresso,
  });

  Input$PostEventoInput._(this._$data);

  factory Input$PostEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$bairro = data['bairro'];
    result$data['bairro'] = (l$bairro as String);
    final l$categoriaEvento = data['categoriaEvento'];
    result$data['categoriaEvento'] = (l$categoriaEvento as int);
    final l$cep = data['cep'];
    result$data['cep'] = (l$cep as String);
    final l$cidade = data['cidade'];
    result$data['cidade'] = (l$cidade as int);
    final l$complemento = data['complemento'];
    result$data['complemento'] = (l$complemento as String);
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    final l$dataFim = data['dataFim'];
    result$data['dataFim'] = (l$dataFim as String);
    final l$descricao = data['descricao'];
    result$data['descricao'] = (l$descricao as String);
    final l$estado = data['estado'];
    result$data['estado'] = (l$estado as int);
    final l$horario = data['horario'];
    result$data['horario'] = (l$horario as String);
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as String);
    final l$local = data['local'];
    result$data['local'] = (l$local as String);
    final l$logradouro = data['logradouro'];
    result$data['logradouro'] = (l$logradouro as String);
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as String);
    if (data.containsKey('mapaEvento')) {
      final l$mapaEvento = data['mapaEvento'];
      result$data['mapaEvento'] = (l$mapaEvento as String?);
    }
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$numero = data['numero'];
    result$data['numero'] = (l$numero as String);
    if (data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = data['vendaIngresso'];
      result$data['vendaIngresso'] = (l$vendaIngresso as int?);
    }
    return Input$PostEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get bairro => (_$data['bairro'] as String);

  int get categoriaEvento => (_$data['categoriaEvento'] as int);

  String get cep => (_$data['cep'] as String);

  int get cidade => (_$data['cidade'] as int);

  String get complemento => (_$data['complemento'] as String);

  String get data => (_$data['data'] as String);

  String get dataFim => (_$data['dataFim'] as String);

  String get descricao => (_$data['descricao'] as String);

  int get estado => (_$data['estado'] as int);

  String get horario => (_$data['horario'] as String);

  String? get imagem => (_$data['imagem'] as String?);

  String get latitude => (_$data['latitude'] as String);

  String get local => (_$data['local'] as String);

  String get logradouro => (_$data['logradouro'] as String);

  String get longitude => (_$data['longitude'] as String);

  String? get mapaEvento => (_$data['mapaEvento'] as String?);

  String get nome => (_$data['nome'] as String);

  String get numero => (_$data['numero'] as String);

  int? get vendaIngresso => (_$data['vendaIngresso'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bairro = bairro;
    result$data['bairro'] = l$bairro;
    final l$categoriaEvento = categoriaEvento;
    result$data['categoriaEvento'] = l$categoriaEvento;
    final l$cep = cep;
    result$data['cep'] = l$cep;
    final l$cidade = cidade;
    result$data['cidade'] = l$cidade;
    final l$complemento = complemento;
    result$data['complemento'] = l$complemento;
    final l$data = data;
    result$data['data'] = l$data;
    final l$dataFim = dataFim;
    result$data['dataFim'] = l$dataFim;
    final l$descricao = descricao;
    result$data['descricao'] = l$descricao;
    final l$estado = estado;
    result$data['estado'] = l$estado;
    final l$horario = horario;
    result$data['horario'] = l$horario;
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    final l$latitude = latitude;
    result$data['latitude'] = l$latitude;
    final l$local = local;
    result$data['local'] = l$local;
    final l$logradouro = logradouro;
    result$data['logradouro'] = l$logradouro;
    final l$longitude = longitude;
    result$data['longitude'] = l$longitude;
    if (_$data.containsKey('mapaEvento')) {
      final l$mapaEvento = mapaEvento;
      result$data['mapaEvento'] = l$mapaEvento;
    }
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$numero = numero;
    result$data['numero'] = l$numero;
    if (_$data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = vendaIngresso;
      result$data['vendaIngresso'] = l$vendaIngresso;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostEventoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$categoriaEvento = categoriaEvento;
    final lOther$categoriaEvento = other.categoriaEvento;
    if (l$categoriaEvento != lOther$categoriaEvento) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$horario = horario;
    final lOther$horario = other.horario;
    if (l$horario != lOther$horario) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$local = local;
    final lOther$local = other.local;
    if (l$local != lOther$local) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$mapaEvento = mapaEvento;
    final lOther$mapaEvento = other.mapaEvento;
    if (_$data.containsKey('mapaEvento') !=
        other._$data.containsKey('mapaEvento')) {
      return false;
    }
    if (l$mapaEvento != lOther$mapaEvento) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$vendaIngresso = vendaIngresso;
    final lOther$vendaIngresso = other.vendaIngresso;
    if (_$data.containsKey('vendaIngresso') !=
        other._$data.containsKey('vendaIngresso')) {
      return false;
    }
    if (l$vendaIngresso != lOther$vendaIngresso) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bairro = bairro;
    final l$categoriaEvento = categoriaEvento;
    final l$cep = cep;
    final l$cidade = cidade;
    final l$complemento = complemento;
    final l$data = data;
    final l$dataFim = dataFim;
    final l$descricao = descricao;
    final l$estado = estado;
    final l$horario = horario;
    final l$imagem = imagem;
    final l$latitude = latitude;
    final l$local = local;
    final l$logradouro = logradouro;
    final l$longitude = longitude;
    final l$mapaEvento = mapaEvento;
    final l$nome = nome;
    final l$numero = numero;
    final l$vendaIngresso = vendaIngresso;
    return Object.hashAll([
      l$bairro,
      l$categoriaEvento,
      l$cep,
      l$cidade,
      l$complemento,
      l$data,
      l$dataFim,
      l$descricao,
      l$estado,
      l$horario,
      _$data.containsKey('imagem') ? l$imagem : const {},
      l$latitude,
      l$local,
      l$logradouro,
      l$longitude,
      _$data.containsKey('mapaEvento') ? l$mapaEvento : const {},
      l$nome,
      l$numero,
      _$data.containsKey('vendaIngresso') ? l$vendaIngresso : const {},
    ]);
  }
}

class Input$PostEventoVisualizacaoInput {
  factory Input$PostEventoVisualizacaoInput({
    required int evento,
    required int pessoa,
  }) => Input$PostEventoVisualizacaoInput._({
    r'evento': evento,
    r'pessoa': pessoa,
  });

  Input$PostEventoVisualizacaoInput._(this._$data);

  factory Input$PostEventoVisualizacaoInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    return Input$PostEventoVisualizacaoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostEventoVisualizacaoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$pessoa = pessoa;
    return Object.hashAll([l$evento, l$pessoa]);
  }
}

class Input$PostIngressoCodigoInput {
  factory Input$PostIngressoCodigoInput({
    required int evento,
    required int ingresso,
    required String nome,
  }) => Input$PostIngressoCodigoInput._({
    r'evento': evento,
    r'ingresso': ingresso,
    r'nome': nome,
  });

  Input$PostIngressoCodigoInput._(this._$data);

  factory Input$PostIngressoCodigoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$ingresso = data['ingresso'];
    result$data['ingresso'] = (l$ingresso as int);
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    return Input$PostIngressoCodigoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get ingresso => (_$data['ingresso'] as int);

  String get nome => (_$data['nome'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$ingresso = ingresso;
    result$data['ingresso'] = l$ingresso;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostIngressoCodigoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$ingresso = ingresso;
    final l$nome = nome;
    return Object.hashAll([l$evento, l$ingresso, l$nome]);
  }
}

class Input$PostIngressoInput {
  factory Input$PostIngressoInput({
    required String data,
    String? descricao,
    required int evento,
    required int limite,
    required int limitePorPessoa,
    required int loteId,
    required String nome,
    required int transferencia,
    required double valor,
  }) => Input$PostIngressoInput._({
    r'data': data,
    if (descricao != null) r'descricao': descricao,
    r'evento': evento,
    r'limite': limite,
    r'limitePorPessoa': limitePorPessoa,
    r'loteId': loteId,
    r'nome': nome,
    r'transferencia': transferencia,
    r'valor': valor,
  });

  Input$PostIngressoInput._(this._$data);

  factory Input$PostIngressoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$limite = data['limite'];
    result$data['limite'] = (l$limite as int);
    final l$limitePorPessoa = data['limitePorPessoa'];
    result$data['limitePorPessoa'] = (l$limitePorPessoa as int);
    final l$loteId = data['loteId'];
    result$data['loteId'] = (l$loteId as int);
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$transferencia = data['transferencia'];
    result$data['transferencia'] = (l$transferencia as int);
    final l$valor = data['valor'];
    result$data['valor'] = (l$valor as num).toDouble();
    return Input$PostIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get data => (_$data['data'] as String);

  String? get descricao => (_$data['descricao'] as String?);

  int get evento => (_$data['evento'] as int);

  int get limite => (_$data['limite'] as int);

  int get limitePorPessoa => (_$data['limitePorPessoa'] as int);

  int get loteId => (_$data['loteId'] as int);

  String get nome => (_$data['nome'] as String);

  int get transferencia => (_$data['transferencia'] as int);

  double get valor => (_$data['valor'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data;
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$limite = limite;
    result$data['limite'] = l$limite;
    final l$limitePorPessoa = limitePorPessoa;
    result$data['limitePorPessoa'] = l$limitePorPessoa;
    final l$loteId = loteId;
    result$data['loteId'] = l$loteId;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$transferencia = transferencia;
    result$data['transferencia'] = l$transferencia;
    final l$valor = valor;
    result$data['valor'] = l$valor;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostIngressoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$limite = limite;
    final lOther$limite = other.limite;
    if (l$limite != lOther$limite) {
      return false;
    }
    final l$limitePorPessoa = limitePorPessoa;
    final lOther$limitePorPessoa = other.limitePorPessoa;
    if (l$limitePorPessoa != lOther$limitePorPessoa) {
      return false;
    }
    final l$loteId = loteId;
    final lOther$loteId = other.loteId;
    if (l$loteId != lOther$loteId) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$transferencia = transferencia;
    final lOther$transferencia = other.transferencia;
    if (l$transferencia != lOther$transferencia) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$descricao = descricao;
    final l$evento = evento;
    final l$limite = limite;
    final l$limitePorPessoa = limitePorPessoa;
    final l$loteId = loteId;
    final l$nome = nome;
    final l$transferencia = transferencia;
    final l$valor = valor;
    return Object.hashAll([
      l$data,
      _$data.containsKey('descricao') ? l$descricao : const {},
      l$evento,
      l$limite,
      l$limitePorPessoa,
      l$loteId,
      l$nome,
      l$transferencia,
      l$valor,
    ]);
  }
}

class Input$PostIngressoPessoaEventoInput {
  factory Input$PostIngressoPessoaEventoInput({
    int? cortesia,
    required int evento,
    int? idCortesia,
    required int ingresso,
    required int pessoa,
    int? solicitacaoTransferenciaIngresso,
    int? transferencia,
    String? transferidoEm,
    int? transferidoPara,
    required int venda,
  }) => Input$PostIngressoPessoaEventoInput._({
    if (cortesia != null) r'cortesia': cortesia,
    r'evento': evento,
    if (idCortesia != null) r'idCortesia': idCortesia,
    r'ingresso': ingresso,
    r'pessoa': pessoa,
    if (solicitacaoTransferenciaIngresso != null)
      r'solicitacaoTransferenciaIngresso': solicitacaoTransferenciaIngresso,
    if (transferencia != null) r'transferencia': transferencia,
    if (transferidoEm != null) r'transferidoEm': transferidoEm,
    if (transferidoPara != null) r'transferidoPara': transferidoPara,
    r'venda': venda,
  });

  Input$PostIngressoPessoaEventoInput._(this._$data);

  factory Input$PostIngressoPessoaEventoInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cortesia')) {
      final l$cortesia = data['cortesia'];
      result$data['cortesia'] = (l$cortesia as int?);
    }
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    if (data.containsKey('idCortesia')) {
      final l$idCortesia = data['idCortesia'];
      result$data['idCortesia'] = (l$idCortesia as int?);
    }
    final l$ingresso = data['ingresso'];
    result$data['ingresso'] = (l$ingresso as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    if (data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          data['solicitacaoTransferenciaIngresso'];
      result$data['solicitacaoTransferenciaIngresso'] =
          (l$solicitacaoTransferenciaIngresso as int?);
    }
    if (data.containsKey('transferencia')) {
      final l$transferencia = data['transferencia'];
      result$data['transferencia'] = (l$transferencia as int?);
    }
    if (data.containsKey('transferidoEm')) {
      final l$transferidoEm = data['transferidoEm'];
      result$data['transferidoEm'] = (l$transferidoEm as String?);
    }
    if (data.containsKey('transferidoPara')) {
      final l$transferidoPara = data['transferidoPara'];
      result$data['transferidoPara'] = (l$transferidoPara as int?);
    }
    final l$venda = data['venda'];
    result$data['venda'] = (l$venda as int);
    return Input$PostIngressoPessoaEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cortesia => (_$data['cortesia'] as int?);

  int get evento => (_$data['evento'] as int);

  int? get idCortesia => (_$data['idCortesia'] as int?);

  int get ingresso => (_$data['ingresso'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  int? get solicitacaoTransferenciaIngresso =>
      (_$data['solicitacaoTransferenciaIngresso'] as int?);

  int? get transferencia => (_$data['transferencia'] as int?);

  String? get transferidoEm => (_$data['transferidoEm'] as String?);

  int? get transferidoPara => (_$data['transferidoPara'] as int?);

  int get venda => (_$data['venda'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cortesia')) {
      final l$cortesia = cortesia;
      result$data['cortesia'] = l$cortesia;
    }
    final l$evento = evento;
    result$data['evento'] = l$evento;
    if (_$data.containsKey('idCortesia')) {
      final l$idCortesia = idCortesia;
      result$data['idCortesia'] = l$idCortesia;
    }
    final l$ingresso = ingresso;
    result$data['ingresso'] = l$ingresso;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    if (_$data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          solicitacaoTransferenciaIngresso;
      result$data['solicitacaoTransferenciaIngresso'] =
          l$solicitacaoTransferenciaIngresso;
    }
    if (_$data.containsKey('transferencia')) {
      final l$transferencia = transferencia;
      result$data['transferencia'] = l$transferencia;
    }
    if (_$data.containsKey('transferidoEm')) {
      final l$transferidoEm = transferidoEm;
      result$data['transferidoEm'] = l$transferidoEm;
    }
    if (_$data.containsKey('transferidoPara')) {
      final l$transferidoPara = transferidoPara;
      result$data['transferidoPara'] = l$transferidoPara;
    }
    final l$venda = venda;
    result$data['venda'] = l$venda;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostIngressoPessoaEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cortesia = cortesia;
    final lOther$cortesia = other.cortesia;
    if (_$data.containsKey('cortesia') !=
        other._$data.containsKey('cortesia')) {
      return false;
    }
    if (l$cortesia != lOther$cortesia) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$idCortesia = idCortesia;
    final lOther$idCortesia = other.idCortesia;
    if (_$data.containsKey('idCortesia') !=
        other._$data.containsKey('idCortesia')) {
      return false;
    }
    if (l$idCortesia != lOther$idCortesia) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final lOther$solicitacaoTransferenciaIngresso =
        other.solicitacaoTransferenciaIngresso;
    if (_$data.containsKey('solicitacaoTransferenciaIngresso') !=
        other._$data.containsKey('solicitacaoTransferenciaIngresso')) {
      return false;
    }
    if (l$solicitacaoTransferenciaIngresso !=
        lOther$solicitacaoTransferenciaIngresso) {
      return false;
    }
    final l$transferencia = transferencia;
    final lOther$transferencia = other.transferencia;
    if (_$data.containsKey('transferencia') !=
        other._$data.containsKey('transferencia')) {
      return false;
    }
    if (l$transferencia != lOther$transferencia) {
      return false;
    }
    final l$transferidoEm = transferidoEm;
    final lOther$transferidoEm = other.transferidoEm;
    if (_$data.containsKey('transferidoEm') !=
        other._$data.containsKey('transferidoEm')) {
      return false;
    }
    if (l$transferidoEm != lOther$transferidoEm) {
      return false;
    }
    final l$transferidoPara = transferidoPara;
    final lOther$transferidoPara = other.transferidoPara;
    if (_$data.containsKey('transferidoPara') !=
        other._$data.containsKey('transferidoPara')) {
      return false;
    }
    if (l$transferidoPara != lOther$transferidoPara) {
      return false;
    }
    final l$venda = venda;
    final lOther$venda = other.venda;
    if (l$venda != lOther$venda) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cortesia = cortesia;
    final l$evento = evento;
    final l$idCortesia = idCortesia;
    final l$ingresso = ingresso;
    final l$pessoa = pessoa;
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final l$transferencia = transferencia;
    final l$transferidoEm = transferidoEm;
    final l$transferidoPara = transferidoPara;
    final l$venda = venda;
    return Object.hashAll([
      _$data.containsKey('cortesia') ? l$cortesia : const {},
      l$evento,
      _$data.containsKey('idCortesia') ? l$idCortesia : const {},
      l$ingresso,
      l$pessoa,
      _$data.containsKey('solicitacaoTransferenciaIngresso')
          ? l$solicitacaoTransferenciaIngresso
          : const {},
      _$data.containsKey('transferencia') ? l$transferencia : const {},
      _$data.containsKey('transferidoEm') ? l$transferidoEm : const {},
      _$data.containsKey('transferidoPara') ? l$transferidoPara : const {},
      l$venda,
    ]);
  }
}

class Input$PostItemCardapioVendaInput {
  factory Input$PostItemCardapioVendaInput({
    required int cardapio,
    String? codigo,
    required int evento,
    required int pessoa,
    required double valorEvento,
    required double valorFastPay,
    required double valorTotal,
    required double valorUnitario,
    required int venda,
    required int vendaCardapio,
  }) => Input$PostItemCardapioVendaInput._({
    r'cardapio': cardapio,
    if (codigo != null) r'codigo': codigo,
    r'evento': evento,
    r'pessoa': pessoa,
    r'valorEvento': valorEvento,
    r'valorFastPay': valorFastPay,
    r'valorTotal': valorTotal,
    r'valorUnitario': valorUnitario,
    r'venda': venda,
    r'vendaCardapio': vendaCardapio,
  });

  Input$PostItemCardapioVendaInput._(this._$data);

  factory Input$PostItemCardapioVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cardapio = data['cardapio'];
    result$data['cardapio'] = (l$cardapio as int);
    if (data.containsKey('codigo')) {
      final l$codigo = data['codigo'];
      result$data['codigo'] = (l$codigo as String?);
    }
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$valorEvento = data['valorEvento'];
    result$data['valorEvento'] = (l$valorEvento as num).toDouble();
    final l$valorFastPay = data['valorFastPay'];
    result$data['valorFastPay'] = (l$valorFastPay as num).toDouble();
    final l$valorTotal = data['valorTotal'];
    result$data['valorTotal'] = (l$valorTotal as num).toDouble();
    final l$valorUnitario = data['valorUnitario'];
    result$data['valorUnitario'] = (l$valorUnitario as num).toDouble();
    final l$venda = data['venda'];
    result$data['venda'] = (l$venda as int);
    final l$vendaCardapio = data['vendaCardapio'];
    result$data['vendaCardapio'] = (l$vendaCardapio as int);
    return Input$PostItemCardapioVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get cardapio => (_$data['cardapio'] as int);

  String? get codigo => (_$data['codigo'] as String?);

  int get evento => (_$data['evento'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  double get valorEvento => (_$data['valorEvento'] as double);

  double get valorFastPay => (_$data['valorFastPay'] as double);

  double get valorTotal => (_$data['valorTotal'] as double);

  double get valorUnitario => (_$data['valorUnitario'] as double);

  int get venda => (_$data['venda'] as int);

  int get vendaCardapio => (_$data['vendaCardapio'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cardapio = cardapio;
    result$data['cardapio'] = l$cardapio;
    if (_$data.containsKey('codigo')) {
      final l$codigo = codigo;
      result$data['codigo'] = l$codigo;
    }
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$valorEvento = valorEvento;
    result$data['valorEvento'] = l$valorEvento;
    final l$valorFastPay = valorFastPay;
    result$data['valorFastPay'] = l$valorFastPay;
    final l$valorTotal = valorTotal;
    result$data['valorTotal'] = l$valorTotal;
    final l$valorUnitario = valorUnitario;
    result$data['valorUnitario'] = l$valorUnitario;
    final l$venda = venda;
    result$data['venda'] = l$venda;
    final l$vendaCardapio = vendaCardapio;
    result$data['vendaCardapio'] = l$vendaCardapio;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostItemCardapioVendaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$codigo = codigo;
    final lOther$codigo = other.codigo;
    if (_$data.containsKey('codigo') != other._$data.containsKey('codigo')) {
      return false;
    }
    if (l$codigo != lOther$codigo) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$valorEvento = valorEvento;
    final lOther$valorEvento = other.valorEvento;
    if (l$valorEvento != lOther$valorEvento) {
      return false;
    }
    final l$valorFastPay = valorFastPay;
    final lOther$valorFastPay = other.valorFastPay;
    if (l$valorFastPay != lOther$valorFastPay) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    final l$venda = venda;
    final lOther$venda = other.venda;
    if (l$venda != lOther$venda) {
      return false;
    }
    final l$vendaCardapio = vendaCardapio;
    final lOther$vendaCardapio = other.vendaCardapio;
    if (l$vendaCardapio != lOther$vendaCardapio) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$codigo = codigo;
    final l$evento = evento;
    final l$pessoa = pessoa;
    final l$valorEvento = valorEvento;
    final l$valorFastPay = valorFastPay;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    final l$venda = venda;
    final l$vendaCardapio = vendaCardapio;
    return Object.hashAll([
      l$cardapio,
      _$data.containsKey('codigo') ? l$codigo : const {},
      l$evento,
      l$pessoa,
      l$valorEvento,
      l$valorFastPay,
      l$valorTotal,
      l$valorUnitario,
      l$venda,
      l$vendaCardapio,
    ]);
  }
}

class Input$PostLoteInput {
  factory Input$PostLoteInput({
    required String dataFim,
    required String dataInicio,
    required int evento,
    required String nome,
  }) => Input$PostLoteInput._({
    r'dataFim': dataFim,
    r'dataInicio': dataInicio,
    r'evento': evento,
    r'nome': nome,
  });

  Input$PostLoteInput._(this._$data);

  factory Input$PostLoteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$dataFim = data['dataFim'];
    result$data['dataFim'] = (l$dataFim as String);
    final l$dataInicio = data['dataInicio'];
    result$data['dataInicio'] = (l$dataInicio as String);
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    return Input$PostLoteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get dataFim => (_$data['dataFim'] as String);

  String get dataInicio => (_$data['dataInicio'] as String);

  int get evento => (_$data['evento'] as int);

  String get nome => (_$data['nome'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$dataFim = dataFim;
    result$data['dataFim'] = l$dataFim;
    final l$dataInicio = dataInicio;
    result$data['dataInicio'] = l$dataInicio;
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostLoteInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$dataInicio = dataInicio;
    final lOther$dataInicio = other.dataInicio;
    if (l$dataInicio != lOther$dataInicio) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dataFim = dataFim;
    final l$dataInicio = dataInicio;
    final l$evento = evento;
    final l$nome = nome;
    return Object.hashAll([l$dataFim, l$dataInicio, l$evento, l$nome]);
  }
}

class Input$PostPessoaCartaoInput {
  factory Input$PostPessoaCartaoInput({
    String? brand,
    required String idPagarme,
    required String lastFourDigits,
    required int pessoa,
  }) => Input$PostPessoaCartaoInput._({
    if (brand != null) r'brand': brand,
    r'idPagarme': idPagarme,
    r'lastFourDigits': lastFourDigits,
    r'pessoa': pessoa,
  });

  Input$PostPessoaCartaoInput._(this._$data);

  factory Input$PostPessoaCartaoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('brand')) {
      final l$brand = data['brand'];
      result$data['brand'] = (l$brand as String?);
    }
    final l$idPagarme = data['idPagarme'];
    result$data['idPagarme'] = (l$idPagarme as String);
    final l$lastFourDigits = data['lastFourDigits'];
    result$data['lastFourDigits'] = (l$lastFourDigits as String);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    return Input$PostPessoaCartaoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get brand => (_$data['brand'] as String?);

  String get idPagarme => (_$data['idPagarme'] as String);

  String get lastFourDigits => (_$data['lastFourDigits'] as String);

  int get pessoa => (_$data['pessoa'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('brand')) {
      final l$brand = brand;
      result$data['brand'] = l$brand;
    }
    final l$idPagarme = idPagarme;
    result$data['idPagarme'] = l$idPagarme;
    final l$lastFourDigits = lastFourDigits;
    result$data['lastFourDigits'] = l$lastFourDigits;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostPessoaCartaoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (_$data.containsKey('brand') != other._$data.containsKey('brand')) {
      return false;
    }
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$idPagarme = idPagarme;
    final lOther$idPagarme = other.idPagarme;
    if (l$idPagarme != lOther$idPagarme) {
      return false;
    }
    final l$lastFourDigits = lastFourDigits;
    final lOther$lastFourDigits = other.lastFourDigits;
    if (l$lastFourDigits != lOther$lastFourDigits) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$brand = brand;
    final l$idPagarme = idPagarme;
    final l$lastFourDigits = lastFourDigits;
    final l$pessoa = pessoa;
    return Object.hashAll([
      _$data.containsKey('brand') ? l$brand : const {},
      l$idPagarme,
      l$lastFourDigits,
      l$pessoa,
    ]);
  }
}

class Input$PostPessoaInput {
  factory Input$PostPessoaInput({
    String? backgroundImage,
    String? cpf,
    String? descricao,
    String? email,
    String? fotoPerfil,
    String? idClientePagarme,
    String? nickname,
    int? perfilAberto,
    String? pesLogin,
    String? pesNome,
    String? pesSenha,
    String? provider,
    String? telefone,
  }) => Input$PostPessoaInput._({
    if (backgroundImage != null) r'backgroundImage': backgroundImage,
    if (cpf != null) r'cpf': cpf,
    if (descricao != null) r'descricao': descricao,
    if (email != null) r'email': email,
    if (fotoPerfil != null) r'fotoPerfil': fotoPerfil,
    if (idClientePagarme != null) r'idClientePagarme': idClientePagarme,
    if (nickname != null) r'nickname': nickname,
    if (perfilAberto != null) r'perfilAberto': perfilAberto,
    if (pesLogin != null) r'pesLogin': pesLogin,
    if (pesNome != null) r'pesNome': pesNome,
    if (pesSenha != null) r'pesSenha': pesSenha,
    if (provider != null) r'provider': provider,
    if (telefone != null) r'telefone': telefone,
  });

  Input$PostPessoaInput._(this._$data);

  factory Input$PostPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('backgroundImage')) {
      final l$backgroundImage = data['backgroundImage'];
      result$data['backgroundImage'] = (l$backgroundImage as String?);
    }
    if (data.containsKey('cpf')) {
      final l$cpf = data['cpf'];
      result$data['cpf'] = (l$cpf as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('fotoPerfil')) {
      final l$fotoPerfil = data['fotoPerfil'];
      result$data['fotoPerfil'] = (l$fotoPerfil as String?);
    }
    if (data.containsKey('idClientePagarme')) {
      final l$idClientePagarme = data['idClientePagarme'];
      result$data['idClientePagarme'] = (l$idClientePagarme as String?);
    }
    if (data.containsKey('nickname')) {
      final l$nickname = data['nickname'];
      result$data['nickname'] = (l$nickname as String?);
    }
    if (data.containsKey('perfilAberto')) {
      final l$perfilAberto = data['perfilAberto'];
      result$data['perfilAberto'] = (l$perfilAberto as int?);
    }
    if (data.containsKey('pesLogin')) {
      final l$pesLogin = data['pesLogin'];
      result$data['pesLogin'] = (l$pesLogin as String?);
    }
    if (data.containsKey('pesNome')) {
      final l$pesNome = data['pesNome'];
      result$data['pesNome'] = (l$pesNome as String?);
    }
    if (data.containsKey('pesSenha')) {
      final l$pesSenha = data['pesSenha'];
      result$data['pesSenha'] = (l$pesSenha as String?);
    }
    if (data.containsKey('provider')) {
      final l$provider = data['provider'];
      result$data['provider'] = (l$provider as String?);
    }
    if (data.containsKey('telefone')) {
      final l$telefone = data['telefone'];
      result$data['telefone'] = (l$telefone as String?);
    }
    return Input$PostPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get backgroundImage => (_$data['backgroundImage'] as String?);

  String? get cpf => (_$data['cpf'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get fotoPerfil => (_$data['fotoPerfil'] as String?);

  String? get idClientePagarme => (_$data['idClientePagarme'] as String?);

  String? get nickname => (_$data['nickname'] as String?);

  int? get perfilAberto => (_$data['perfilAberto'] as int?);

  String? get pesLogin => (_$data['pesLogin'] as String?);

  String? get pesNome => (_$data['pesNome'] as String?);

  String? get pesSenha => (_$data['pesSenha'] as String?);

  String? get provider => (_$data['provider'] as String?);

  String? get telefone => (_$data['telefone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('backgroundImage')) {
      final l$backgroundImage = backgroundImage;
      result$data['backgroundImage'] = l$backgroundImage;
    }
    if (_$data.containsKey('cpf')) {
      final l$cpf = cpf;
      result$data['cpf'] = l$cpf;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('fotoPerfil')) {
      final l$fotoPerfil = fotoPerfil;
      result$data['fotoPerfil'] = l$fotoPerfil;
    }
    if (_$data.containsKey('idClientePagarme')) {
      final l$idClientePagarme = idClientePagarme;
      result$data['idClientePagarme'] = l$idClientePagarme;
    }
    if (_$data.containsKey('nickname')) {
      final l$nickname = nickname;
      result$data['nickname'] = l$nickname;
    }
    if (_$data.containsKey('perfilAberto')) {
      final l$perfilAberto = perfilAberto;
      result$data['perfilAberto'] = l$perfilAberto;
    }
    if (_$data.containsKey('pesLogin')) {
      final l$pesLogin = pesLogin;
      result$data['pesLogin'] = l$pesLogin;
    }
    if (_$data.containsKey('pesNome')) {
      final l$pesNome = pesNome;
      result$data['pesNome'] = l$pesNome;
    }
    if (_$data.containsKey('pesSenha')) {
      final l$pesSenha = pesSenha;
      result$data['pesSenha'] = l$pesSenha;
    }
    if (_$data.containsKey('provider')) {
      final l$provider = provider;
      result$data['provider'] = l$provider;
    }
    if (_$data.containsKey('telefone')) {
      final l$telefone = telefone;
      result$data['telefone'] = l$telefone;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostPessoaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$backgroundImage = backgroundImage;
    final lOther$backgroundImage = other.backgroundImage;
    if (_$data.containsKey('backgroundImage') !=
        other._$data.containsKey('backgroundImage')) {
      return false;
    }
    if (l$backgroundImage != lOther$backgroundImage) {
      return false;
    }
    final l$cpf = cpf;
    final lOther$cpf = other.cpf;
    if (_$data.containsKey('cpf') != other._$data.containsKey('cpf')) {
      return false;
    }
    if (l$cpf != lOther$cpf) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$fotoPerfil = fotoPerfil;
    final lOther$fotoPerfil = other.fotoPerfil;
    if (_$data.containsKey('fotoPerfil') !=
        other._$data.containsKey('fotoPerfil')) {
      return false;
    }
    if (l$fotoPerfil != lOther$fotoPerfil) {
      return false;
    }
    final l$idClientePagarme = idClientePagarme;
    final lOther$idClientePagarme = other.idClientePagarme;
    if (_$data.containsKey('idClientePagarme') !=
        other._$data.containsKey('idClientePagarme')) {
      return false;
    }
    if (l$idClientePagarme != lOther$idClientePagarme) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (_$data.containsKey('nickname') !=
        other._$data.containsKey('nickname')) {
      return false;
    }
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$perfilAberto = perfilAberto;
    final lOther$perfilAberto = other.perfilAberto;
    if (_$data.containsKey('perfilAberto') !=
        other._$data.containsKey('perfilAberto')) {
      return false;
    }
    if (l$perfilAberto != lOther$perfilAberto) {
      return false;
    }
    final l$pesLogin = pesLogin;
    final lOther$pesLogin = other.pesLogin;
    if (_$data.containsKey('pesLogin') !=
        other._$data.containsKey('pesLogin')) {
      return false;
    }
    if (l$pesLogin != lOther$pesLogin) {
      return false;
    }
    final l$pesNome = pesNome;
    final lOther$pesNome = other.pesNome;
    if (_$data.containsKey('pesNome') != other._$data.containsKey('pesNome')) {
      return false;
    }
    if (l$pesNome != lOther$pesNome) {
      return false;
    }
    final l$pesSenha = pesSenha;
    final lOther$pesSenha = other.pesSenha;
    if (_$data.containsKey('pesSenha') !=
        other._$data.containsKey('pesSenha')) {
      return false;
    }
    if (l$pesSenha != lOther$pesSenha) {
      return false;
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (_$data.containsKey('provider') !=
        other._$data.containsKey('provider')) {
      return false;
    }
    if (l$provider != lOther$provider) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (_$data.containsKey('telefone') !=
        other._$data.containsKey('telefone')) {
      return false;
    }
    if (l$telefone != lOther$telefone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$backgroundImage = backgroundImage;
    final l$cpf = cpf;
    final l$descricao = descricao;
    final l$email = email;
    final l$fotoPerfil = fotoPerfil;
    final l$idClientePagarme = idClientePagarme;
    final l$nickname = nickname;
    final l$perfilAberto = perfilAberto;
    final l$pesLogin = pesLogin;
    final l$pesNome = pesNome;
    final l$pesSenha = pesSenha;
    final l$provider = provider;
    final l$telefone = telefone;
    return Object.hashAll([
      _$data.containsKey('backgroundImage') ? l$backgroundImage : const {},
      _$data.containsKey('cpf') ? l$cpf : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('fotoPerfil') ? l$fotoPerfil : const {},
      _$data.containsKey('idClientePagarme') ? l$idClientePagarme : const {},
      _$data.containsKey('nickname') ? l$nickname : const {},
      _$data.containsKey('perfilAberto') ? l$perfilAberto : const {},
      _$data.containsKey('pesLogin') ? l$pesLogin : const {},
      _$data.containsKey('pesNome') ? l$pesNome : const {},
      _$data.containsKey('pesSenha') ? l$pesSenha : const {},
      _$data.containsKey('provider') ? l$provider : const {},
      _$data.containsKey('telefone') ? l$telefone : const {},
    ]);
  }
}

class Input$PostPessoaPagamentoInput {
  factory Input$PostPessoaPagamentoInput({
    String? accountCheckDigit,
    String? accountNumber,
    double? annualRevenue,
    String? bairro,
    String? bairroRepresentante,
    int? bank,
    String? birthdate,
    String? birthdateRepresentante,
    String? branchCheckDigit,
    String? branchNumber,
    String? cep,
    String? cepRepresentante,
    int? cidade,
    int? cidadeRepresentante,
    String? companyName,
    String? complemento,
    String? complementoRepresentante,
    String? descricao,
    String? document,
    String? documentRepresentante,
    String? email,
    String? emailRepresentante,
    int? estado,
    int? estadoRepresentante,
    int? evento,
    String? holderDocument,
    String? holderName,
    int? holderType,
    int? id,
    String? idPagarme,
    String? idPagarmeConta,
    String? logradouro,
    String? logradouroRepresentante,
    double? monthlyIncome,
    double? monthlyIncomeRepresentante,
    String? name,
    String? nameRepresentante,
    String? numero,
    String? numeroRepresentante,
    String? professionalOccupation,
    String? professionalOccupationRepresentante,
    String? telefone,
    double? tipo,
    String? tradingName,
    int? transferEnabled,
    int? transferInterval,
    int? type,
  }) => Input$PostPessoaPagamentoInput._({
    if (accountCheckDigit != null) r'accountCheckDigit': accountCheckDigit,
    if (accountNumber != null) r'accountNumber': accountNumber,
    if (annualRevenue != null) r'annualRevenue': annualRevenue,
    if (bairro != null) r'bairro': bairro,
    if (bairroRepresentante != null)
      r'bairroRepresentante': bairroRepresentante,
    if (bank != null) r'bank': bank,
    if (birthdate != null) r'birthdate': birthdate,
    if (birthdateRepresentante != null)
      r'birthdateRepresentante': birthdateRepresentante,
    if (branchCheckDigit != null) r'branchCheckDigit': branchCheckDigit,
    if (branchNumber != null) r'branchNumber': branchNumber,
    if (cep != null) r'cep': cep,
    if (cepRepresentante != null) r'cepRepresentante': cepRepresentante,
    if (cidade != null) r'cidade': cidade,
    if (cidadeRepresentante != null)
      r'cidadeRepresentante': cidadeRepresentante,
    if (companyName != null) r'companyName': companyName,
    if (complemento != null) r'complemento': complemento,
    if (complementoRepresentante != null)
      r'complementoRepresentante': complementoRepresentante,
    if (descricao != null) r'descricao': descricao,
    if (document != null) r'document': document,
    if (documentRepresentante != null)
      r'documentRepresentante': documentRepresentante,
    if (email != null) r'email': email,
    if (emailRepresentante != null) r'emailRepresentante': emailRepresentante,
    if (estado != null) r'estado': estado,
    if (estadoRepresentante != null)
      r'estadoRepresentante': estadoRepresentante,
    if (evento != null) r'evento': evento,
    if (holderDocument != null) r'holderDocument': holderDocument,
    if (holderName != null) r'holderName': holderName,
    if (holderType != null) r'holderType': holderType,
    if (id != null) r'id': id,
    if (idPagarme != null) r'idPagarme': idPagarme,
    if (idPagarmeConta != null) r'idPagarmeConta': idPagarmeConta,
    if (logradouro != null) r'logradouro': logradouro,
    if (logradouroRepresentante != null)
      r'logradouroRepresentante': logradouroRepresentante,
    if (monthlyIncome != null) r'monthlyIncome': monthlyIncome,
    if (monthlyIncomeRepresentante != null)
      r'monthlyIncomeRepresentante': monthlyIncomeRepresentante,
    if (name != null) r'name': name,
    if (nameRepresentante != null) r'nameRepresentante': nameRepresentante,
    if (numero != null) r'numero': numero,
    if (numeroRepresentante != null)
      r'numeroRepresentante': numeroRepresentante,
    if (professionalOccupation != null)
      r'professionalOccupation': professionalOccupation,
    if (professionalOccupationRepresentante != null)
      r'professionalOccupationRepresentante':
          professionalOccupationRepresentante,
    if (telefone != null) r'telefone': telefone,
    if (tipo != null) r'tipo': tipo,
    if (tradingName != null) r'tradingName': tradingName,
    if (transferEnabled != null) r'transferEnabled': transferEnabled,
    if (transferInterval != null) r'transferInterval': transferInterval,
    if (type != null) r'type': type,
  });

  Input$PostPessoaPagamentoInput._(this._$data);

  factory Input$PostPessoaPagamentoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountCheckDigit')) {
      final l$accountCheckDigit = data['accountCheckDigit'];
      result$data['accountCheckDigit'] = (l$accountCheckDigit as String?);
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = (l$accountNumber as String?);
    }
    if (data.containsKey('annualRevenue')) {
      final l$annualRevenue = data['annualRevenue'];
      result$data['annualRevenue'] = (l$annualRevenue as num?)?.toDouble();
    }
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('bairroRepresentante')) {
      final l$bairroRepresentante = data['bairroRepresentante'];
      result$data['bairroRepresentante'] = (l$bairroRepresentante as String?);
    }
    if (data.containsKey('bank')) {
      final l$bank = data['bank'];
      result$data['bank'] = (l$bank as int?);
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = (l$birthdate as String?);
    }
    if (data.containsKey('birthdateRepresentante')) {
      final l$birthdateRepresentante = data['birthdateRepresentante'];
      result$data['birthdateRepresentante'] =
          (l$birthdateRepresentante as String?);
    }
    if (data.containsKey('branchCheckDigit')) {
      final l$branchCheckDigit = data['branchCheckDigit'];
      result$data['branchCheckDigit'] = (l$branchCheckDigit as String?);
    }
    if (data.containsKey('branchNumber')) {
      final l$branchNumber = data['branchNumber'];
      result$data['branchNumber'] = (l$branchNumber as String?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cepRepresentante')) {
      final l$cepRepresentante = data['cepRepresentante'];
      result$data['cepRepresentante'] = (l$cepRepresentante as String?);
    }
    if (data.containsKey('cidade')) {
      final l$cidade = data['cidade'];
      result$data['cidade'] = (l$cidade as int?);
    }
    if (data.containsKey('cidadeRepresentante')) {
      final l$cidadeRepresentante = data['cidadeRepresentante'];
      result$data['cidadeRepresentante'] = (l$cidadeRepresentante as int?);
    }
    if (data.containsKey('companyName')) {
      final l$companyName = data['companyName'];
      result$data['companyName'] = (l$companyName as String?);
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('complementoRepresentante')) {
      final l$complementoRepresentante = data['complementoRepresentante'];
      result$data['complementoRepresentante'] =
          (l$complementoRepresentante as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('document')) {
      final l$document = data['document'];
      result$data['document'] = (l$document as String?);
    }
    if (data.containsKey('documentRepresentante')) {
      final l$documentRepresentante = data['documentRepresentante'];
      result$data['documentRepresentante'] =
          (l$documentRepresentante as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('emailRepresentante')) {
      final l$emailRepresentante = data['emailRepresentante'];
      result$data['emailRepresentante'] = (l$emailRepresentante as String?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as int?);
    }
    if (data.containsKey('estadoRepresentante')) {
      final l$estadoRepresentante = data['estadoRepresentante'];
      result$data['estadoRepresentante'] = (l$estadoRepresentante as int?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('holderDocument')) {
      final l$holderDocument = data['holderDocument'];
      result$data['holderDocument'] = (l$holderDocument as String?);
    }
    if (data.containsKey('holderName')) {
      final l$holderName = data['holderName'];
      result$data['holderName'] = (l$holderName as String?);
    }
    if (data.containsKey('holderType')) {
      final l$holderType = data['holderType'];
      result$data['holderType'] = (l$holderType as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('idPagarme')) {
      final l$idPagarme = data['idPagarme'];
      result$data['idPagarme'] = (l$idPagarme as String?);
    }
    if (data.containsKey('idPagarmeConta')) {
      final l$idPagarmeConta = data['idPagarmeConta'];
      result$data['idPagarmeConta'] = (l$idPagarmeConta as String?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('logradouroRepresentante')) {
      final l$logradouroRepresentante = data['logradouroRepresentante'];
      result$data['logradouroRepresentante'] =
          (l$logradouroRepresentante as String?);
    }
    if (data.containsKey('monthlyIncome')) {
      final l$monthlyIncome = data['monthlyIncome'];
      result$data['monthlyIncome'] = (l$monthlyIncome as num?)?.toDouble();
    }
    if (data.containsKey('monthlyIncomeRepresentante')) {
      final l$monthlyIncomeRepresentante = data['monthlyIncomeRepresentante'];
      result$data['monthlyIncomeRepresentante'] =
          (l$monthlyIncomeRepresentante as num?)?.toDouble();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nameRepresentante')) {
      final l$nameRepresentante = data['nameRepresentante'];
      result$data['nameRepresentante'] = (l$nameRepresentante as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('numeroRepresentante')) {
      final l$numeroRepresentante = data['numeroRepresentante'];
      result$data['numeroRepresentante'] = (l$numeroRepresentante as String?);
    }
    if (data.containsKey('professionalOccupation')) {
      final l$professionalOccupation = data['professionalOccupation'];
      result$data['professionalOccupation'] =
          (l$professionalOccupation as String?);
    }
    if (data.containsKey('professionalOccupationRepresentante')) {
      final l$professionalOccupationRepresentante =
          data['professionalOccupationRepresentante'];
      result$data['professionalOccupationRepresentante'] =
          (l$professionalOccupationRepresentante as String?);
    }
    if (data.containsKey('telefone')) {
      final l$telefone = data['telefone'];
      result$data['telefone'] = (l$telefone as String?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as num?)?.toDouble();
    }
    if (data.containsKey('tradingName')) {
      final l$tradingName = data['tradingName'];
      result$data['tradingName'] = (l$tradingName as String?);
    }
    if (data.containsKey('transferEnabled')) {
      final l$transferEnabled = data['transferEnabled'];
      result$data['transferEnabled'] = (l$transferEnabled as int?);
    }
    if (data.containsKey('transferInterval')) {
      final l$transferInterval = data['transferInterval'];
      result$data['transferInterval'] = (l$transferInterval as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as int?);
    }
    return Input$PostPessoaPagamentoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountCheckDigit => (_$data['accountCheckDigit'] as String?);

  String? get accountNumber => (_$data['accountNumber'] as String?);

  double? get annualRevenue => (_$data['annualRevenue'] as double?);

  String? get bairro => (_$data['bairro'] as String?);

  String? get bairroRepresentante => (_$data['bairroRepresentante'] as String?);

  int? get bank => (_$data['bank'] as int?);

  String? get birthdate => (_$data['birthdate'] as String?);

  String? get birthdateRepresentante =>
      (_$data['birthdateRepresentante'] as String?);

  String? get branchCheckDigit => (_$data['branchCheckDigit'] as String?);

  String? get branchNumber => (_$data['branchNumber'] as String?);

  String? get cep => (_$data['cep'] as String?);

  String? get cepRepresentante => (_$data['cepRepresentante'] as String?);

  int? get cidade => (_$data['cidade'] as int?);

  int? get cidadeRepresentante => (_$data['cidadeRepresentante'] as int?);

  String? get companyName => (_$data['companyName'] as String?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get complementoRepresentante =>
      (_$data['complementoRepresentante'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get document => (_$data['document'] as String?);

  String? get documentRepresentante =>
      (_$data['documentRepresentante'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get emailRepresentante => (_$data['emailRepresentante'] as String?);

  int? get estado => (_$data['estado'] as int?);

  int? get estadoRepresentante => (_$data['estadoRepresentante'] as int?);

  int? get evento => (_$data['evento'] as int?);

  String? get holderDocument => (_$data['holderDocument'] as String?);

  String? get holderName => (_$data['holderName'] as String?);

  int? get holderType => (_$data['holderType'] as int?);

  int? get id => (_$data['id'] as int?);

  String? get idPagarme => (_$data['idPagarme'] as String?);

  String? get idPagarmeConta => (_$data['idPagarmeConta'] as String?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get logradouroRepresentante =>
      (_$data['logradouroRepresentante'] as String?);

  double? get monthlyIncome => (_$data['monthlyIncome'] as double?);

  double? get monthlyIncomeRepresentante =>
      (_$data['monthlyIncomeRepresentante'] as double?);

  String? get name => (_$data['name'] as String?);

  String? get nameRepresentante => (_$data['nameRepresentante'] as String?);

  String? get numero => (_$data['numero'] as String?);

  String? get numeroRepresentante => (_$data['numeroRepresentante'] as String?);

  String? get professionalOccupation =>
      (_$data['professionalOccupation'] as String?);

  String? get professionalOccupationRepresentante =>
      (_$data['professionalOccupationRepresentante'] as String?);

  String? get telefone => (_$data['telefone'] as String?);

  double? get tipo => (_$data['tipo'] as double?);

  String? get tradingName => (_$data['tradingName'] as String?);

  int? get transferEnabled => (_$data['transferEnabled'] as int?);

  int? get transferInterval => (_$data['transferInterval'] as int?);

  int? get type => (_$data['type'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountCheckDigit')) {
      final l$accountCheckDigit = accountCheckDigit;
      result$data['accountCheckDigit'] = l$accountCheckDigit;
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber;
    }
    if (_$data.containsKey('annualRevenue')) {
      final l$annualRevenue = annualRevenue;
      result$data['annualRevenue'] = l$annualRevenue;
    }
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('bairroRepresentante')) {
      final l$bairroRepresentante = bairroRepresentante;
      result$data['bairroRepresentante'] = l$bairroRepresentante;
    }
    if (_$data.containsKey('bank')) {
      final l$bank = bank;
      result$data['bank'] = l$bank;
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate;
    }
    if (_$data.containsKey('birthdateRepresentante')) {
      final l$birthdateRepresentante = birthdateRepresentante;
      result$data['birthdateRepresentante'] = l$birthdateRepresentante;
    }
    if (_$data.containsKey('branchCheckDigit')) {
      final l$branchCheckDigit = branchCheckDigit;
      result$data['branchCheckDigit'] = l$branchCheckDigit;
    }
    if (_$data.containsKey('branchNumber')) {
      final l$branchNumber = branchNumber;
      result$data['branchNumber'] = l$branchNumber;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cepRepresentante')) {
      final l$cepRepresentante = cepRepresentante;
      result$data['cepRepresentante'] = l$cepRepresentante;
    }
    if (_$data.containsKey('cidade')) {
      final l$cidade = cidade;
      result$data['cidade'] = l$cidade;
    }
    if (_$data.containsKey('cidadeRepresentante')) {
      final l$cidadeRepresentante = cidadeRepresentante;
      result$data['cidadeRepresentante'] = l$cidadeRepresentante;
    }
    if (_$data.containsKey('companyName')) {
      final l$companyName = companyName;
      result$data['companyName'] = l$companyName;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('complementoRepresentante')) {
      final l$complementoRepresentante = complementoRepresentante;
      result$data['complementoRepresentante'] = l$complementoRepresentante;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('document')) {
      final l$document = document;
      result$data['document'] = l$document;
    }
    if (_$data.containsKey('documentRepresentante')) {
      final l$documentRepresentante = documentRepresentante;
      result$data['documentRepresentante'] = l$documentRepresentante;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('emailRepresentante')) {
      final l$emailRepresentante = emailRepresentante;
      result$data['emailRepresentante'] = l$emailRepresentante;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('estadoRepresentante')) {
      final l$estadoRepresentante = estadoRepresentante;
      result$data['estadoRepresentante'] = l$estadoRepresentante;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('holderDocument')) {
      final l$holderDocument = holderDocument;
      result$data['holderDocument'] = l$holderDocument;
    }
    if (_$data.containsKey('holderName')) {
      final l$holderName = holderName;
      result$data['holderName'] = l$holderName;
    }
    if (_$data.containsKey('holderType')) {
      final l$holderType = holderType;
      result$data['holderType'] = l$holderType;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('idPagarme')) {
      final l$idPagarme = idPagarme;
      result$data['idPagarme'] = l$idPagarme;
    }
    if (_$data.containsKey('idPagarmeConta')) {
      final l$idPagarmeConta = idPagarmeConta;
      result$data['idPagarmeConta'] = l$idPagarmeConta;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('logradouroRepresentante')) {
      final l$logradouroRepresentante = logradouroRepresentante;
      result$data['logradouroRepresentante'] = l$logradouroRepresentante;
    }
    if (_$data.containsKey('monthlyIncome')) {
      final l$monthlyIncome = monthlyIncome;
      result$data['monthlyIncome'] = l$monthlyIncome;
    }
    if (_$data.containsKey('monthlyIncomeRepresentante')) {
      final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
      result$data['monthlyIncomeRepresentante'] = l$monthlyIncomeRepresentante;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nameRepresentante')) {
      final l$nameRepresentante = nameRepresentante;
      result$data['nameRepresentante'] = l$nameRepresentante;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('numeroRepresentante')) {
      final l$numeroRepresentante = numeroRepresentante;
      result$data['numeroRepresentante'] = l$numeroRepresentante;
    }
    if (_$data.containsKey('professionalOccupation')) {
      final l$professionalOccupation = professionalOccupation;
      result$data['professionalOccupation'] = l$professionalOccupation;
    }
    if (_$data.containsKey('professionalOccupationRepresentante')) {
      final l$professionalOccupationRepresentante =
          professionalOccupationRepresentante;
      result$data['professionalOccupationRepresentante'] =
          l$professionalOccupationRepresentante;
    }
    if (_$data.containsKey('telefone')) {
      final l$telefone = telefone;
      result$data['telefone'] = l$telefone;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    if (_$data.containsKey('tradingName')) {
      final l$tradingName = tradingName;
      result$data['tradingName'] = l$tradingName;
    }
    if (_$data.containsKey('transferEnabled')) {
      final l$transferEnabled = transferEnabled;
      result$data['transferEnabled'] = l$transferEnabled;
    }
    if (_$data.containsKey('transferInterval')) {
      final l$transferInterval = transferInterval;
      result$data['transferInterval'] = l$transferInterval;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostPessoaPagamentoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountCheckDigit = accountCheckDigit;
    final lOther$accountCheckDigit = other.accountCheckDigit;
    if (_$data.containsKey('accountCheckDigit') !=
        other._$data.containsKey('accountCheckDigit')) {
      return false;
    }
    if (l$accountCheckDigit != lOther$accountCheckDigit) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$annualRevenue = annualRevenue;
    final lOther$annualRevenue = other.annualRevenue;
    if (_$data.containsKey('annualRevenue') !=
        other._$data.containsKey('annualRevenue')) {
      return false;
    }
    if (l$annualRevenue != lOther$annualRevenue) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$bairroRepresentante = bairroRepresentante;
    final lOther$bairroRepresentante = other.bairroRepresentante;
    if (_$data.containsKey('bairroRepresentante') !=
        other._$data.containsKey('bairroRepresentante')) {
      return false;
    }
    if (l$bairroRepresentante != lOther$bairroRepresentante) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (_$data.containsKey('bank') != other._$data.containsKey('bank')) {
      return false;
    }
    if (l$bank != lOther$bank) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$birthdateRepresentante = birthdateRepresentante;
    final lOther$birthdateRepresentante = other.birthdateRepresentante;
    if (_$data.containsKey('birthdateRepresentante') !=
        other._$data.containsKey('birthdateRepresentante')) {
      return false;
    }
    if (l$birthdateRepresentante != lOther$birthdateRepresentante) {
      return false;
    }
    final l$branchCheckDigit = branchCheckDigit;
    final lOther$branchCheckDigit = other.branchCheckDigit;
    if (_$data.containsKey('branchCheckDigit') !=
        other._$data.containsKey('branchCheckDigit')) {
      return false;
    }
    if (l$branchCheckDigit != lOther$branchCheckDigit) {
      return false;
    }
    final l$branchNumber = branchNumber;
    final lOther$branchNumber = other.branchNumber;
    if (_$data.containsKey('branchNumber') !=
        other._$data.containsKey('branchNumber')) {
      return false;
    }
    if (l$branchNumber != lOther$branchNumber) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cepRepresentante = cepRepresentante;
    final lOther$cepRepresentante = other.cepRepresentante;
    if (_$data.containsKey('cepRepresentante') !=
        other._$data.containsKey('cepRepresentante')) {
      return false;
    }
    if (l$cepRepresentante != lOther$cepRepresentante) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (_$data.containsKey('cidade') != other._$data.containsKey('cidade')) {
      return false;
    }
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$cidadeRepresentante = cidadeRepresentante;
    final lOther$cidadeRepresentante = other.cidadeRepresentante;
    if (_$data.containsKey('cidadeRepresentante') !=
        other._$data.containsKey('cidadeRepresentante')) {
      return false;
    }
    if (l$cidadeRepresentante != lOther$cidadeRepresentante) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (_$data.containsKey('companyName') !=
        other._$data.containsKey('companyName')) {
      return false;
    }
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$complementoRepresentante = complementoRepresentante;
    final lOther$complementoRepresentante = other.complementoRepresentante;
    if (_$data.containsKey('complementoRepresentante') !=
        other._$data.containsKey('complementoRepresentante')) {
      return false;
    }
    if (l$complementoRepresentante != lOther$complementoRepresentante) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (_$data.containsKey('document') !=
        other._$data.containsKey('document')) {
      return false;
    }
    if (l$document != lOther$document) {
      return false;
    }
    final l$documentRepresentante = documentRepresentante;
    final lOther$documentRepresentante = other.documentRepresentante;
    if (_$data.containsKey('documentRepresentante') !=
        other._$data.containsKey('documentRepresentante')) {
      return false;
    }
    if (l$documentRepresentante != lOther$documentRepresentante) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$emailRepresentante = emailRepresentante;
    final lOther$emailRepresentante = other.emailRepresentante;
    if (_$data.containsKey('emailRepresentante') !=
        other._$data.containsKey('emailRepresentante')) {
      return false;
    }
    if (l$emailRepresentante != lOther$emailRepresentante) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$estadoRepresentante = estadoRepresentante;
    final lOther$estadoRepresentante = other.estadoRepresentante;
    if (_$data.containsKey('estadoRepresentante') !=
        other._$data.containsKey('estadoRepresentante')) {
      return false;
    }
    if (l$estadoRepresentante != lOther$estadoRepresentante) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$holderDocument = holderDocument;
    final lOther$holderDocument = other.holderDocument;
    if (_$data.containsKey('holderDocument') !=
        other._$data.containsKey('holderDocument')) {
      return false;
    }
    if (l$holderDocument != lOther$holderDocument) {
      return false;
    }
    final l$holderName = holderName;
    final lOther$holderName = other.holderName;
    if (_$data.containsKey('holderName') !=
        other._$data.containsKey('holderName')) {
      return false;
    }
    if (l$holderName != lOther$holderName) {
      return false;
    }
    final l$holderType = holderType;
    final lOther$holderType = other.holderType;
    if (_$data.containsKey('holderType') !=
        other._$data.containsKey('holderType')) {
      return false;
    }
    if (l$holderType != lOther$holderType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$idPagarme = idPagarme;
    final lOther$idPagarme = other.idPagarme;
    if (_$data.containsKey('idPagarme') !=
        other._$data.containsKey('idPagarme')) {
      return false;
    }
    if (l$idPagarme != lOther$idPagarme) {
      return false;
    }
    final l$idPagarmeConta = idPagarmeConta;
    final lOther$idPagarmeConta = other.idPagarmeConta;
    if (_$data.containsKey('idPagarmeConta') !=
        other._$data.containsKey('idPagarmeConta')) {
      return false;
    }
    if (l$idPagarmeConta != lOther$idPagarmeConta) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$logradouroRepresentante = logradouroRepresentante;
    final lOther$logradouroRepresentante = other.logradouroRepresentante;
    if (_$data.containsKey('logradouroRepresentante') !=
        other._$data.containsKey('logradouroRepresentante')) {
      return false;
    }
    if (l$logradouroRepresentante != lOther$logradouroRepresentante) {
      return false;
    }
    final l$monthlyIncome = monthlyIncome;
    final lOther$monthlyIncome = other.monthlyIncome;
    if (_$data.containsKey('monthlyIncome') !=
        other._$data.containsKey('monthlyIncome')) {
      return false;
    }
    if (l$monthlyIncome != lOther$monthlyIncome) {
      return false;
    }
    final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
    final lOther$monthlyIncomeRepresentante = other.monthlyIncomeRepresentante;
    if (_$data.containsKey('monthlyIncomeRepresentante') !=
        other._$data.containsKey('monthlyIncomeRepresentante')) {
      return false;
    }
    if (l$monthlyIncomeRepresentante != lOther$monthlyIncomeRepresentante) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$nameRepresentante = nameRepresentante;
    final lOther$nameRepresentante = other.nameRepresentante;
    if (_$data.containsKey('nameRepresentante') !=
        other._$data.containsKey('nameRepresentante')) {
      return false;
    }
    if (l$nameRepresentante != lOther$nameRepresentante) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$numeroRepresentante = numeroRepresentante;
    final lOther$numeroRepresentante = other.numeroRepresentante;
    if (_$data.containsKey('numeroRepresentante') !=
        other._$data.containsKey('numeroRepresentante')) {
      return false;
    }
    if (l$numeroRepresentante != lOther$numeroRepresentante) {
      return false;
    }
    final l$professionalOccupation = professionalOccupation;
    final lOther$professionalOccupation = other.professionalOccupation;
    if (_$data.containsKey('professionalOccupation') !=
        other._$data.containsKey('professionalOccupation')) {
      return false;
    }
    if (l$professionalOccupation != lOther$professionalOccupation) {
      return false;
    }
    final l$professionalOccupationRepresentante =
        professionalOccupationRepresentante;
    final lOther$professionalOccupationRepresentante =
        other.professionalOccupationRepresentante;
    if (_$data.containsKey('professionalOccupationRepresentante') !=
        other._$data.containsKey('professionalOccupationRepresentante')) {
      return false;
    }
    if (l$professionalOccupationRepresentante !=
        lOther$professionalOccupationRepresentante) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (_$data.containsKey('telefone') !=
        other._$data.containsKey('telefone')) {
      return false;
    }
    if (l$telefone != lOther$telefone) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$tradingName = tradingName;
    final lOther$tradingName = other.tradingName;
    if (_$data.containsKey('tradingName') !=
        other._$data.containsKey('tradingName')) {
      return false;
    }
    if (l$tradingName != lOther$tradingName) {
      return false;
    }
    final l$transferEnabled = transferEnabled;
    final lOther$transferEnabled = other.transferEnabled;
    if (_$data.containsKey('transferEnabled') !=
        other._$data.containsKey('transferEnabled')) {
      return false;
    }
    if (l$transferEnabled != lOther$transferEnabled) {
      return false;
    }
    final l$transferInterval = transferInterval;
    final lOther$transferInterval = other.transferInterval;
    if (_$data.containsKey('transferInterval') !=
        other._$data.containsKey('transferInterval')) {
      return false;
    }
    if (l$transferInterval != lOther$transferInterval) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountCheckDigit = accountCheckDigit;
    final l$accountNumber = accountNumber;
    final l$annualRevenue = annualRevenue;
    final l$bairro = bairro;
    final l$bairroRepresentante = bairroRepresentante;
    final l$bank = bank;
    final l$birthdate = birthdate;
    final l$birthdateRepresentante = birthdateRepresentante;
    final l$branchCheckDigit = branchCheckDigit;
    final l$branchNumber = branchNumber;
    final l$cep = cep;
    final l$cepRepresentante = cepRepresentante;
    final l$cidade = cidade;
    final l$cidadeRepresentante = cidadeRepresentante;
    final l$companyName = companyName;
    final l$complemento = complemento;
    final l$complementoRepresentante = complementoRepresentante;
    final l$descricao = descricao;
    final l$document = document;
    final l$documentRepresentante = documentRepresentante;
    final l$email = email;
    final l$emailRepresentante = emailRepresentante;
    final l$estado = estado;
    final l$estadoRepresentante = estadoRepresentante;
    final l$evento = evento;
    final l$holderDocument = holderDocument;
    final l$holderName = holderName;
    final l$holderType = holderType;
    final l$id = id;
    final l$idPagarme = idPagarme;
    final l$idPagarmeConta = idPagarmeConta;
    final l$logradouro = logradouro;
    final l$logradouroRepresentante = logradouroRepresentante;
    final l$monthlyIncome = monthlyIncome;
    final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
    final l$name = name;
    final l$nameRepresentante = nameRepresentante;
    final l$numero = numero;
    final l$numeroRepresentante = numeroRepresentante;
    final l$professionalOccupation = professionalOccupation;
    final l$professionalOccupationRepresentante =
        professionalOccupationRepresentante;
    final l$telefone = telefone;
    final l$tipo = tipo;
    final l$tradingName = tradingName;
    final l$transferEnabled = transferEnabled;
    final l$transferInterval = transferInterval;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('accountCheckDigit') ? l$accountCheckDigit : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('annualRevenue') ? l$annualRevenue : const {},
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('bairroRepresentante')
          ? l$bairroRepresentante
          : const {},
      _$data.containsKey('bank') ? l$bank : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('birthdateRepresentante')
          ? l$birthdateRepresentante
          : const {},
      _$data.containsKey('branchCheckDigit') ? l$branchCheckDigit : const {},
      _$data.containsKey('branchNumber') ? l$branchNumber : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cepRepresentante') ? l$cepRepresentante : const {},
      _$data.containsKey('cidade') ? l$cidade : const {},
      _$data.containsKey('cidadeRepresentante')
          ? l$cidadeRepresentante
          : const {},
      _$data.containsKey('companyName') ? l$companyName : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('complementoRepresentante')
          ? l$complementoRepresentante
          : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('document') ? l$document : const {},
      _$data.containsKey('documentRepresentante')
          ? l$documentRepresentante
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('emailRepresentante')
          ? l$emailRepresentante
          : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('estadoRepresentante')
          ? l$estadoRepresentante
          : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('holderDocument') ? l$holderDocument : const {},
      _$data.containsKey('holderName') ? l$holderName : const {},
      _$data.containsKey('holderType') ? l$holderType : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('idPagarme') ? l$idPagarme : const {},
      _$data.containsKey('idPagarmeConta') ? l$idPagarmeConta : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('logradouroRepresentante')
          ? l$logradouroRepresentante
          : const {},
      _$data.containsKey('monthlyIncome') ? l$monthlyIncome : const {},
      _$data.containsKey('monthlyIncomeRepresentante')
          ? l$monthlyIncomeRepresentante
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nameRepresentante') ? l$nameRepresentante : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('numeroRepresentante')
          ? l$numeroRepresentante
          : const {},
      _$data.containsKey('professionalOccupation')
          ? l$professionalOccupation
          : const {},
      _$data.containsKey('professionalOccupationRepresentante')
          ? l$professionalOccupationRepresentante
          : const {},
      _$data.containsKey('telefone') ? l$telefone : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
      _$data.containsKey('tradingName') ? l$tradingName : const {},
      _$data.containsKey('transferEnabled') ? l$transferEnabled : const {},
      _$data.containsKey('transferInterval') ? l$transferInterval : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

class Input$PostPreVendaCardapioInput {
  factory Input$PostPreVendaCardapioInput({
    required int cardapio,
    required int evento,
    required int preVenda,
    required int quantidade,
    required double valorTotal,
    required double valorUnitario,
  }) => Input$PostPreVendaCardapioInput._({
    r'cardapio': cardapio,
    r'evento': evento,
    r'preVenda': preVenda,
    r'quantidade': quantidade,
    r'valorTotal': valorTotal,
    r'valorUnitario': valorUnitario,
  });

  Input$PostPreVendaCardapioInput._(this._$data);

  factory Input$PostPreVendaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cardapio = data['cardapio'];
    result$data['cardapio'] = (l$cardapio as int);
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$preVenda = data['preVenda'];
    result$data['preVenda'] = (l$preVenda as int);
    final l$quantidade = data['quantidade'];
    result$data['quantidade'] = (l$quantidade as int);
    final l$valorTotal = data['valorTotal'];
    result$data['valorTotal'] = (l$valorTotal as num).toDouble();
    final l$valorUnitario = data['valorUnitario'];
    result$data['valorUnitario'] = (l$valorUnitario as num).toDouble();
    return Input$PostPreVendaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get cardapio => (_$data['cardapio'] as int);

  int get evento => (_$data['evento'] as int);

  int get preVenda => (_$data['preVenda'] as int);

  int get quantidade => (_$data['quantidade'] as int);

  double get valorTotal => (_$data['valorTotal'] as double);

  double get valorUnitario => (_$data['valorUnitario'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cardapio = cardapio;
    result$data['cardapio'] = l$cardapio;
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$preVenda = preVenda;
    result$data['preVenda'] = l$preVenda;
    final l$quantidade = quantidade;
    result$data['quantidade'] = l$quantidade;
    final l$valorTotal = valorTotal;
    result$data['valorTotal'] = l$valorTotal;
    final l$valorUnitario = valorUnitario;
    result$data['valorUnitario'] = l$valorUnitario;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostPreVendaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$evento = evento;
    final l$preVenda = preVenda;
    final l$quantidade = quantidade;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    return Object.hashAll([
      l$cardapio,
      l$evento,
      l$preVenda,
      l$quantidade,
      l$valorTotal,
      l$valorUnitario,
    ]);
  }
}

class Input$PostPreVendaIngressoInput {
  factory Input$PostPreVendaIngressoInput({
    required int evento,
    required int ingresso,
    required int preVenda,
    required int quantidade,
    required double valorTotal,
    required double valorUnitario,
  }) => Input$PostPreVendaIngressoInput._({
    r'evento': evento,
    r'ingresso': ingresso,
    r'preVenda': preVenda,
    r'quantidade': quantidade,
    r'valorTotal': valorTotal,
    r'valorUnitario': valorUnitario,
  });

  Input$PostPreVendaIngressoInput._(this._$data);

  factory Input$PostPreVendaIngressoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$ingresso = data['ingresso'];
    result$data['ingresso'] = (l$ingresso as int);
    final l$preVenda = data['preVenda'];
    result$data['preVenda'] = (l$preVenda as int);
    final l$quantidade = data['quantidade'];
    result$data['quantidade'] = (l$quantidade as int);
    final l$valorTotal = data['valorTotal'];
    result$data['valorTotal'] = (l$valorTotal as num).toDouble();
    final l$valorUnitario = data['valorUnitario'];
    result$data['valorUnitario'] = (l$valorUnitario as num).toDouble();
    return Input$PostPreVendaIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get ingresso => (_$data['ingresso'] as int);

  int get preVenda => (_$data['preVenda'] as int);

  int get quantidade => (_$data['quantidade'] as int);

  double get valorTotal => (_$data['valorTotal'] as double);

  double get valorUnitario => (_$data['valorUnitario'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$ingresso = ingresso;
    result$data['ingresso'] = l$ingresso;
    final l$preVenda = preVenda;
    result$data['preVenda'] = l$preVenda;
    final l$quantidade = quantidade;
    result$data['quantidade'] = l$quantidade;
    final l$valorTotal = valorTotal;
    result$data['valorTotal'] = l$valorTotal;
    final l$valorUnitario = valorUnitario;
    result$data['valorUnitario'] = l$valorUnitario;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostPreVendaIngressoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$ingresso = ingresso;
    final l$preVenda = preVenda;
    final l$quantidade = quantidade;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    return Object.hashAll([
      l$evento,
      l$ingresso,
      l$preVenda,
      l$quantidade,
      l$valorTotal,
      l$valorUnitario,
    ]);
  }
}

class Input$PostPreVendaInput {
  factory Input$PostPreVendaInput({
    required int evento,
    required int inativo,
    required int pessoa,
    required int status,
    required int tipo,
    required double valor,
  }) => Input$PostPreVendaInput._({
    r'evento': evento,
    r'inativo': inativo,
    r'pessoa': pessoa,
    r'status': status,
    r'tipo': tipo,
    r'valor': valor,
  });

  Input$PostPreVendaInput._(this._$data);

  factory Input$PostPreVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$inativo = data['inativo'];
    result$data['inativo'] = (l$inativo as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$status = data['status'];
    result$data['status'] = (l$status as int);
    final l$tipo = data['tipo'];
    result$data['tipo'] = (l$tipo as int);
    final l$valor = data['valor'];
    result$data['valor'] = (l$valor as num).toDouble();
    return Input$PostPreVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get inativo => (_$data['inativo'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  int get status => (_$data['status'] as int);

  int get tipo => (_$data['tipo'] as int);

  double get valor => (_$data['valor'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$inativo = inativo;
    result$data['inativo'] = l$inativo;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$status = status;
    result$data['status'] = l$status;
    final l$tipo = tipo;
    result$data['tipo'] = l$tipo;
    final l$valor = valor;
    result$data['valor'] = l$valor;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostPreVendaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$inativo = inativo;
    final l$pessoa = pessoa;
    final l$status = status;
    final l$tipo = tipo;
    final l$valor = valor;
    return Object.hashAll([
      l$evento,
      l$inativo,
      l$pessoa,
      l$status,
      l$tipo,
      l$valor,
    ]);
  }
}

class Input$PostPreVendaPessoaInput {
  factory Input$PostPreVendaPessoaInput({
    required int pessoaCartao,
    required int pessoaEnvia,
    required int pessoaRecebe,
    required int preVenda,
    required int tipo,
  }) => Input$PostPreVendaPessoaInput._({
    r'pessoaCartao': pessoaCartao,
    r'pessoaEnvia': pessoaEnvia,
    r'pessoaRecebe': pessoaRecebe,
    r'preVenda': preVenda,
    r'tipo': tipo,
  });

  Input$PostPreVendaPessoaInput._(this._$data);

  factory Input$PostPreVendaPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$pessoaCartao = data['pessoaCartao'];
    result$data['pessoaCartao'] = (l$pessoaCartao as int);
    final l$pessoaEnvia = data['pessoaEnvia'];
    result$data['pessoaEnvia'] = (l$pessoaEnvia as int);
    final l$pessoaRecebe = data['pessoaRecebe'];
    result$data['pessoaRecebe'] = (l$pessoaRecebe as int);
    final l$preVenda = data['preVenda'];
    result$data['preVenda'] = (l$preVenda as int);
    final l$tipo = data['tipo'];
    result$data['tipo'] = (l$tipo as int);
    return Input$PostPreVendaPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get pessoaCartao => (_$data['pessoaCartao'] as int);

  int get pessoaEnvia => (_$data['pessoaEnvia'] as int);

  int get pessoaRecebe => (_$data['pessoaRecebe'] as int);

  int get preVenda => (_$data['preVenda'] as int);

  int get tipo => (_$data['tipo'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$pessoaCartao = pessoaCartao;
    result$data['pessoaCartao'] = l$pessoaCartao;
    final l$pessoaEnvia = pessoaEnvia;
    result$data['pessoaEnvia'] = l$pessoaEnvia;
    final l$pessoaRecebe = pessoaRecebe;
    result$data['pessoaRecebe'] = l$pessoaRecebe;
    final l$preVenda = preVenda;
    result$data['preVenda'] = l$preVenda;
    final l$tipo = tipo;
    result$data['tipo'] = l$tipo;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostPreVendaPessoaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pessoaCartao = pessoaCartao;
    final lOther$pessoaCartao = other.pessoaCartao;
    if (l$pessoaCartao != lOther$pessoaCartao) {
      return false;
    }
    final l$pessoaEnvia = pessoaEnvia;
    final lOther$pessoaEnvia = other.pessoaEnvia;
    if (l$pessoaEnvia != lOther$pessoaEnvia) {
      return false;
    }
    final l$pessoaRecebe = pessoaRecebe;
    final lOther$pessoaRecebe = other.pessoaRecebe;
    if (l$pessoaRecebe != lOther$pessoaRecebe) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pessoaCartao = pessoaCartao;
    final l$pessoaEnvia = pessoaEnvia;
    final l$pessoaRecebe = pessoaRecebe;
    final l$preVenda = preVenda;
    final l$tipo = tipo;
    return Object.hashAll([
      l$pessoaCartao,
      l$pessoaEnvia,
      l$pessoaRecebe,
      l$preVenda,
      l$tipo,
    ]);
  }
}

class Input$PostSeguindoInput {
  factory Input$PostSeguindoInput({
    required int pessoa,
    required int pessoaSeguida,
  }) => Input$PostSeguindoInput._({
    r'pessoa': pessoa,
    r'pessoaSeguida': pessoaSeguida,
  });

  Input$PostSeguindoInput._(this._$data);

  factory Input$PostSeguindoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$pessoaSeguida = data['pessoaSeguida'];
    result$data['pessoaSeguida'] = (l$pessoaSeguida as int);
    return Input$PostSeguindoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get pessoa => (_$data['pessoa'] as int);

  int get pessoaSeguida => (_$data['pessoaSeguida'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$pessoaSeguida = pessoaSeguida;
    result$data['pessoaSeguida'] = l$pessoaSeguida;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostSeguindoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$pessoaSeguida = pessoaSeguida;
    final lOther$pessoaSeguida = other.pessoaSeguida;
    if (l$pessoaSeguida != lOther$pessoaSeguida) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pessoa = pessoa;
    final l$pessoaSeguida = pessoaSeguida;
    return Object.hashAll([l$pessoa, l$pessoaSeguida]);
  }
}

class Input$PostSolicitacaoTransferenciaIngressoInput {
  factory Input$PostSolicitacaoTransferenciaIngressoInput({
    required int evento,
    required int ingresso,
    required int ingressoPessoaEvento,
    required int pessoaEnvia,
    required int pessoaRecebe,
    required int status,
  }) => Input$PostSolicitacaoTransferenciaIngressoInput._({
    r'evento': evento,
    r'ingresso': ingresso,
    r'ingressoPessoaEvento': ingressoPessoaEvento,
    r'pessoaEnvia': pessoaEnvia,
    r'pessoaRecebe': pessoaRecebe,
    r'status': status,
  });

  Input$PostSolicitacaoTransferenciaIngressoInput._(this._$data);

  factory Input$PostSolicitacaoTransferenciaIngressoInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$ingresso = data['ingresso'];
    result$data['ingresso'] = (l$ingresso as int);
    final l$ingressoPessoaEvento = data['ingressoPessoaEvento'];
    result$data['ingressoPessoaEvento'] = (l$ingressoPessoaEvento as int);
    final l$pessoaEnvia = data['pessoaEnvia'];
    result$data['pessoaEnvia'] = (l$pessoaEnvia as int);
    final l$pessoaRecebe = data['pessoaRecebe'];
    result$data['pessoaRecebe'] = (l$pessoaRecebe as int);
    final l$status = data['status'];
    result$data['status'] = (l$status as int);
    return Input$PostSolicitacaoTransferenciaIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get ingresso => (_$data['ingresso'] as int);

  int get ingressoPessoaEvento => (_$data['ingressoPessoaEvento'] as int);

  int get pessoaEnvia => (_$data['pessoaEnvia'] as int);

  int get pessoaRecebe => (_$data['pessoaRecebe'] as int);

  int get status => (_$data['status'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$ingresso = ingresso;
    result$data['ingresso'] = l$ingresso;
    final l$ingressoPessoaEvento = ingressoPessoaEvento;
    result$data['ingressoPessoaEvento'] = l$ingressoPessoaEvento;
    final l$pessoaEnvia = pessoaEnvia;
    result$data['pessoaEnvia'] = l$pessoaEnvia;
    final l$pessoaRecebe = pessoaRecebe;
    result$data['pessoaRecebe'] = l$pessoaRecebe;
    final l$status = status;
    result$data['status'] = l$status;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostSolicitacaoTransferenciaIngressoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$ingressoPessoaEvento = ingressoPessoaEvento;
    final lOther$ingressoPessoaEvento = other.ingressoPessoaEvento;
    if (l$ingressoPessoaEvento != lOther$ingressoPessoaEvento) {
      return false;
    }
    final l$pessoaEnvia = pessoaEnvia;
    final lOther$pessoaEnvia = other.pessoaEnvia;
    if (l$pessoaEnvia != lOther$pessoaEnvia) {
      return false;
    }
    final l$pessoaRecebe = pessoaRecebe;
    final lOther$pessoaRecebe = other.pessoaRecebe;
    if (l$pessoaRecebe != lOther$pessoaRecebe) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$ingresso = ingresso;
    final l$ingressoPessoaEvento = ingressoPessoaEvento;
    final l$pessoaEnvia = pessoaEnvia;
    final l$pessoaRecebe = pessoaRecebe;
    final l$status = status;
    return Object.hashAll([
      l$evento,
      l$ingresso,
      l$ingressoPessoaEvento,
      l$pessoaEnvia,
      l$pessoaRecebe,
      l$status,
    ]);
  }
}

class Input$PostStorieInput {
  factory Input$PostStorieInput({
    required String arquivo,
    required int tempo,
    int? tipo,
  }) => Input$PostStorieInput._({
    r'arquivo': arquivo,
    r'tempo': tempo,
    if (tipo != null) r'tipo': tipo,
  });

  Input$PostStorieInput._(this._$data);

  factory Input$PostStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$arquivo = data['arquivo'];
    result$data['arquivo'] = (l$arquivo as String);
    final l$tempo = data['tempo'];
    result$data['tempo'] = (l$tempo as int);
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    return Input$PostStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get arquivo => (_$data['arquivo'] as String);

  int get tempo => (_$data['tempo'] as int);

  int? get tipo => (_$data['tipo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arquivo = arquivo;
    result$data['arquivo'] = l$arquivo;
    final l$tempo = tempo;
    result$data['tempo'] = l$tempo;
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostStorieInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$arquivo = arquivo;
    final lOther$arquivo = other.arquivo;
    if (l$arquivo != lOther$arquivo) {
      return false;
    }
    final l$tempo = tempo;
    final lOther$tempo = other.tempo;
    if (l$tempo != lOther$tempo) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arquivo = arquivo;
    final l$tempo = tempo;
    final l$tipo = tipo;
    return Object.hashAll([
      l$arquivo,
      l$tempo,
      _$data.containsKey('tipo') ? l$tipo : const {},
    ]);
  }
}

class Input$PostVendaCardapioInput {
  factory Input$PostVendaCardapioInput({
    required int cardapio,
    required int evento,
    required int pessoa,
    required int quantidade,
    required double valorEvento,
    required double valorFastPay,
    required double valorTotal,
    required double valorUnitario,
    required int venda,
  }) => Input$PostVendaCardapioInput._({
    r'cardapio': cardapio,
    r'evento': evento,
    r'pessoa': pessoa,
    r'quantidade': quantidade,
    r'valorEvento': valorEvento,
    r'valorFastPay': valorFastPay,
    r'valorTotal': valorTotal,
    r'valorUnitario': valorUnitario,
    r'venda': venda,
  });

  Input$PostVendaCardapioInput._(this._$data);

  factory Input$PostVendaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cardapio = data['cardapio'];
    result$data['cardapio'] = (l$cardapio as int);
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$quantidade = data['quantidade'];
    result$data['quantidade'] = (l$quantidade as int);
    final l$valorEvento = data['valorEvento'];
    result$data['valorEvento'] = (l$valorEvento as num).toDouble();
    final l$valorFastPay = data['valorFastPay'];
    result$data['valorFastPay'] = (l$valorFastPay as num).toDouble();
    final l$valorTotal = data['valorTotal'];
    result$data['valorTotal'] = (l$valorTotal as num).toDouble();
    final l$valorUnitario = data['valorUnitario'];
    result$data['valorUnitario'] = (l$valorUnitario as num).toDouble();
    final l$venda = data['venda'];
    result$data['venda'] = (l$venda as int);
    return Input$PostVendaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get cardapio => (_$data['cardapio'] as int);

  int get evento => (_$data['evento'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  int get quantidade => (_$data['quantidade'] as int);

  double get valorEvento => (_$data['valorEvento'] as double);

  double get valorFastPay => (_$data['valorFastPay'] as double);

  double get valorTotal => (_$data['valorTotal'] as double);

  double get valorUnitario => (_$data['valorUnitario'] as double);

  int get venda => (_$data['venda'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cardapio = cardapio;
    result$data['cardapio'] = l$cardapio;
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$quantidade = quantidade;
    result$data['quantidade'] = l$quantidade;
    final l$valorEvento = valorEvento;
    result$data['valorEvento'] = l$valorEvento;
    final l$valorFastPay = valorFastPay;
    result$data['valorFastPay'] = l$valorFastPay;
    final l$valorTotal = valorTotal;
    result$data['valorTotal'] = l$valorTotal;
    final l$valorUnitario = valorUnitario;
    result$data['valorUnitario'] = l$valorUnitario;
    final l$venda = venda;
    result$data['venda'] = l$venda;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostVendaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorEvento = valorEvento;
    final lOther$valorEvento = other.valorEvento;
    if (l$valorEvento != lOther$valorEvento) {
      return false;
    }
    final l$valorFastPay = valorFastPay;
    final lOther$valorFastPay = other.valorFastPay;
    if (l$valorFastPay != lOther$valorFastPay) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    final l$venda = venda;
    final lOther$venda = other.venda;
    if (l$venda != lOther$venda) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$evento = evento;
    final l$pessoa = pessoa;
    final l$quantidade = quantidade;
    final l$valorEvento = valorEvento;
    final l$valorFastPay = valorFastPay;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    final l$venda = venda;
    return Object.hashAll([
      l$cardapio,
      l$evento,
      l$pessoa,
      l$quantidade,
      l$valorEvento,
      l$valorFastPay,
      l$valorTotal,
      l$valorUnitario,
      l$venda,
    ]);
  }
}

class Input$PostVendaInput {
  factory Input$PostVendaInput({
    int? cortesia,
    int? cupomDesconto,
    required int evento,
    int? idCortesia,
    String? idPagarme,
    required int pessoa,
    int? preVenda,
    String? qrcode,
    String? qrcodeUrl,
    int? solicitacaoTransferenciaIngresso,
    required int tipo,
    required int tipoPagamento,
    required double valor,
  }) => Input$PostVendaInput._({
    if (cortesia != null) r'cortesia': cortesia,
    if (cupomDesconto != null) r'cupomDesconto': cupomDesconto,
    r'evento': evento,
    if (idCortesia != null) r'idCortesia': idCortesia,
    if (idPagarme != null) r'idPagarme': idPagarme,
    r'pessoa': pessoa,
    if (preVenda != null) r'preVenda': preVenda,
    if (qrcode != null) r'qrcode': qrcode,
    if (qrcodeUrl != null) r'qrcodeUrl': qrcodeUrl,
    if (solicitacaoTransferenciaIngresso != null)
      r'solicitacaoTransferenciaIngresso': solicitacaoTransferenciaIngresso,
    r'tipo': tipo,
    r'tipoPagamento': tipoPagamento,
    r'valor': valor,
  });

  Input$PostVendaInput._(this._$data);

  factory Input$PostVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cortesia')) {
      final l$cortesia = data['cortesia'];
      result$data['cortesia'] = (l$cortesia as int?);
    }
    if (data.containsKey('cupomDesconto')) {
      final l$cupomDesconto = data['cupomDesconto'];
      result$data['cupomDesconto'] = (l$cupomDesconto as int?);
    }
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    if (data.containsKey('idCortesia')) {
      final l$idCortesia = data['idCortesia'];
      result$data['idCortesia'] = (l$idCortesia as int?);
    }
    if (data.containsKey('idPagarme')) {
      final l$idPagarme = data['idPagarme'];
      result$data['idPagarme'] = (l$idPagarme as String?);
    }
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    if (data.containsKey('preVenda')) {
      final l$preVenda = data['preVenda'];
      result$data['preVenda'] = (l$preVenda as int?);
    }
    if (data.containsKey('qrcode')) {
      final l$qrcode = data['qrcode'];
      result$data['qrcode'] = (l$qrcode as String?);
    }
    if (data.containsKey('qrcodeUrl')) {
      final l$qrcodeUrl = data['qrcodeUrl'];
      result$data['qrcodeUrl'] = (l$qrcodeUrl as String?);
    }
    if (data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          data['solicitacaoTransferenciaIngresso'];
      result$data['solicitacaoTransferenciaIngresso'] =
          (l$solicitacaoTransferenciaIngresso as int?);
    }
    final l$tipo = data['tipo'];
    result$data['tipo'] = (l$tipo as int);
    final l$tipoPagamento = data['tipoPagamento'];
    result$data['tipoPagamento'] = (l$tipoPagamento as int);
    final l$valor = data['valor'];
    result$data['valor'] = (l$valor as num).toDouble();
    return Input$PostVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cortesia => (_$data['cortesia'] as int?);

  int? get cupomDesconto => (_$data['cupomDesconto'] as int?);

  int get evento => (_$data['evento'] as int);

  int? get idCortesia => (_$data['idCortesia'] as int?);

  String? get idPagarme => (_$data['idPagarme'] as String?);

  int get pessoa => (_$data['pessoa'] as int);

  int? get preVenda => (_$data['preVenda'] as int?);

  String? get qrcode => (_$data['qrcode'] as String?);

  String? get qrcodeUrl => (_$data['qrcodeUrl'] as String?);

  int? get solicitacaoTransferenciaIngresso =>
      (_$data['solicitacaoTransferenciaIngresso'] as int?);

  int get tipo => (_$data['tipo'] as int);

  int get tipoPagamento => (_$data['tipoPagamento'] as int);

  double get valor => (_$data['valor'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cortesia')) {
      final l$cortesia = cortesia;
      result$data['cortesia'] = l$cortesia;
    }
    if (_$data.containsKey('cupomDesconto')) {
      final l$cupomDesconto = cupomDesconto;
      result$data['cupomDesconto'] = l$cupomDesconto;
    }
    final l$evento = evento;
    result$data['evento'] = l$evento;
    if (_$data.containsKey('idCortesia')) {
      final l$idCortesia = idCortesia;
      result$data['idCortesia'] = l$idCortesia;
    }
    if (_$data.containsKey('idPagarme')) {
      final l$idPagarme = idPagarme;
      result$data['idPagarme'] = l$idPagarme;
    }
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    if (_$data.containsKey('preVenda')) {
      final l$preVenda = preVenda;
      result$data['preVenda'] = l$preVenda;
    }
    if (_$data.containsKey('qrcode')) {
      final l$qrcode = qrcode;
      result$data['qrcode'] = l$qrcode;
    }
    if (_$data.containsKey('qrcodeUrl')) {
      final l$qrcodeUrl = qrcodeUrl;
      result$data['qrcodeUrl'] = l$qrcodeUrl;
    }
    if (_$data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          solicitacaoTransferenciaIngresso;
      result$data['solicitacaoTransferenciaIngresso'] =
          l$solicitacaoTransferenciaIngresso;
    }
    final l$tipo = tipo;
    result$data['tipo'] = l$tipo;
    final l$tipoPagamento = tipoPagamento;
    result$data['tipoPagamento'] = l$tipoPagamento;
    final l$valor = valor;
    result$data['valor'] = l$valor;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostVendaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cortesia = cortesia;
    final lOther$cortesia = other.cortesia;
    if (_$data.containsKey('cortesia') !=
        other._$data.containsKey('cortesia')) {
      return false;
    }
    if (l$cortesia != lOther$cortesia) {
      return false;
    }
    final l$cupomDesconto = cupomDesconto;
    final lOther$cupomDesconto = other.cupomDesconto;
    if (_$data.containsKey('cupomDesconto') !=
        other._$data.containsKey('cupomDesconto')) {
      return false;
    }
    if (l$cupomDesconto != lOther$cupomDesconto) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$idCortesia = idCortesia;
    final lOther$idCortesia = other.idCortesia;
    if (_$data.containsKey('idCortesia') !=
        other._$data.containsKey('idCortesia')) {
      return false;
    }
    if (l$idCortesia != lOther$idCortesia) {
      return false;
    }
    final l$idPagarme = idPagarme;
    final lOther$idPagarme = other.idPagarme;
    if (_$data.containsKey('idPagarme') !=
        other._$data.containsKey('idPagarme')) {
      return false;
    }
    if (l$idPagarme != lOther$idPagarme) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (_$data.containsKey('preVenda') !=
        other._$data.containsKey('preVenda')) {
      return false;
    }
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$qrcode = qrcode;
    final lOther$qrcode = other.qrcode;
    if (_$data.containsKey('qrcode') != other._$data.containsKey('qrcode')) {
      return false;
    }
    if (l$qrcode != lOther$qrcode) {
      return false;
    }
    final l$qrcodeUrl = qrcodeUrl;
    final lOther$qrcodeUrl = other.qrcodeUrl;
    if (_$data.containsKey('qrcodeUrl') !=
        other._$data.containsKey('qrcodeUrl')) {
      return false;
    }
    if (l$qrcodeUrl != lOther$qrcodeUrl) {
      return false;
    }
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final lOther$solicitacaoTransferenciaIngresso =
        other.solicitacaoTransferenciaIngresso;
    if (_$data.containsKey('solicitacaoTransferenciaIngresso') !=
        other._$data.containsKey('solicitacaoTransferenciaIngresso')) {
      return false;
    }
    if (l$solicitacaoTransferenciaIngresso !=
        lOther$solicitacaoTransferenciaIngresso) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$tipoPagamento = tipoPagamento;
    final lOther$tipoPagamento = other.tipoPagamento;
    if (l$tipoPagamento != lOther$tipoPagamento) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cortesia = cortesia;
    final l$cupomDesconto = cupomDesconto;
    final l$evento = evento;
    final l$idCortesia = idCortesia;
    final l$idPagarme = idPagarme;
    final l$pessoa = pessoa;
    final l$preVenda = preVenda;
    final l$qrcode = qrcode;
    final l$qrcodeUrl = qrcodeUrl;
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final l$tipo = tipo;
    final l$tipoPagamento = tipoPagamento;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('cortesia') ? l$cortesia : const {},
      _$data.containsKey('cupomDesconto') ? l$cupomDesconto : const {},
      l$evento,
      _$data.containsKey('idCortesia') ? l$idCortesia : const {},
      _$data.containsKey('idPagarme') ? l$idPagarme : const {},
      l$pessoa,
      _$data.containsKey('preVenda') ? l$preVenda : const {},
      _$data.containsKey('qrcode') ? l$qrcode : const {},
      _$data.containsKey('qrcodeUrl') ? l$qrcodeUrl : const {},
      _$data.containsKey('solicitacaoTransferenciaIngresso')
          ? l$solicitacaoTransferenciaIngresso
          : const {},
      l$tipo,
      l$tipoPagamento,
      l$valor,
    ]);
  }
}

class Input$PostVisualizouStorieInput {
  factory Input$PostVisualizouStorieInput({
    required int pessoa,
    required int stories,
  }) => Input$PostVisualizouStorieInput._({
    r'pessoa': pessoa,
    r'stories': stories,
  });

  Input$PostVisualizouStorieInput._(this._$data);

  factory Input$PostVisualizouStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$stories = data['stories'];
    result$data['stories'] = (l$stories as int);
    return Input$PostVisualizouStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get pessoa => (_$data['pessoa'] as int);

  int get stories => (_$data['stories'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$stories = stories;
    result$data['stories'] = l$stories;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostVisualizouStorieInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$stories = stories;
    final lOther$stories = other.stories;
    if (l$stories != lOther$stories) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pessoa = pessoa;
    final l$stories = stories;
    return Object.hashAll([l$pessoa, l$stories]);
  }
}

class Input$PutBancoInput {
  factory Input$PutBancoInput({
    required int id,
    String? nome,
    double? numBanco,
    String? site,
  }) => Input$PutBancoInput._({
    r'id': id,
    if (nome != null) r'nome': nome,
    if (numBanco != null) r'numBanco': numBanco,
    if (site != null) r'site': site,
  });

  Input$PutBancoInput._(this._$data);

  factory Input$PutBancoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('numBanco')) {
      final l$numBanco = data['numBanco'];
      result$data['numBanco'] = (l$numBanco as num?)?.toDouble();
    }
    if (data.containsKey('site')) {
      final l$site = data['site'];
      result$data['site'] = (l$site as String?);
    }
    return Input$PutBancoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get nome => (_$data['nome'] as String?);

  double? get numBanco => (_$data['numBanco'] as double?);

  String? get site => (_$data['site'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('numBanco')) {
      final l$numBanco = numBanco;
      result$data['numBanco'] = l$numBanco;
    }
    if (_$data.containsKey('site')) {
      final l$site = site;
      result$data['site'] = l$site;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutBancoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numBanco = numBanco;
    final lOther$numBanco = other.numBanco;
    if (_$data.containsKey('numBanco') !=
        other._$data.containsKey('numBanco')) {
      return false;
    }
    if (l$numBanco != lOther$numBanco) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (_$data.containsKey('site') != other._$data.containsKey('site')) {
      return false;
    }
    if (l$site != lOther$site) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    final l$numBanco = numBanco;
    final l$site = site;
    return Object.hashAll([
      l$id,
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('numBanco') ? l$numBanco : const {},
      _$data.containsKey('site') ? l$site : const {},
    ]);
  }
}

class Input$PutCardapioInput {
  factory Input$PutCardapioInput({
    int? categoriaCardapio,
    String? descricao,
    required int id,
    String? imagem,
    int? inativo,
    String? nome,
    int? quantidade,
    double? valor,
  }) => Input$PutCardapioInput._({
    if (categoriaCardapio != null) r'categoriaCardapio': categoriaCardapio,
    if (descricao != null) r'descricao': descricao,
    r'id': id,
    if (imagem != null) r'imagem': imagem,
    if (inativo != null) r'inativo': inativo,
    if (nome != null) r'nome': nome,
    if (quantidade != null) r'quantidade': quantidade,
    if (valor != null) r'valor': valor,
  });

  Input$PutCardapioInput._(this._$data);

  factory Input$PutCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('categoriaCardapio')) {
      final l$categoriaCardapio = data['categoriaCardapio'];
      result$data['categoriaCardapio'] = (l$categoriaCardapio as int?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$PutCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get categoriaCardapio => (_$data['categoriaCardapio'] as int?);

  String? get descricao => (_$data['descricao'] as String?);

  int get id => (_$data['id'] as int);

  String? get imagem => (_$data['imagem'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get nome => (_$data['nome'] as String?);

  int? get quantidade => (_$data['quantidade'] as int?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('categoriaCardapio')) {
      final l$categoriaCardapio = categoriaCardapio;
      result$data['categoriaCardapio'] = l$categoriaCardapio;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutCardapioInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categoriaCardapio = categoriaCardapio;
    final lOther$categoriaCardapio = other.categoriaCardapio;
    if (_$data.containsKey('categoriaCardapio') !=
        other._$data.containsKey('categoriaCardapio')) {
      return false;
    }
    if (l$categoriaCardapio != lOther$categoriaCardapio) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categoriaCardapio = categoriaCardapio;
    final l$descricao = descricao;
    final l$id = id;
    final l$imagem = imagem;
    final l$inativo = inativo;
    final l$nome = nome;
    final l$quantidade = quantidade;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('categoriaCardapio') ? l$categoriaCardapio : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      l$id,
      _$data.containsKey('imagem') ? l$imagem : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$PutCategoriaCardapioInput {
  factory Input$PutCategoriaCardapioInput({
    required int id,
    int? inativo,
    String? nome,
  }) => Input$PutCategoriaCardapioInput._({
    r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (nome != null) r'nome': nome,
  });

  Input$PutCategoriaCardapioInput._(this._$data);

  factory Input$PutCategoriaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    return Input$PutCategoriaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  String? get nome => (_$data['nome'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutCategoriaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$inativo = inativo;
    final l$nome = nome;
    return Object.hashAll([
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('nome') ? l$nome : const {},
    ]);
  }
}

class Input$PutCategoriaEventoInput {
  factory Input$PutCategoriaEventoInput({
    required int id,
    int? inativo,
    String? nome,
  }) => Input$PutCategoriaEventoInput._({
    r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (nome != null) r'nome': nome,
  });

  Input$PutCategoriaEventoInput._(this._$data);

  factory Input$PutCategoriaEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    return Input$PutCategoriaEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  String? get nome => (_$data['nome'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutCategoriaEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$inativo = inativo;
    final l$nome = nome;
    return Object.hashAll([
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('nome') ? l$nome : const {},
    ]);
  }
}

class Input$PutCidadeInput {
  factory Input$PutCidadeInput({
    required int estado,
    required int id,
    required String nome,
    required String nomeSem,
  }) => Input$PutCidadeInput._({
    r'estado': estado,
    r'id': id,
    r'nome': nome,
    r'nomeSem': nomeSem,
  });

  Input$PutCidadeInput._(this._$data);

  factory Input$PutCidadeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$estado = data['estado'];
    result$data['estado'] = (l$estado as int);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    final l$nomeSem = data['nomeSem'];
    result$data['nomeSem'] = (l$nomeSem as String);
    return Input$PutCidadeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get estado => (_$data['estado'] as int);

  int get id => (_$data['id'] as int);

  String get nome => (_$data['nome'] as String);

  String get nomeSem => (_$data['nomeSem'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$estado = estado;
    result$data['estado'] = l$estado;
    final l$id = id;
    result$data['id'] = l$id;
    final l$nome = nome;
    result$data['nome'] = l$nome;
    final l$nomeSem = nomeSem;
    result$data['nomeSem'] = l$nomeSem;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutCidadeInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (l$estado != lOther$estado) {
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
    final l$nomeSem = nomeSem;
    final lOther$nomeSem = other.nomeSem;
    if (l$nomeSem != lOther$nomeSem) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$estado = estado;
    final l$id = id;
    final l$nome = nome;
    final l$nomeSem = nomeSem;
    return Object.hashAll([l$estado, l$id, l$nome, l$nomeSem]);
  }
}

class Input$PutCortesiaInput {
  factory Input$PutCortesiaInput({
    required int evento,
    required int id,
    required int ingresso,
    required int pessoaRecebe,
    required String quantidade,
  }) => Input$PutCortesiaInput._({
    r'evento': evento,
    r'id': id,
    r'ingresso': ingresso,
    r'pessoaRecebe': pessoaRecebe,
    r'quantidade': quantidade,
  });

  Input$PutCortesiaInput._(this._$data);

  factory Input$PutCortesiaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$ingresso = data['ingresso'];
    result$data['ingresso'] = (l$ingresso as int);
    final l$pessoaRecebe = data['pessoaRecebe'];
    result$data['pessoaRecebe'] = (l$pessoaRecebe as int);
    final l$quantidade = data['quantidade'];
    result$data['quantidade'] = (l$quantidade as String);
    return Input$PutCortesiaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get id => (_$data['id'] as int);

  int get ingresso => (_$data['ingresso'] as int);

  int get pessoaRecebe => (_$data['pessoaRecebe'] as int);

  String get quantidade => (_$data['quantidade'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$id = id;
    result$data['id'] = l$id;
    final l$ingresso = ingresso;
    result$data['ingresso'] = l$ingresso;
    final l$pessoaRecebe = pessoaRecebe;
    result$data['pessoaRecebe'] = l$pessoaRecebe;
    final l$quantidade = quantidade;
    result$data['quantidade'] = l$quantidade;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutCortesiaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$pessoaRecebe = pessoaRecebe;
    final lOther$pessoaRecebe = other.pessoaRecebe;
    if (l$pessoaRecebe != lOther$pessoaRecebe) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$ingresso = ingresso;
    final l$pessoaRecebe = pessoaRecebe;
    final l$quantidade = quantidade;
    return Object.hashAll([
      l$evento,
      l$id,
      l$ingresso,
      l$pessoaRecebe,
      l$quantidade,
    ]);
  }
}

class Input$PutCupomDescontoInput {
  factory Input$PutCupomDescontoInput({
    required int id,
    int? inativo,
    int? limite,
  }) => Input$PutCupomDescontoInput._({
    r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (limite != null) r'limite': limite,
  });

  Input$PutCupomDescontoInput._(this._$data);

  factory Input$PutCupomDescontoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('limite')) {
      final l$limite = data['limite'];
      result$data['limite'] = (l$limite as int?);
    }
    return Input$PutCupomDescontoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  int? get limite => (_$data['limite'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('limite')) {
      final l$limite = limite;
      result$data['limite'] = l$limite;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutCupomDescontoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$limite = limite;
    final lOther$limite = other.limite;
    if (_$data.containsKey('limite') != other._$data.containsKey('limite')) {
      return false;
    }
    if (l$limite != lOther$limite) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$inativo = inativo;
    final l$limite = limite;
    return Object.hashAll([
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('limite') ? l$limite : const {},
    ]);
  }
}

class Input$PutCurtiuEventoInput {
  factory Input$PutCurtiuEventoInput({
    required int evento,
    required int id,
    required int pessoa,
  }) => Input$PutCurtiuEventoInput._({
    r'evento': evento,
    r'id': id,
    r'pessoa': pessoa,
  });

  Input$PutCurtiuEventoInput._(this._$data);

  factory Input$PutCurtiuEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    return Input$PutCurtiuEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get id => (_$data['id'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$id = id;
    result$data['id'] = l$id;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutCurtiuEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    return Object.hashAll([l$evento, l$id, l$pessoa]);
  }
}

class Input$PutCurtiuStorieInput {
  factory Input$PutCurtiuStorieInput({
    required int id,
    required int pessoa,
    int? stories,
  }) => Input$PutCurtiuStorieInput._({
    r'id': id,
    r'pessoa': pessoa,
    if (stories != null) r'stories': stories,
  });

  Input$PutCurtiuStorieInput._(this._$data);

  factory Input$PutCurtiuStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    if (data.containsKey('stories')) {
      final l$stories = data['stories'];
      result$data['stories'] = (l$stories as int?);
    }
    return Input$PutCurtiuStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  int? get stories => (_$data['stories'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    if (_$data.containsKey('stories')) {
      final l$stories = stories;
      result$data['stories'] = l$stories;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutCurtiuStorieInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$stories = stories;
    final lOther$stories = other.stories;
    if (_$data.containsKey('stories') != other._$data.containsKey('stories')) {
      return false;
    }
    if (l$stories != lOther$stories) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$pessoa = pessoa;
    final l$stories = stories;
    return Object.hashAll([
      l$id,
      l$pessoa,
      _$data.containsKey('stories') ? l$stories : const {},
    ]);
  }
}

class Input$PutEquipeEventoInput {
  factory Input$PutEquipeEventoInput({
    int? evento,
    required int id,
    int? pessoa,
    int? tipo,
  }) => Input$PutEquipeEventoInput._({
    if (evento != null) r'evento': evento,
    r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
    if (tipo != null) r'tipo': tipo,
  });

  Input$PutEquipeEventoInput._(this._$data);

  factory Input$PutEquipeEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    return Input$PutEquipeEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int get id => (_$data['id'] as int);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutEquipeEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    final l$tipo = tipo;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      l$id,
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
    ]);
  }
}

class Input$PutEstadoInput {
  factory Input$PutEstadoInput({
    required int id,
    String? nome,
    String? sigla,
  }) => Input$PutEstadoInput._({
    r'id': id,
    if (nome != null) r'nome': nome,
    if (sigla != null) r'sigla': sigla,
  });

  Input$PutEstadoInput._(this._$data);

  factory Input$PutEstadoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('sigla')) {
      final l$sigla = data['sigla'];
      result$data['sigla'] = (l$sigla as String?);
    }
    return Input$PutEstadoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get nome => (_$data['nome'] as String?);

  String? get sigla => (_$data['sigla'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('sigla')) {
      final l$sigla = sigla;
      result$data['sigla'] = l$sigla;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutEstadoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$sigla = sigla;
    final lOther$sigla = other.sigla;
    if (_$data.containsKey('sigla') != other._$data.containsKey('sigla')) {
      return false;
    }
    if (l$sigla != lOther$sigla) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nome = nome;
    final l$sigla = sigla;
    return Object.hashAll([
      l$id,
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('sigla') ? l$sigla : const {},
    ]);
  }
}

class Input$PutEventoInput {
  factory Input$PutEventoInput({
    String? bairro,
    int? categoriaEvento,
    String? cep,
    int? cidade,
    double? comissaoCardapio,
    double? comissaoIngresso,
    String? complemento,
    String? data,
    String? dataFim,
    String? descricao,
    int? estado,
    String? horario,
    required int id,
    String? imagem,
    int? inativo,
    String? latitude,
    String? local,
    String? logradouro,
    String? longitude,
    String? mapaEvento,
    String? nome,
    String? numero,
    int? status,
    int? vendaIngresso,
  }) => Input$PutEventoInput._({
    if (bairro != null) r'bairro': bairro,
    if (categoriaEvento != null) r'categoriaEvento': categoriaEvento,
    if (cep != null) r'cep': cep,
    if (cidade != null) r'cidade': cidade,
    if (comissaoCardapio != null) r'comissaoCardapio': comissaoCardapio,
    if (comissaoIngresso != null) r'comissaoIngresso': comissaoIngresso,
    if (complemento != null) r'complemento': complemento,
    if (data != null) r'data': data,
    if (dataFim != null) r'dataFim': dataFim,
    if (descricao != null) r'descricao': descricao,
    if (estado != null) r'estado': estado,
    if (horario != null) r'horario': horario,
    r'id': id,
    if (imagem != null) r'imagem': imagem,
    if (inativo != null) r'inativo': inativo,
    if (latitude != null) r'latitude': latitude,
    if (local != null) r'local': local,
    if (logradouro != null) r'logradouro': logradouro,
    if (longitude != null) r'longitude': longitude,
    if (mapaEvento != null) r'mapaEvento': mapaEvento,
    if (nome != null) r'nome': nome,
    if (numero != null) r'numero': numero,
    if (status != null) r'status': status,
    if (vendaIngresso != null) r'vendaIngresso': vendaIngresso,
  });

  Input$PutEventoInput._(this._$data);

  factory Input$PutEventoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('categoriaEvento')) {
      final l$categoriaEvento = data['categoriaEvento'];
      result$data['categoriaEvento'] = (l$categoriaEvento as int?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cidade')) {
      final l$cidade = data['cidade'];
      result$data['cidade'] = (l$cidade as int?);
    }
    if (data.containsKey('comissaoCardapio')) {
      final l$comissaoCardapio = data['comissaoCardapio'];
      result$data['comissaoCardapio'] = (l$comissaoCardapio as num?)
          ?.toDouble();
    }
    if (data.containsKey('comissaoIngresso')) {
      final l$comissaoIngresso = data['comissaoIngresso'];
      result$data['comissaoIngresso'] = (l$comissaoIngresso as num?)
          ?.toDouble();
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    if (data.containsKey('dataFim')) {
      final l$dataFim = data['dataFim'];
      result$data['dataFim'] = (l$dataFim as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as int?);
    }
    if (data.containsKey('horario')) {
      final l$horario = data['horario'];
      result$data['horario'] = (l$horario as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('imagem')) {
      final l$imagem = data['imagem'];
      result$data['imagem'] = (l$imagem as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = (l$latitude as String?);
    }
    if (data.containsKey('local')) {
      final l$local = data['local'];
      result$data['local'] = (l$local as String?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = (l$longitude as String?);
    }
    if (data.containsKey('mapaEvento')) {
      final l$mapaEvento = data['mapaEvento'];
      result$data['mapaEvento'] = (l$mapaEvento as String?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    if (data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = data['vendaIngresso'];
      result$data['vendaIngresso'] = (l$vendaIngresso as int?);
    }
    return Input$PutEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get bairro => (_$data['bairro'] as String?);

  int? get categoriaEvento => (_$data['categoriaEvento'] as int?);

  String? get cep => (_$data['cep'] as String?);

  int? get cidade => (_$data['cidade'] as int?);

  double? get comissaoCardapio => (_$data['comissaoCardapio'] as double?);

  double? get comissaoIngresso => (_$data['comissaoIngresso'] as double?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get data => (_$data['data'] as String?);

  String? get dataFim => (_$data['dataFim'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  int? get estado => (_$data['estado'] as int?);

  String? get horario => (_$data['horario'] as String?);

  int get id => (_$data['id'] as int);

  String? get imagem => (_$data['imagem'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get latitude => (_$data['latitude'] as String?);

  String? get local => (_$data['local'] as String?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get longitude => (_$data['longitude'] as String?);

  String? get mapaEvento => (_$data['mapaEvento'] as String?);

  String? get nome => (_$data['nome'] as String?);

  String? get numero => (_$data['numero'] as String?);

  int? get status => (_$data['status'] as int?);

  int? get vendaIngresso => (_$data['vendaIngresso'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('categoriaEvento')) {
      final l$categoriaEvento = categoriaEvento;
      result$data['categoriaEvento'] = l$categoriaEvento;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cidade')) {
      final l$cidade = cidade;
      result$data['cidade'] = l$cidade;
    }
    if (_$data.containsKey('comissaoCardapio')) {
      final l$comissaoCardapio = comissaoCardapio;
      result$data['comissaoCardapio'] = l$comissaoCardapio;
    }
    if (_$data.containsKey('comissaoIngresso')) {
      final l$comissaoIngresso = comissaoIngresso;
      result$data['comissaoIngresso'] = l$comissaoIngresso;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    if (_$data.containsKey('dataFim')) {
      final l$dataFim = dataFim;
      result$data['dataFim'] = l$dataFim;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('horario')) {
      final l$horario = horario;
      result$data['horario'] = l$horario;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('imagem')) {
      final l$imagem = imagem;
      result$data['imagem'] = l$imagem;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude;
    }
    if (_$data.containsKey('local')) {
      final l$local = local;
      result$data['local'] = l$local;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude;
    }
    if (_$data.containsKey('mapaEvento')) {
      final l$mapaEvento = mapaEvento;
      result$data['mapaEvento'] = l$mapaEvento;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('vendaIngresso')) {
      final l$vendaIngresso = vendaIngresso;
      result$data['vendaIngresso'] = l$vendaIngresso;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutEventoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$categoriaEvento = categoriaEvento;
    final lOther$categoriaEvento = other.categoriaEvento;
    if (_$data.containsKey('categoriaEvento') !=
        other._$data.containsKey('categoriaEvento')) {
      return false;
    }
    if (l$categoriaEvento != lOther$categoriaEvento) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (_$data.containsKey('cidade') != other._$data.containsKey('cidade')) {
      return false;
    }
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$comissaoCardapio = comissaoCardapio;
    final lOther$comissaoCardapio = other.comissaoCardapio;
    if (_$data.containsKey('comissaoCardapio') !=
        other._$data.containsKey('comissaoCardapio')) {
      return false;
    }
    if (l$comissaoCardapio != lOther$comissaoCardapio) {
      return false;
    }
    final l$comissaoIngresso = comissaoIngresso;
    final lOther$comissaoIngresso = other.comissaoIngresso;
    if (_$data.containsKey('comissaoIngresso') !=
        other._$data.containsKey('comissaoIngresso')) {
      return false;
    }
    if (l$comissaoIngresso != lOther$comissaoIngresso) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (_$data.containsKey('dataFim') != other._$data.containsKey('dataFim')) {
      return false;
    }
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$horario = horario;
    final lOther$horario = other.horario;
    if (_$data.containsKey('horario') != other._$data.containsKey('horario')) {
      return false;
    }
    if (l$horario != lOther$horario) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$imagem = imagem;
    final lOther$imagem = other.imagem;
    if (_$data.containsKey('imagem') != other._$data.containsKey('imagem')) {
      return false;
    }
    if (l$imagem != lOther$imagem) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$local = local;
    final lOther$local = other.local;
    if (_$data.containsKey('local') != other._$data.containsKey('local')) {
      return false;
    }
    if (l$local != lOther$local) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$mapaEvento = mapaEvento;
    final lOther$mapaEvento = other.mapaEvento;
    if (_$data.containsKey('mapaEvento') !=
        other._$data.containsKey('mapaEvento')) {
      return false;
    }
    if (l$mapaEvento != lOther$mapaEvento) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$vendaIngresso = vendaIngresso;
    final lOther$vendaIngresso = other.vendaIngresso;
    if (_$data.containsKey('vendaIngresso') !=
        other._$data.containsKey('vendaIngresso')) {
      return false;
    }
    if (l$vendaIngresso != lOther$vendaIngresso) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bairro = bairro;
    final l$categoriaEvento = categoriaEvento;
    final l$cep = cep;
    final l$cidade = cidade;
    final l$comissaoCardapio = comissaoCardapio;
    final l$comissaoIngresso = comissaoIngresso;
    final l$complemento = complemento;
    final l$data = data;
    final l$dataFim = dataFim;
    final l$descricao = descricao;
    final l$estado = estado;
    final l$horario = horario;
    final l$id = id;
    final l$imagem = imagem;
    final l$inativo = inativo;
    final l$latitude = latitude;
    final l$local = local;
    final l$logradouro = logradouro;
    final l$longitude = longitude;
    final l$mapaEvento = mapaEvento;
    final l$nome = nome;
    final l$numero = numero;
    final l$status = status;
    final l$vendaIngresso = vendaIngresso;
    return Object.hashAll([
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('categoriaEvento') ? l$categoriaEvento : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cidade') ? l$cidade : const {},
      _$data.containsKey('comissaoCardapio') ? l$comissaoCardapio : const {},
      _$data.containsKey('comissaoIngresso') ? l$comissaoIngresso : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('data') ? l$data : const {},
      _$data.containsKey('dataFim') ? l$dataFim : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('horario') ? l$horario : const {},
      l$id,
      _$data.containsKey('imagem') ? l$imagem : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('local') ? l$local : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('mapaEvento') ? l$mapaEvento : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('vendaIngresso') ? l$vendaIngresso : const {},
    ]);
  }
}

class Input$PutEventoVisualizacaoInput {
  factory Input$PutEventoVisualizacaoInput({
    int? evento,
    required int id,
    int? pessoa,
  }) => Input$PutEventoVisualizacaoInput._({
    if (evento != null) r'evento': evento,
    r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
  });

  Input$PutEventoVisualizacaoInput._(this._$data);

  factory Input$PutEventoVisualizacaoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    return Input$PutEventoVisualizacaoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int get id => (_$data['id'] as int);

  int? get pessoa => (_$data['pessoa'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutEventoVisualizacaoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      l$id,
      _$data.containsKey('pessoa') ? l$pessoa : const {},
    ]);
  }
}

class Input$PutIngressoCodigoInput {
  factory Input$PutIngressoCodigoInput({required int id, int? inativo}) =>
      Input$PutIngressoCodigoInput._({
        r'id': id,
        if (inativo != null) r'inativo': inativo,
      });

  Input$PutIngressoCodigoInput._(this._$data);

  factory Input$PutIngressoCodigoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    return Input$PutIngressoCodigoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutIngressoCodigoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$inativo = inativo;
    return Object.hashAll([
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
    ]);
  }
}

class Input$PutIngressoInput {
  factory Input$PutIngressoInput({
    String? codigo,
    String? data,
    String? descricao,
    required int id,
    int? inativo,
    int? limite,
    int? limitePorPessoa,
    int? loteId,
    String? nome,
    int? transferencia,
    double? valor,
  }) => Input$PutIngressoInput._({
    if (codigo != null) r'codigo': codigo,
    if (data != null) r'data': data,
    if (descricao != null) r'descricao': descricao,
    r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (limite != null) r'limite': limite,
    if (limitePorPessoa != null) r'limitePorPessoa': limitePorPessoa,
    if (loteId != null) r'loteId': loteId,
    if (nome != null) r'nome': nome,
    if (transferencia != null) r'transferencia': transferencia,
    if (valor != null) r'valor': valor,
  });

  Input$PutIngressoInput._(this._$data);

  factory Input$PutIngressoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('codigo')) {
      final l$codigo = data['codigo'];
      result$data['codigo'] = (l$codigo as String?);
    }
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = (l$data as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('limite')) {
      final l$limite = data['limite'];
      result$data['limite'] = (l$limite as int?);
    }
    if (data.containsKey('limitePorPessoa')) {
      final l$limitePorPessoa = data['limitePorPessoa'];
      result$data['limitePorPessoa'] = (l$limitePorPessoa as int?);
    }
    if (data.containsKey('loteId')) {
      final l$loteId = data['loteId'];
      result$data['loteId'] = (l$loteId as int?);
    }
    if (data.containsKey('nome')) {
      final l$nome = data['nome'];
      result$data['nome'] = (l$nome as String?);
    }
    if (data.containsKey('transferencia')) {
      final l$transferencia = data['transferencia'];
      result$data['transferencia'] = (l$transferencia as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$PutIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get codigo => (_$data['codigo'] as String?);

  String? get data => (_$data['data'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  int? get limite => (_$data['limite'] as int?);

  int? get limitePorPessoa => (_$data['limitePorPessoa'] as int?);

  int? get loteId => (_$data['loteId'] as int?);

  String? get nome => (_$data['nome'] as String?);

  int? get transferencia => (_$data['transferencia'] as int?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('codigo')) {
      final l$codigo = codigo;
      result$data['codigo'] = l$codigo;
    }
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('limite')) {
      final l$limite = limite;
      result$data['limite'] = l$limite;
    }
    if (_$data.containsKey('limitePorPessoa')) {
      final l$limitePorPessoa = limitePorPessoa;
      result$data['limitePorPessoa'] = l$limitePorPessoa;
    }
    if (_$data.containsKey('loteId')) {
      final l$loteId = loteId;
      result$data['loteId'] = l$loteId;
    }
    if (_$data.containsKey('nome')) {
      final l$nome = nome;
      result$data['nome'] = l$nome;
    }
    if (_$data.containsKey('transferencia')) {
      final l$transferencia = transferencia;
      result$data['transferencia'] = l$transferencia;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutIngressoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$codigo = codigo;
    final lOther$codigo = other.codigo;
    if (_$data.containsKey('codigo') != other._$data.containsKey('codigo')) {
      return false;
    }
    if (l$codigo != lOther$codigo) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$limite = limite;
    final lOther$limite = other.limite;
    if (_$data.containsKey('limite') != other._$data.containsKey('limite')) {
      return false;
    }
    if (l$limite != lOther$limite) {
      return false;
    }
    final l$limitePorPessoa = limitePorPessoa;
    final lOther$limitePorPessoa = other.limitePorPessoa;
    if (_$data.containsKey('limitePorPessoa') !=
        other._$data.containsKey('limitePorPessoa')) {
      return false;
    }
    if (l$limitePorPessoa != lOther$limitePorPessoa) {
      return false;
    }
    final l$loteId = loteId;
    final lOther$loteId = other.loteId;
    if (_$data.containsKey('loteId') != other._$data.containsKey('loteId')) {
      return false;
    }
    if (l$loteId != lOther$loteId) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (_$data.containsKey('nome') != other._$data.containsKey('nome')) {
      return false;
    }
    if (l$nome != lOther$nome) {
      return false;
    }
    final l$transferencia = transferencia;
    final lOther$transferencia = other.transferencia;
    if (_$data.containsKey('transferencia') !=
        other._$data.containsKey('transferencia')) {
      return false;
    }
    if (l$transferencia != lOther$transferencia) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$codigo = codigo;
    final l$data = data;
    final l$descricao = descricao;
    final l$id = id;
    final l$inativo = inativo;
    final l$limite = limite;
    final l$limitePorPessoa = limitePorPessoa;
    final l$loteId = loteId;
    final l$nome = nome;
    final l$transferencia = transferencia;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('codigo') ? l$codigo : const {},
      _$data.containsKey('data') ? l$data : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('limite') ? l$limite : const {},
      _$data.containsKey('limitePorPessoa') ? l$limitePorPessoa : const {},
      _$data.containsKey('loteId') ? l$loteId : const {},
      _$data.containsKey('nome') ? l$nome : const {},
      _$data.containsKey('transferencia') ? l$transferencia : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$PutIngressoPessoaEventoInput {
  factory Input$PutIngressoPessoaEventoInput({
    String? codigo,
    int? cortesia,
    required int id,
    int? idCortesia,
    int? solicitacaoTransferenciaIngresso,
    int? transferencia,
    String? transferidoEm,
    int? transferidoPara,
    int? utilizado,
    String? validadoEm,
    int? validadoPor,
  }) => Input$PutIngressoPessoaEventoInput._({
    if (codigo != null) r'codigo': codigo,
    if (cortesia != null) r'cortesia': cortesia,
    r'id': id,
    if (idCortesia != null) r'idCortesia': idCortesia,
    if (solicitacaoTransferenciaIngresso != null)
      r'solicitacaoTransferenciaIngresso': solicitacaoTransferenciaIngresso,
    if (transferencia != null) r'transferencia': transferencia,
    if (transferidoEm != null) r'transferidoEm': transferidoEm,
    if (transferidoPara != null) r'transferidoPara': transferidoPara,
    if (utilizado != null) r'utilizado': utilizado,
    if (validadoEm != null) r'validadoEm': validadoEm,
    if (validadoPor != null) r'validadoPor': validadoPor,
  });

  Input$PutIngressoPessoaEventoInput._(this._$data);

  factory Input$PutIngressoPessoaEventoInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('codigo')) {
      final l$codigo = data['codigo'];
      result$data['codigo'] = (l$codigo as String?);
    }
    if (data.containsKey('cortesia')) {
      final l$cortesia = data['cortesia'];
      result$data['cortesia'] = (l$cortesia as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('idCortesia')) {
      final l$idCortesia = data['idCortesia'];
      result$data['idCortesia'] = (l$idCortesia as int?);
    }
    if (data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          data['solicitacaoTransferenciaIngresso'];
      result$data['solicitacaoTransferenciaIngresso'] =
          (l$solicitacaoTransferenciaIngresso as int?);
    }
    if (data.containsKey('transferencia')) {
      final l$transferencia = data['transferencia'];
      result$data['transferencia'] = (l$transferencia as int?);
    }
    if (data.containsKey('transferidoEm')) {
      final l$transferidoEm = data['transferidoEm'];
      result$data['transferidoEm'] = (l$transferidoEm as String?);
    }
    if (data.containsKey('transferidoPara')) {
      final l$transferidoPara = data['transferidoPara'];
      result$data['transferidoPara'] = (l$transferidoPara as int?);
    }
    if (data.containsKey('utilizado')) {
      final l$utilizado = data['utilizado'];
      result$data['utilizado'] = (l$utilizado as int?);
    }
    if (data.containsKey('validadoEm')) {
      final l$validadoEm = data['validadoEm'];
      result$data['validadoEm'] = (l$validadoEm as String?);
    }
    if (data.containsKey('validadoPor')) {
      final l$validadoPor = data['validadoPor'];
      result$data['validadoPor'] = (l$validadoPor as int?);
    }
    return Input$PutIngressoPessoaEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get codigo => (_$data['codigo'] as String?);

  int? get cortesia => (_$data['cortesia'] as int?);

  int get id => (_$data['id'] as int);

  int? get idCortesia => (_$data['idCortesia'] as int?);

  int? get solicitacaoTransferenciaIngresso =>
      (_$data['solicitacaoTransferenciaIngresso'] as int?);

  int? get transferencia => (_$data['transferencia'] as int?);

  String? get transferidoEm => (_$data['transferidoEm'] as String?);

  int? get transferidoPara => (_$data['transferidoPara'] as int?);

  int? get utilizado => (_$data['utilizado'] as int?);

  String? get validadoEm => (_$data['validadoEm'] as String?);

  int? get validadoPor => (_$data['validadoPor'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('codigo')) {
      final l$codigo = codigo;
      result$data['codigo'] = l$codigo;
    }
    if (_$data.containsKey('cortesia')) {
      final l$cortesia = cortesia;
      result$data['cortesia'] = l$cortesia;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('idCortesia')) {
      final l$idCortesia = idCortesia;
      result$data['idCortesia'] = l$idCortesia;
    }
    if (_$data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          solicitacaoTransferenciaIngresso;
      result$data['solicitacaoTransferenciaIngresso'] =
          l$solicitacaoTransferenciaIngresso;
    }
    if (_$data.containsKey('transferencia')) {
      final l$transferencia = transferencia;
      result$data['transferencia'] = l$transferencia;
    }
    if (_$data.containsKey('transferidoEm')) {
      final l$transferidoEm = transferidoEm;
      result$data['transferidoEm'] = l$transferidoEm;
    }
    if (_$data.containsKey('transferidoPara')) {
      final l$transferidoPara = transferidoPara;
      result$data['transferidoPara'] = l$transferidoPara;
    }
    if (_$data.containsKey('utilizado')) {
      final l$utilizado = utilizado;
      result$data['utilizado'] = l$utilizado;
    }
    if (_$data.containsKey('validadoEm')) {
      final l$validadoEm = validadoEm;
      result$data['validadoEm'] = l$validadoEm;
    }
    if (_$data.containsKey('validadoPor')) {
      final l$validadoPor = validadoPor;
      result$data['validadoPor'] = l$validadoPor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutIngressoPessoaEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$codigo = codigo;
    final lOther$codigo = other.codigo;
    if (_$data.containsKey('codigo') != other._$data.containsKey('codigo')) {
      return false;
    }
    if (l$codigo != lOther$codigo) {
      return false;
    }
    final l$cortesia = cortesia;
    final lOther$cortesia = other.cortesia;
    if (_$data.containsKey('cortesia') !=
        other._$data.containsKey('cortesia')) {
      return false;
    }
    if (l$cortesia != lOther$cortesia) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$idCortesia = idCortesia;
    final lOther$idCortesia = other.idCortesia;
    if (_$data.containsKey('idCortesia') !=
        other._$data.containsKey('idCortesia')) {
      return false;
    }
    if (l$idCortesia != lOther$idCortesia) {
      return false;
    }
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final lOther$solicitacaoTransferenciaIngresso =
        other.solicitacaoTransferenciaIngresso;
    if (_$data.containsKey('solicitacaoTransferenciaIngresso') !=
        other._$data.containsKey('solicitacaoTransferenciaIngresso')) {
      return false;
    }
    if (l$solicitacaoTransferenciaIngresso !=
        lOther$solicitacaoTransferenciaIngresso) {
      return false;
    }
    final l$transferencia = transferencia;
    final lOther$transferencia = other.transferencia;
    if (_$data.containsKey('transferencia') !=
        other._$data.containsKey('transferencia')) {
      return false;
    }
    if (l$transferencia != lOther$transferencia) {
      return false;
    }
    final l$transferidoEm = transferidoEm;
    final lOther$transferidoEm = other.transferidoEm;
    if (_$data.containsKey('transferidoEm') !=
        other._$data.containsKey('transferidoEm')) {
      return false;
    }
    if (l$transferidoEm != lOther$transferidoEm) {
      return false;
    }
    final l$transferidoPara = transferidoPara;
    final lOther$transferidoPara = other.transferidoPara;
    if (_$data.containsKey('transferidoPara') !=
        other._$data.containsKey('transferidoPara')) {
      return false;
    }
    if (l$transferidoPara != lOther$transferidoPara) {
      return false;
    }
    final l$utilizado = utilizado;
    final lOther$utilizado = other.utilizado;
    if (_$data.containsKey('utilizado') !=
        other._$data.containsKey('utilizado')) {
      return false;
    }
    if (l$utilizado != lOther$utilizado) {
      return false;
    }
    final l$validadoEm = validadoEm;
    final lOther$validadoEm = other.validadoEm;
    if (_$data.containsKey('validadoEm') !=
        other._$data.containsKey('validadoEm')) {
      return false;
    }
    if (l$validadoEm != lOther$validadoEm) {
      return false;
    }
    final l$validadoPor = validadoPor;
    final lOther$validadoPor = other.validadoPor;
    if (_$data.containsKey('validadoPor') !=
        other._$data.containsKey('validadoPor')) {
      return false;
    }
    if (l$validadoPor != lOther$validadoPor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$codigo = codigo;
    final l$cortesia = cortesia;
    final l$id = id;
    final l$idCortesia = idCortesia;
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final l$transferencia = transferencia;
    final l$transferidoEm = transferidoEm;
    final l$transferidoPara = transferidoPara;
    final l$utilizado = utilizado;
    final l$validadoEm = validadoEm;
    final l$validadoPor = validadoPor;
    return Object.hashAll([
      _$data.containsKey('codigo') ? l$codigo : const {},
      _$data.containsKey('cortesia') ? l$cortesia : const {},
      l$id,
      _$data.containsKey('idCortesia') ? l$idCortesia : const {},
      _$data.containsKey('solicitacaoTransferenciaIngresso')
          ? l$solicitacaoTransferenciaIngresso
          : const {},
      _$data.containsKey('transferencia') ? l$transferencia : const {},
      _$data.containsKey('transferidoEm') ? l$transferidoEm : const {},
      _$data.containsKey('transferidoPara') ? l$transferidoPara : const {},
      _$data.containsKey('utilizado') ? l$utilizado : const {},
      _$data.containsKey('validadoEm') ? l$validadoEm : const {},
      _$data.containsKey('validadoPor') ? l$validadoPor : const {},
    ]);
  }
}

class Input$PutItemCardapioVendaInput {
  factory Input$PutItemCardapioVendaInput({
    int? cardapio,
    String? codigo,
    int? evento,
    required int id,
    int? pessoa,
    double? valorEvento,
    double? valorFastPay,
    double? valorTotal,
    double? valorUnitario,
    int? venda,
    int? vendaCardapio,
  }) => Input$PutItemCardapioVendaInput._({
    if (cardapio != null) r'cardapio': cardapio,
    if (codigo != null) r'codigo': codigo,
    if (evento != null) r'evento': evento,
    r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
    if (valorEvento != null) r'valorEvento': valorEvento,
    if (valorFastPay != null) r'valorFastPay': valorFastPay,
    if (valorTotal != null) r'valorTotal': valorTotal,
    if (valorUnitario != null) r'valorUnitario': valorUnitario,
    if (venda != null) r'venda': venda,
    if (vendaCardapio != null) r'vendaCardapio': vendaCardapio,
  });

  Input$PutItemCardapioVendaInput._(this._$data);

  factory Input$PutItemCardapioVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cardapio')) {
      final l$cardapio = data['cardapio'];
      result$data['cardapio'] = (l$cardapio as int?);
    }
    if (data.containsKey('codigo')) {
      final l$codigo = data['codigo'];
      result$data['codigo'] = (l$codigo as String?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('valorEvento')) {
      final l$valorEvento = data['valorEvento'];
      result$data['valorEvento'] = (l$valorEvento as num?)?.toDouble();
    }
    if (data.containsKey('valorFastPay')) {
      final l$valorFastPay = data['valorFastPay'];
      result$data['valorFastPay'] = (l$valorFastPay as num?)?.toDouble();
    }
    if (data.containsKey('valorTotal')) {
      final l$valorTotal = data['valorTotal'];
      result$data['valorTotal'] = (l$valorTotal as num?)?.toDouble();
    }
    if (data.containsKey('valorUnitario')) {
      final l$valorUnitario = data['valorUnitario'];
      result$data['valorUnitario'] = (l$valorUnitario as num?)?.toDouble();
    }
    if (data.containsKey('venda')) {
      final l$venda = data['venda'];
      result$data['venda'] = (l$venda as int?);
    }
    if (data.containsKey('vendaCardapio')) {
      final l$vendaCardapio = data['vendaCardapio'];
      result$data['vendaCardapio'] = (l$vendaCardapio as int?);
    }
    return Input$PutItemCardapioVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cardapio => (_$data['cardapio'] as int?);

  String? get codigo => (_$data['codigo'] as String?);

  int? get evento => (_$data['evento'] as int?);

  int get id => (_$data['id'] as int);

  int? get pessoa => (_$data['pessoa'] as int?);

  double? get valorEvento => (_$data['valorEvento'] as double?);

  double? get valorFastPay => (_$data['valorFastPay'] as double?);

  double? get valorTotal => (_$data['valorTotal'] as double?);

  double? get valorUnitario => (_$data['valorUnitario'] as double?);

  int? get venda => (_$data['venda'] as int?);

  int? get vendaCardapio => (_$data['vendaCardapio'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cardapio')) {
      final l$cardapio = cardapio;
      result$data['cardapio'] = l$cardapio;
    }
    if (_$data.containsKey('codigo')) {
      final l$codigo = codigo;
      result$data['codigo'] = l$codigo;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('valorEvento')) {
      final l$valorEvento = valorEvento;
      result$data['valorEvento'] = l$valorEvento;
    }
    if (_$data.containsKey('valorFastPay')) {
      final l$valorFastPay = valorFastPay;
      result$data['valorFastPay'] = l$valorFastPay;
    }
    if (_$data.containsKey('valorTotal')) {
      final l$valorTotal = valorTotal;
      result$data['valorTotal'] = l$valorTotal;
    }
    if (_$data.containsKey('valorUnitario')) {
      final l$valorUnitario = valorUnitario;
      result$data['valorUnitario'] = l$valorUnitario;
    }
    if (_$data.containsKey('venda')) {
      final l$venda = venda;
      result$data['venda'] = l$venda;
    }
    if (_$data.containsKey('vendaCardapio')) {
      final l$vendaCardapio = vendaCardapio;
      result$data['vendaCardapio'] = l$vendaCardapio;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutItemCardapioVendaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (_$data.containsKey('cardapio') !=
        other._$data.containsKey('cardapio')) {
      return false;
    }
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$codigo = codigo;
    final lOther$codigo = other.codigo;
    if (_$data.containsKey('codigo') != other._$data.containsKey('codigo')) {
      return false;
    }
    if (l$codigo != lOther$codigo) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$valorEvento = valorEvento;
    final lOther$valorEvento = other.valorEvento;
    if (_$data.containsKey('valorEvento') !=
        other._$data.containsKey('valorEvento')) {
      return false;
    }
    if (l$valorEvento != lOther$valorEvento) {
      return false;
    }
    final l$valorFastPay = valorFastPay;
    final lOther$valorFastPay = other.valorFastPay;
    if (_$data.containsKey('valorFastPay') !=
        other._$data.containsKey('valorFastPay')) {
      return false;
    }
    if (l$valorFastPay != lOther$valorFastPay) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (_$data.containsKey('valorTotal') !=
        other._$data.containsKey('valorTotal')) {
      return false;
    }
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (_$data.containsKey('valorUnitario') !=
        other._$data.containsKey('valorUnitario')) {
      return false;
    }
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    final l$venda = venda;
    final lOther$venda = other.venda;
    if (_$data.containsKey('venda') != other._$data.containsKey('venda')) {
      return false;
    }
    if (l$venda != lOther$venda) {
      return false;
    }
    final l$vendaCardapio = vendaCardapio;
    final lOther$vendaCardapio = other.vendaCardapio;
    if (_$data.containsKey('vendaCardapio') !=
        other._$data.containsKey('vendaCardapio')) {
      return false;
    }
    if (l$vendaCardapio != lOther$vendaCardapio) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$codigo = codigo;
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    final l$valorEvento = valorEvento;
    final l$valorFastPay = valorFastPay;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    final l$venda = venda;
    final l$vendaCardapio = vendaCardapio;
    return Object.hashAll([
      _$data.containsKey('cardapio') ? l$cardapio : const {},
      _$data.containsKey('codigo') ? l$codigo : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      l$id,
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('valorEvento') ? l$valorEvento : const {},
      _$data.containsKey('valorFastPay') ? l$valorFastPay : const {},
      _$data.containsKey('valorTotal') ? l$valorTotal : const {},
      _$data.containsKey('valorUnitario') ? l$valorUnitario : const {},
      _$data.containsKey('venda') ? l$venda : const {},
      _$data.containsKey('vendaCardapio') ? l$vendaCardapio : const {},
    ]);
  }
}

class Input$PutLoteInput {
  factory Input$PutLoteInput({
    required String dataFim,
    required String dataInicio,
    required int id,
    int? inativo,
    required String nome,
  }) => Input$PutLoteInput._({
    r'dataFim': dataFim,
    r'dataInicio': dataInicio,
    r'id': id,
    if (inativo != null) r'inativo': inativo,
    r'nome': nome,
  });

  Input$PutLoteInput._(this._$data);

  factory Input$PutLoteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$dataFim = data['dataFim'];
    result$data['dataFim'] = (l$dataFim as String);
    final l$dataInicio = data['dataInicio'];
    result$data['dataInicio'] = (l$dataInicio as String);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    final l$nome = data['nome'];
    result$data['nome'] = (l$nome as String);
    return Input$PutLoteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get dataFim => (_$data['dataFim'] as String);

  String get dataInicio => (_$data['dataInicio'] as String);

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  String get nome => (_$data['nome'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$dataFim = dataFim;
    result$data['dataFim'] = l$dataFim;
    final l$dataInicio = dataInicio;
    result$data['dataInicio'] = l$dataInicio;
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    final l$nome = nome;
    result$data['nome'] = l$nome;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutLoteInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$dataFim = dataFim;
    final lOther$dataFim = other.dataFim;
    if (l$dataFim != lOther$dataFim) {
      return false;
    }
    final l$dataInicio = dataInicio;
    final lOther$dataInicio = other.dataInicio;
    if (l$dataInicio != lOther$dataInicio) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nome = nome;
    final lOther$nome = other.nome;
    if (l$nome != lOther$nome) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dataFim = dataFim;
    final l$dataInicio = dataInicio;
    final l$id = id;
    final l$inativo = inativo;
    final l$nome = nome;
    return Object.hashAll([
      l$dataFim,
      l$dataInicio,
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
      l$nome,
    ]);
  }
}

class Input$PutPessoaCartaoInput {
  factory Input$PutPessoaCartaoInput({required int id, int? inativo}) =>
      Input$PutPessoaCartaoInput._({
        r'id': id,
        if (inativo != null) r'inativo': inativo,
      });

  Input$PutPessoaCartaoInput._(this._$data);

  factory Input$PutPessoaCartaoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    return Input$PutPessoaCartaoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutPessoaCartaoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$inativo = inativo;
    return Object.hashAll([
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
    ]);
  }
}

class Input$PutPessoaInput {
  factory Input$PutPessoaInput({
    String? backgroundImage,
    String? cpf,
    String? descricao,
    String? email,
    String? fotoPerfil,
    String? idClientePagarme,
    int? inativo,
    String? nickname,
    int? perfilAberto,
    required int pesId,
    String? pesNome,
    String? provider,
    String? telefone,
  }) => Input$PutPessoaInput._({
    if (backgroundImage != null) r'backgroundImage': backgroundImage,
    if (cpf != null) r'cpf': cpf,
    if (descricao != null) r'descricao': descricao,
    if (email != null) r'email': email,
    if (fotoPerfil != null) r'fotoPerfil': fotoPerfil,
    if (idClientePagarme != null) r'idClientePagarme': idClientePagarme,
    if (inativo != null) r'inativo': inativo,
    if (nickname != null) r'nickname': nickname,
    if (perfilAberto != null) r'perfilAberto': perfilAberto,
    r'pesId': pesId,
    if (pesNome != null) r'pesNome': pesNome,
    if (provider != null) r'provider': provider,
    if (telefone != null) r'telefone': telefone,
  });

  Input$PutPessoaInput._(this._$data);

  factory Input$PutPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('backgroundImage')) {
      final l$backgroundImage = data['backgroundImage'];
      result$data['backgroundImage'] = (l$backgroundImage as String?);
    }
    if (data.containsKey('cpf')) {
      final l$cpf = data['cpf'];
      result$data['cpf'] = (l$cpf as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('fotoPerfil')) {
      final l$fotoPerfil = data['fotoPerfil'];
      result$data['fotoPerfil'] = (l$fotoPerfil as String?);
    }
    if (data.containsKey('idClientePagarme')) {
      final l$idClientePagarme = data['idClientePagarme'];
      result$data['idClientePagarme'] = (l$idClientePagarme as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('nickname')) {
      final l$nickname = data['nickname'];
      result$data['nickname'] = (l$nickname as String?);
    }
    if (data.containsKey('perfilAberto')) {
      final l$perfilAberto = data['perfilAberto'];
      result$data['perfilAberto'] = (l$perfilAberto as int?);
    }
    final l$pesId = data['pesId'];
    result$data['pesId'] = (l$pesId as int);
    if (data.containsKey('pesNome')) {
      final l$pesNome = data['pesNome'];
      result$data['pesNome'] = (l$pesNome as String?);
    }
    if (data.containsKey('provider')) {
      final l$provider = data['provider'];
      result$data['provider'] = (l$provider as String?);
    }
    if (data.containsKey('telefone')) {
      final l$telefone = data['telefone'];
      result$data['telefone'] = (l$telefone as String?);
    }
    return Input$PutPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get backgroundImage => (_$data['backgroundImage'] as String?);

  String? get cpf => (_$data['cpf'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get fotoPerfil => (_$data['fotoPerfil'] as String?);

  String? get idClientePagarme => (_$data['idClientePagarme'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  String? get nickname => (_$data['nickname'] as String?);

  int? get perfilAberto => (_$data['perfilAberto'] as int?);

  int get pesId => (_$data['pesId'] as int);

  String? get pesNome => (_$data['pesNome'] as String?);

  String? get provider => (_$data['provider'] as String?);

  String? get telefone => (_$data['telefone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('backgroundImage')) {
      final l$backgroundImage = backgroundImage;
      result$data['backgroundImage'] = l$backgroundImage;
    }
    if (_$data.containsKey('cpf')) {
      final l$cpf = cpf;
      result$data['cpf'] = l$cpf;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('fotoPerfil')) {
      final l$fotoPerfil = fotoPerfil;
      result$data['fotoPerfil'] = l$fotoPerfil;
    }
    if (_$data.containsKey('idClientePagarme')) {
      final l$idClientePagarme = idClientePagarme;
      result$data['idClientePagarme'] = l$idClientePagarme;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('nickname')) {
      final l$nickname = nickname;
      result$data['nickname'] = l$nickname;
    }
    if (_$data.containsKey('perfilAberto')) {
      final l$perfilAberto = perfilAberto;
      result$data['perfilAberto'] = l$perfilAberto;
    }
    final l$pesId = pesId;
    result$data['pesId'] = l$pesId;
    if (_$data.containsKey('pesNome')) {
      final l$pesNome = pesNome;
      result$data['pesNome'] = l$pesNome;
    }
    if (_$data.containsKey('provider')) {
      final l$provider = provider;
      result$data['provider'] = l$provider;
    }
    if (_$data.containsKey('telefone')) {
      final l$telefone = telefone;
      result$data['telefone'] = l$telefone;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutPessoaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$backgroundImage = backgroundImage;
    final lOther$backgroundImage = other.backgroundImage;
    if (_$data.containsKey('backgroundImage') !=
        other._$data.containsKey('backgroundImage')) {
      return false;
    }
    if (l$backgroundImage != lOther$backgroundImage) {
      return false;
    }
    final l$cpf = cpf;
    final lOther$cpf = other.cpf;
    if (_$data.containsKey('cpf') != other._$data.containsKey('cpf')) {
      return false;
    }
    if (l$cpf != lOther$cpf) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$fotoPerfil = fotoPerfil;
    final lOther$fotoPerfil = other.fotoPerfil;
    if (_$data.containsKey('fotoPerfil') !=
        other._$data.containsKey('fotoPerfil')) {
      return false;
    }
    if (l$fotoPerfil != lOther$fotoPerfil) {
      return false;
    }
    final l$idClientePagarme = idClientePagarme;
    final lOther$idClientePagarme = other.idClientePagarme;
    if (_$data.containsKey('idClientePagarme') !=
        other._$data.containsKey('idClientePagarme')) {
      return false;
    }
    if (l$idClientePagarme != lOther$idClientePagarme) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$nickname = nickname;
    final lOther$nickname = other.nickname;
    if (_$data.containsKey('nickname') !=
        other._$data.containsKey('nickname')) {
      return false;
    }
    if (l$nickname != lOther$nickname) {
      return false;
    }
    final l$perfilAberto = perfilAberto;
    final lOther$perfilAberto = other.perfilAberto;
    if (_$data.containsKey('perfilAberto') !=
        other._$data.containsKey('perfilAberto')) {
      return false;
    }
    if (l$perfilAberto != lOther$perfilAberto) {
      return false;
    }
    final l$pesId = pesId;
    final lOther$pesId = other.pesId;
    if (l$pesId != lOther$pesId) {
      return false;
    }
    final l$pesNome = pesNome;
    final lOther$pesNome = other.pesNome;
    if (_$data.containsKey('pesNome') != other._$data.containsKey('pesNome')) {
      return false;
    }
    if (l$pesNome != lOther$pesNome) {
      return false;
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (_$data.containsKey('provider') !=
        other._$data.containsKey('provider')) {
      return false;
    }
    if (l$provider != lOther$provider) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (_$data.containsKey('telefone') !=
        other._$data.containsKey('telefone')) {
      return false;
    }
    if (l$telefone != lOther$telefone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$backgroundImage = backgroundImage;
    final l$cpf = cpf;
    final l$descricao = descricao;
    final l$email = email;
    final l$fotoPerfil = fotoPerfil;
    final l$idClientePagarme = idClientePagarme;
    final l$inativo = inativo;
    final l$nickname = nickname;
    final l$perfilAberto = perfilAberto;
    final l$pesId = pesId;
    final l$pesNome = pesNome;
    final l$provider = provider;
    final l$telefone = telefone;
    return Object.hashAll([
      _$data.containsKey('backgroundImage') ? l$backgroundImage : const {},
      _$data.containsKey('cpf') ? l$cpf : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('fotoPerfil') ? l$fotoPerfil : const {},
      _$data.containsKey('idClientePagarme') ? l$idClientePagarme : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('nickname') ? l$nickname : const {},
      _$data.containsKey('perfilAberto') ? l$perfilAberto : const {},
      l$pesId,
      _$data.containsKey('pesNome') ? l$pesNome : const {},
      _$data.containsKey('provider') ? l$provider : const {},
      _$data.containsKey('telefone') ? l$telefone : const {},
    ]);
  }
}

class Input$PutPessoaPagamentoInput {
  factory Input$PutPessoaPagamentoInput({
    String? accountCheckDigit,
    String? accountNumber,
    double? annualRevenue,
    String? bairro,
    String? bairroRepresentante,
    int? bank,
    String? birthdate,
    String? birthdateRepresentante,
    String? branchCheckDigit,
    String? branchNumber,
    String? cep,
    String? cepRepresentante,
    int? cidade,
    int? cidadeRepresentante,
    String? companyName,
    String? complemento,
    String? complementoRepresentante,
    String? descricao,
    String? document,
    String? documentRepresentante,
    String? email,
    String? emailRepresentante,
    int? estado,
    int? estadoRepresentante,
    int? evento,
    String? holderDocument,
    String? holderName,
    int? holderType,
    required int id,
    String? idPagarme,
    String? idPagarmeConta,
    String? logradouro,
    String? logradouroRepresentante,
    double? monthlyIncome,
    double? monthlyIncomeRepresentante,
    String? name,
    String? nameRepresentante,
    String? numero,
    String? numeroRepresentante,
    String? professionalOccupation,
    String? professionalOccupationRepresentante,
    String? telefone,
    double? tipo,
    String? tradingName,
    int? transferEnabled,
    int? transferInterval,
    int? type,
  }) => Input$PutPessoaPagamentoInput._({
    if (accountCheckDigit != null) r'accountCheckDigit': accountCheckDigit,
    if (accountNumber != null) r'accountNumber': accountNumber,
    if (annualRevenue != null) r'annualRevenue': annualRevenue,
    if (bairro != null) r'bairro': bairro,
    if (bairroRepresentante != null)
      r'bairroRepresentante': bairroRepresentante,
    if (bank != null) r'bank': bank,
    if (birthdate != null) r'birthdate': birthdate,
    if (birthdateRepresentante != null)
      r'birthdateRepresentante': birthdateRepresentante,
    if (branchCheckDigit != null) r'branchCheckDigit': branchCheckDigit,
    if (branchNumber != null) r'branchNumber': branchNumber,
    if (cep != null) r'cep': cep,
    if (cepRepresentante != null) r'cepRepresentante': cepRepresentante,
    if (cidade != null) r'cidade': cidade,
    if (cidadeRepresentante != null)
      r'cidadeRepresentante': cidadeRepresentante,
    if (companyName != null) r'companyName': companyName,
    if (complemento != null) r'complemento': complemento,
    if (complementoRepresentante != null)
      r'complementoRepresentante': complementoRepresentante,
    if (descricao != null) r'descricao': descricao,
    if (document != null) r'document': document,
    if (documentRepresentante != null)
      r'documentRepresentante': documentRepresentante,
    if (email != null) r'email': email,
    if (emailRepresentante != null) r'emailRepresentante': emailRepresentante,
    if (estado != null) r'estado': estado,
    if (estadoRepresentante != null)
      r'estadoRepresentante': estadoRepresentante,
    if (evento != null) r'evento': evento,
    if (holderDocument != null) r'holderDocument': holderDocument,
    if (holderName != null) r'holderName': holderName,
    if (holderType != null) r'holderType': holderType,
    r'id': id,
    if (idPagarme != null) r'idPagarme': idPagarme,
    if (idPagarmeConta != null) r'idPagarmeConta': idPagarmeConta,
    if (logradouro != null) r'logradouro': logradouro,
    if (logradouroRepresentante != null)
      r'logradouroRepresentante': logradouroRepresentante,
    if (monthlyIncome != null) r'monthlyIncome': monthlyIncome,
    if (monthlyIncomeRepresentante != null)
      r'monthlyIncomeRepresentante': monthlyIncomeRepresentante,
    if (name != null) r'name': name,
    if (nameRepresentante != null) r'nameRepresentante': nameRepresentante,
    if (numero != null) r'numero': numero,
    if (numeroRepresentante != null)
      r'numeroRepresentante': numeroRepresentante,
    if (professionalOccupation != null)
      r'professionalOccupation': professionalOccupation,
    if (professionalOccupationRepresentante != null)
      r'professionalOccupationRepresentante':
          professionalOccupationRepresentante,
    if (telefone != null) r'telefone': telefone,
    if (tipo != null) r'tipo': tipo,
    if (tradingName != null) r'tradingName': tradingName,
    if (transferEnabled != null) r'transferEnabled': transferEnabled,
    if (transferInterval != null) r'transferInterval': transferInterval,
    if (type != null) r'type': type,
  });

  Input$PutPessoaPagamentoInput._(this._$data);

  factory Input$PutPessoaPagamentoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountCheckDigit')) {
      final l$accountCheckDigit = data['accountCheckDigit'];
      result$data['accountCheckDigit'] = (l$accountCheckDigit as String?);
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = (l$accountNumber as String?);
    }
    if (data.containsKey('annualRevenue')) {
      final l$annualRevenue = data['annualRevenue'];
      result$data['annualRevenue'] = (l$annualRevenue as num?)?.toDouble();
    }
    if (data.containsKey('bairro')) {
      final l$bairro = data['bairro'];
      result$data['bairro'] = (l$bairro as String?);
    }
    if (data.containsKey('bairroRepresentante')) {
      final l$bairroRepresentante = data['bairroRepresentante'];
      result$data['bairroRepresentante'] = (l$bairroRepresentante as String?);
    }
    if (data.containsKey('bank')) {
      final l$bank = data['bank'];
      result$data['bank'] = (l$bank as int?);
    }
    if (data.containsKey('birthdate')) {
      final l$birthdate = data['birthdate'];
      result$data['birthdate'] = (l$birthdate as String?);
    }
    if (data.containsKey('birthdateRepresentante')) {
      final l$birthdateRepresentante = data['birthdateRepresentante'];
      result$data['birthdateRepresentante'] =
          (l$birthdateRepresentante as String?);
    }
    if (data.containsKey('branchCheckDigit')) {
      final l$branchCheckDigit = data['branchCheckDigit'];
      result$data['branchCheckDigit'] = (l$branchCheckDigit as String?);
    }
    if (data.containsKey('branchNumber')) {
      final l$branchNumber = data['branchNumber'];
      result$data['branchNumber'] = (l$branchNumber as String?);
    }
    if (data.containsKey('cep')) {
      final l$cep = data['cep'];
      result$data['cep'] = (l$cep as String?);
    }
    if (data.containsKey('cepRepresentante')) {
      final l$cepRepresentante = data['cepRepresentante'];
      result$data['cepRepresentante'] = (l$cepRepresentante as String?);
    }
    if (data.containsKey('cidade')) {
      final l$cidade = data['cidade'];
      result$data['cidade'] = (l$cidade as int?);
    }
    if (data.containsKey('cidadeRepresentante')) {
      final l$cidadeRepresentante = data['cidadeRepresentante'];
      result$data['cidadeRepresentante'] = (l$cidadeRepresentante as int?);
    }
    if (data.containsKey('companyName')) {
      final l$companyName = data['companyName'];
      result$data['companyName'] = (l$companyName as String?);
    }
    if (data.containsKey('complemento')) {
      final l$complemento = data['complemento'];
      result$data['complemento'] = (l$complemento as String?);
    }
    if (data.containsKey('complementoRepresentante')) {
      final l$complementoRepresentante = data['complementoRepresentante'];
      result$data['complementoRepresentante'] =
          (l$complementoRepresentante as String?);
    }
    if (data.containsKey('descricao')) {
      final l$descricao = data['descricao'];
      result$data['descricao'] = (l$descricao as String?);
    }
    if (data.containsKey('document')) {
      final l$document = data['document'];
      result$data['document'] = (l$document as String?);
    }
    if (data.containsKey('documentRepresentante')) {
      final l$documentRepresentante = data['documentRepresentante'];
      result$data['documentRepresentante'] =
          (l$documentRepresentante as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('emailRepresentante')) {
      final l$emailRepresentante = data['emailRepresentante'];
      result$data['emailRepresentante'] = (l$emailRepresentante as String?);
    }
    if (data.containsKey('estado')) {
      final l$estado = data['estado'];
      result$data['estado'] = (l$estado as int?);
    }
    if (data.containsKey('estadoRepresentante')) {
      final l$estadoRepresentante = data['estadoRepresentante'];
      result$data['estadoRepresentante'] = (l$estadoRepresentante as int?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    if (data.containsKey('holderDocument')) {
      final l$holderDocument = data['holderDocument'];
      result$data['holderDocument'] = (l$holderDocument as String?);
    }
    if (data.containsKey('holderName')) {
      final l$holderName = data['holderName'];
      result$data['holderName'] = (l$holderName as String?);
    }
    if (data.containsKey('holderType')) {
      final l$holderType = data['holderType'];
      result$data['holderType'] = (l$holderType as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('idPagarme')) {
      final l$idPagarme = data['idPagarme'];
      result$data['idPagarme'] = (l$idPagarme as String?);
    }
    if (data.containsKey('idPagarmeConta')) {
      final l$idPagarmeConta = data['idPagarmeConta'];
      result$data['idPagarmeConta'] = (l$idPagarmeConta as String?);
    }
    if (data.containsKey('logradouro')) {
      final l$logradouro = data['logradouro'];
      result$data['logradouro'] = (l$logradouro as String?);
    }
    if (data.containsKey('logradouroRepresentante')) {
      final l$logradouroRepresentante = data['logradouroRepresentante'];
      result$data['logradouroRepresentante'] =
          (l$logradouroRepresentante as String?);
    }
    if (data.containsKey('monthlyIncome')) {
      final l$monthlyIncome = data['monthlyIncome'];
      result$data['monthlyIncome'] = (l$monthlyIncome as num?)?.toDouble();
    }
    if (data.containsKey('monthlyIncomeRepresentante')) {
      final l$monthlyIncomeRepresentante = data['monthlyIncomeRepresentante'];
      result$data['monthlyIncomeRepresentante'] =
          (l$monthlyIncomeRepresentante as num?)?.toDouble();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('nameRepresentante')) {
      final l$nameRepresentante = data['nameRepresentante'];
      result$data['nameRepresentante'] = (l$nameRepresentante as String?);
    }
    if (data.containsKey('numero')) {
      final l$numero = data['numero'];
      result$data['numero'] = (l$numero as String?);
    }
    if (data.containsKey('numeroRepresentante')) {
      final l$numeroRepresentante = data['numeroRepresentante'];
      result$data['numeroRepresentante'] = (l$numeroRepresentante as String?);
    }
    if (data.containsKey('professionalOccupation')) {
      final l$professionalOccupation = data['professionalOccupation'];
      result$data['professionalOccupation'] =
          (l$professionalOccupation as String?);
    }
    if (data.containsKey('professionalOccupationRepresentante')) {
      final l$professionalOccupationRepresentante =
          data['professionalOccupationRepresentante'];
      result$data['professionalOccupationRepresentante'] =
          (l$professionalOccupationRepresentante as String?);
    }
    if (data.containsKey('telefone')) {
      final l$telefone = data['telefone'];
      result$data['telefone'] = (l$telefone as String?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as num?)?.toDouble();
    }
    if (data.containsKey('tradingName')) {
      final l$tradingName = data['tradingName'];
      result$data['tradingName'] = (l$tradingName as String?);
    }
    if (data.containsKey('transferEnabled')) {
      final l$transferEnabled = data['transferEnabled'];
      result$data['transferEnabled'] = (l$transferEnabled as int?);
    }
    if (data.containsKey('transferInterval')) {
      final l$transferInterval = data['transferInterval'];
      result$data['transferInterval'] = (l$transferInterval as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as int?);
    }
    return Input$PutPessoaPagamentoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountCheckDigit => (_$data['accountCheckDigit'] as String?);

  String? get accountNumber => (_$data['accountNumber'] as String?);

  double? get annualRevenue => (_$data['annualRevenue'] as double?);

  String? get bairro => (_$data['bairro'] as String?);

  String? get bairroRepresentante => (_$data['bairroRepresentante'] as String?);

  int? get bank => (_$data['bank'] as int?);

  String? get birthdate => (_$data['birthdate'] as String?);

  String? get birthdateRepresentante =>
      (_$data['birthdateRepresentante'] as String?);

  String? get branchCheckDigit => (_$data['branchCheckDigit'] as String?);

  String? get branchNumber => (_$data['branchNumber'] as String?);

  String? get cep => (_$data['cep'] as String?);

  String? get cepRepresentante => (_$data['cepRepresentante'] as String?);

  int? get cidade => (_$data['cidade'] as int?);

  int? get cidadeRepresentante => (_$data['cidadeRepresentante'] as int?);

  String? get companyName => (_$data['companyName'] as String?);

  String? get complemento => (_$data['complemento'] as String?);

  String? get complementoRepresentante =>
      (_$data['complementoRepresentante'] as String?);

  String? get descricao => (_$data['descricao'] as String?);

  String? get document => (_$data['document'] as String?);

  String? get documentRepresentante =>
      (_$data['documentRepresentante'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get emailRepresentante => (_$data['emailRepresentante'] as String?);

  int? get estado => (_$data['estado'] as int?);

  int? get estadoRepresentante => (_$data['estadoRepresentante'] as int?);

  int? get evento => (_$data['evento'] as int?);

  String? get holderDocument => (_$data['holderDocument'] as String?);

  String? get holderName => (_$data['holderName'] as String?);

  int? get holderType => (_$data['holderType'] as int?);

  int get id => (_$data['id'] as int);

  String? get idPagarme => (_$data['idPagarme'] as String?);

  String? get idPagarmeConta => (_$data['idPagarmeConta'] as String?);

  String? get logradouro => (_$data['logradouro'] as String?);

  String? get logradouroRepresentante =>
      (_$data['logradouroRepresentante'] as String?);

  double? get monthlyIncome => (_$data['monthlyIncome'] as double?);

  double? get monthlyIncomeRepresentante =>
      (_$data['monthlyIncomeRepresentante'] as double?);

  String? get name => (_$data['name'] as String?);

  String? get nameRepresentante => (_$data['nameRepresentante'] as String?);

  String? get numero => (_$data['numero'] as String?);

  String? get numeroRepresentante => (_$data['numeroRepresentante'] as String?);

  String? get professionalOccupation =>
      (_$data['professionalOccupation'] as String?);

  String? get professionalOccupationRepresentante =>
      (_$data['professionalOccupationRepresentante'] as String?);

  String? get telefone => (_$data['telefone'] as String?);

  double? get tipo => (_$data['tipo'] as double?);

  String? get tradingName => (_$data['tradingName'] as String?);

  int? get transferEnabled => (_$data['transferEnabled'] as int?);

  int? get transferInterval => (_$data['transferInterval'] as int?);

  int? get type => (_$data['type'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountCheckDigit')) {
      final l$accountCheckDigit = accountCheckDigit;
      result$data['accountCheckDigit'] = l$accountCheckDigit;
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber;
    }
    if (_$data.containsKey('annualRevenue')) {
      final l$annualRevenue = annualRevenue;
      result$data['annualRevenue'] = l$annualRevenue;
    }
    if (_$data.containsKey('bairro')) {
      final l$bairro = bairro;
      result$data['bairro'] = l$bairro;
    }
    if (_$data.containsKey('bairroRepresentante')) {
      final l$bairroRepresentante = bairroRepresentante;
      result$data['bairroRepresentante'] = l$bairroRepresentante;
    }
    if (_$data.containsKey('bank')) {
      final l$bank = bank;
      result$data['bank'] = l$bank;
    }
    if (_$data.containsKey('birthdate')) {
      final l$birthdate = birthdate;
      result$data['birthdate'] = l$birthdate;
    }
    if (_$data.containsKey('birthdateRepresentante')) {
      final l$birthdateRepresentante = birthdateRepresentante;
      result$data['birthdateRepresentante'] = l$birthdateRepresentante;
    }
    if (_$data.containsKey('branchCheckDigit')) {
      final l$branchCheckDigit = branchCheckDigit;
      result$data['branchCheckDigit'] = l$branchCheckDigit;
    }
    if (_$data.containsKey('branchNumber')) {
      final l$branchNumber = branchNumber;
      result$data['branchNumber'] = l$branchNumber;
    }
    if (_$data.containsKey('cep')) {
      final l$cep = cep;
      result$data['cep'] = l$cep;
    }
    if (_$data.containsKey('cepRepresentante')) {
      final l$cepRepresentante = cepRepresentante;
      result$data['cepRepresentante'] = l$cepRepresentante;
    }
    if (_$data.containsKey('cidade')) {
      final l$cidade = cidade;
      result$data['cidade'] = l$cidade;
    }
    if (_$data.containsKey('cidadeRepresentante')) {
      final l$cidadeRepresentante = cidadeRepresentante;
      result$data['cidadeRepresentante'] = l$cidadeRepresentante;
    }
    if (_$data.containsKey('companyName')) {
      final l$companyName = companyName;
      result$data['companyName'] = l$companyName;
    }
    if (_$data.containsKey('complemento')) {
      final l$complemento = complemento;
      result$data['complemento'] = l$complemento;
    }
    if (_$data.containsKey('complementoRepresentante')) {
      final l$complementoRepresentante = complementoRepresentante;
      result$data['complementoRepresentante'] = l$complementoRepresentante;
    }
    if (_$data.containsKey('descricao')) {
      final l$descricao = descricao;
      result$data['descricao'] = l$descricao;
    }
    if (_$data.containsKey('document')) {
      final l$document = document;
      result$data['document'] = l$document;
    }
    if (_$data.containsKey('documentRepresentante')) {
      final l$documentRepresentante = documentRepresentante;
      result$data['documentRepresentante'] = l$documentRepresentante;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('emailRepresentante')) {
      final l$emailRepresentante = emailRepresentante;
      result$data['emailRepresentante'] = l$emailRepresentante;
    }
    if (_$data.containsKey('estado')) {
      final l$estado = estado;
      result$data['estado'] = l$estado;
    }
    if (_$data.containsKey('estadoRepresentante')) {
      final l$estadoRepresentante = estadoRepresentante;
      result$data['estadoRepresentante'] = l$estadoRepresentante;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    if (_$data.containsKey('holderDocument')) {
      final l$holderDocument = holderDocument;
      result$data['holderDocument'] = l$holderDocument;
    }
    if (_$data.containsKey('holderName')) {
      final l$holderName = holderName;
      result$data['holderName'] = l$holderName;
    }
    if (_$data.containsKey('holderType')) {
      final l$holderType = holderType;
      result$data['holderType'] = l$holderType;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('idPagarme')) {
      final l$idPagarme = idPagarme;
      result$data['idPagarme'] = l$idPagarme;
    }
    if (_$data.containsKey('idPagarmeConta')) {
      final l$idPagarmeConta = idPagarmeConta;
      result$data['idPagarmeConta'] = l$idPagarmeConta;
    }
    if (_$data.containsKey('logradouro')) {
      final l$logradouro = logradouro;
      result$data['logradouro'] = l$logradouro;
    }
    if (_$data.containsKey('logradouroRepresentante')) {
      final l$logradouroRepresentante = logradouroRepresentante;
      result$data['logradouroRepresentante'] = l$logradouroRepresentante;
    }
    if (_$data.containsKey('monthlyIncome')) {
      final l$monthlyIncome = monthlyIncome;
      result$data['monthlyIncome'] = l$monthlyIncome;
    }
    if (_$data.containsKey('monthlyIncomeRepresentante')) {
      final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
      result$data['monthlyIncomeRepresentante'] = l$monthlyIncomeRepresentante;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('nameRepresentante')) {
      final l$nameRepresentante = nameRepresentante;
      result$data['nameRepresentante'] = l$nameRepresentante;
    }
    if (_$data.containsKey('numero')) {
      final l$numero = numero;
      result$data['numero'] = l$numero;
    }
    if (_$data.containsKey('numeroRepresentante')) {
      final l$numeroRepresentante = numeroRepresentante;
      result$data['numeroRepresentante'] = l$numeroRepresentante;
    }
    if (_$data.containsKey('professionalOccupation')) {
      final l$professionalOccupation = professionalOccupation;
      result$data['professionalOccupation'] = l$professionalOccupation;
    }
    if (_$data.containsKey('professionalOccupationRepresentante')) {
      final l$professionalOccupationRepresentante =
          professionalOccupationRepresentante;
      result$data['professionalOccupationRepresentante'] =
          l$professionalOccupationRepresentante;
    }
    if (_$data.containsKey('telefone')) {
      final l$telefone = telefone;
      result$data['telefone'] = l$telefone;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    if (_$data.containsKey('tradingName')) {
      final l$tradingName = tradingName;
      result$data['tradingName'] = l$tradingName;
    }
    if (_$data.containsKey('transferEnabled')) {
      final l$transferEnabled = transferEnabled;
      result$data['transferEnabled'] = l$transferEnabled;
    }
    if (_$data.containsKey('transferInterval')) {
      final l$transferInterval = transferInterval;
      result$data['transferInterval'] = l$transferInterval;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutPessoaPagamentoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountCheckDigit = accountCheckDigit;
    final lOther$accountCheckDigit = other.accountCheckDigit;
    if (_$data.containsKey('accountCheckDigit') !=
        other._$data.containsKey('accountCheckDigit')) {
      return false;
    }
    if (l$accountCheckDigit != lOther$accountCheckDigit) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$annualRevenue = annualRevenue;
    final lOther$annualRevenue = other.annualRevenue;
    if (_$data.containsKey('annualRevenue') !=
        other._$data.containsKey('annualRevenue')) {
      return false;
    }
    if (l$annualRevenue != lOther$annualRevenue) {
      return false;
    }
    final l$bairro = bairro;
    final lOther$bairro = other.bairro;
    if (_$data.containsKey('bairro') != other._$data.containsKey('bairro')) {
      return false;
    }
    if (l$bairro != lOther$bairro) {
      return false;
    }
    final l$bairroRepresentante = bairroRepresentante;
    final lOther$bairroRepresentante = other.bairroRepresentante;
    if (_$data.containsKey('bairroRepresentante') !=
        other._$data.containsKey('bairroRepresentante')) {
      return false;
    }
    if (l$bairroRepresentante != lOther$bairroRepresentante) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (_$data.containsKey('bank') != other._$data.containsKey('bank')) {
      return false;
    }
    if (l$bank != lOther$bank) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (_$data.containsKey('birthdate') !=
        other._$data.containsKey('birthdate')) {
      return false;
    }
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$birthdateRepresentante = birthdateRepresentante;
    final lOther$birthdateRepresentante = other.birthdateRepresentante;
    if (_$data.containsKey('birthdateRepresentante') !=
        other._$data.containsKey('birthdateRepresentante')) {
      return false;
    }
    if (l$birthdateRepresentante != lOther$birthdateRepresentante) {
      return false;
    }
    final l$branchCheckDigit = branchCheckDigit;
    final lOther$branchCheckDigit = other.branchCheckDigit;
    if (_$data.containsKey('branchCheckDigit') !=
        other._$data.containsKey('branchCheckDigit')) {
      return false;
    }
    if (l$branchCheckDigit != lOther$branchCheckDigit) {
      return false;
    }
    final l$branchNumber = branchNumber;
    final lOther$branchNumber = other.branchNumber;
    if (_$data.containsKey('branchNumber') !=
        other._$data.containsKey('branchNumber')) {
      return false;
    }
    if (l$branchNumber != lOther$branchNumber) {
      return false;
    }
    final l$cep = cep;
    final lOther$cep = other.cep;
    if (_$data.containsKey('cep') != other._$data.containsKey('cep')) {
      return false;
    }
    if (l$cep != lOther$cep) {
      return false;
    }
    final l$cepRepresentante = cepRepresentante;
    final lOther$cepRepresentante = other.cepRepresentante;
    if (_$data.containsKey('cepRepresentante') !=
        other._$data.containsKey('cepRepresentante')) {
      return false;
    }
    if (l$cepRepresentante != lOther$cepRepresentante) {
      return false;
    }
    final l$cidade = cidade;
    final lOther$cidade = other.cidade;
    if (_$data.containsKey('cidade') != other._$data.containsKey('cidade')) {
      return false;
    }
    if (l$cidade != lOther$cidade) {
      return false;
    }
    final l$cidadeRepresentante = cidadeRepresentante;
    final lOther$cidadeRepresentante = other.cidadeRepresentante;
    if (_$data.containsKey('cidadeRepresentante') !=
        other._$data.containsKey('cidadeRepresentante')) {
      return false;
    }
    if (l$cidadeRepresentante != lOther$cidadeRepresentante) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (_$data.containsKey('companyName') !=
        other._$data.containsKey('companyName')) {
      return false;
    }
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$complemento = complemento;
    final lOther$complemento = other.complemento;
    if (_$data.containsKey('complemento') !=
        other._$data.containsKey('complemento')) {
      return false;
    }
    if (l$complemento != lOther$complemento) {
      return false;
    }
    final l$complementoRepresentante = complementoRepresentante;
    final lOther$complementoRepresentante = other.complementoRepresentante;
    if (_$data.containsKey('complementoRepresentante') !=
        other._$data.containsKey('complementoRepresentante')) {
      return false;
    }
    if (l$complementoRepresentante != lOther$complementoRepresentante) {
      return false;
    }
    final l$descricao = descricao;
    final lOther$descricao = other.descricao;
    if (_$data.containsKey('descricao') !=
        other._$data.containsKey('descricao')) {
      return false;
    }
    if (l$descricao != lOther$descricao) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (_$data.containsKey('document') !=
        other._$data.containsKey('document')) {
      return false;
    }
    if (l$document != lOther$document) {
      return false;
    }
    final l$documentRepresentante = documentRepresentante;
    final lOther$documentRepresentante = other.documentRepresentante;
    if (_$data.containsKey('documentRepresentante') !=
        other._$data.containsKey('documentRepresentante')) {
      return false;
    }
    if (l$documentRepresentante != lOther$documentRepresentante) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$emailRepresentante = emailRepresentante;
    final lOther$emailRepresentante = other.emailRepresentante;
    if (_$data.containsKey('emailRepresentante') !=
        other._$data.containsKey('emailRepresentante')) {
      return false;
    }
    if (l$emailRepresentante != lOther$emailRepresentante) {
      return false;
    }
    final l$estado = estado;
    final lOther$estado = other.estado;
    if (_$data.containsKey('estado') != other._$data.containsKey('estado')) {
      return false;
    }
    if (l$estado != lOther$estado) {
      return false;
    }
    final l$estadoRepresentante = estadoRepresentante;
    final lOther$estadoRepresentante = other.estadoRepresentante;
    if (_$data.containsKey('estadoRepresentante') !=
        other._$data.containsKey('estadoRepresentante')) {
      return false;
    }
    if (l$estadoRepresentante != lOther$estadoRepresentante) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$holderDocument = holderDocument;
    final lOther$holderDocument = other.holderDocument;
    if (_$data.containsKey('holderDocument') !=
        other._$data.containsKey('holderDocument')) {
      return false;
    }
    if (l$holderDocument != lOther$holderDocument) {
      return false;
    }
    final l$holderName = holderName;
    final lOther$holderName = other.holderName;
    if (_$data.containsKey('holderName') !=
        other._$data.containsKey('holderName')) {
      return false;
    }
    if (l$holderName != lOther$holderName) {
      return false;
    }
    final l$holderType = holderType;
    final lOther$holderType = other.holderType;
    if (_$data.containsKey('holderType') !=
        other._$data.containsKey('holderType')) {
      return false;
    }
    if (l$holderType != lOther$holderType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$idPagarme = idPagarme;
    final lOther$idPagarme = other.idPagarme;
    if (_$data.containsKey('idPagarme') !=
        other._$data.containsKey('idPagarme')) {
      return false;
    }
    if (l$idPagarme != lOther$idPagarme) {
      return false;
    }
    final l$idPagarmeConta = idPagarmeConta;
    final lOther$idPagarmeConta = other.idPagarmeConta;
    if (_$data.containsKey('idPagarmeConta') !=
        other._$data.containsKey('idPagarmeConta')) {
      return false;
    }
    if (l$idPagarmeConta != lOther$idPagarmeConta) {
      return false;
    }
    final l$logradouro = logradouro;
    final lOther$logradouro = other.logradouro;
    if (_$data.containsKey('logradouro') !=
        other._$data.containsKey('logradouro')) {
      return false;
    }
    if (l$logradouro != lOther$logradouro) {
      return false;
    }
    final l$logradouroRepresentante = logradouroRepresentante;
    final lOther$logradouroRepresentante = other.logradouroRepresentante;
    if (_$data.containsKey('logradouroRepresentante') !=
        other._$data.containsKey('logradouroRepresentante')) {
      return false;
    }
    if (l$logradouroRepresentante != lOther$logradouroRepresentante) {
      return false;
    }
    final l$monthlyIncome = monthlyIncome;
    final lOther$monthlyIncome = other.monthlyIncome;
    if (_$data.containsKey('monthlyIncome') !=
        other._$data.containsKey('monthlyIncome')) {
      return false;
    }
    if (l$monthlyIncome != lOther$monthlyIncome) {
      return false;
    }
    final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
    final lOther$monthlyIncomeRepresentante = other.monthlyIncomeRepresentante;
    if (_$data.containsKey('monthlyIncomeRepresentante') !=
        other._$data.containsKey('monthlyIncomeRepresentante')) {
      return false;
    }
    if (l$monthlyIncomeRepresentante != lOther$monthlyIncomeRepresentante) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$nameRepresentante = nameRepresentante;
    final lOther$nameRepresentante = other.nameRepresentante;
    if (_$data.containsKey('nameRepresentante') !=
        other._$data.containsKey('nameRepresentante')) {
      return false;
    }
    if (l$nameRepresentante != lOther$nameRepresentante) {
      return false;
    }
    final l$numero = numero;
    final lOther$numero = other.numero;
    if (_$data.containsKey('numero') != other._$data.containsKey('numero')) {
      return false;
    }
    if (l$numero != lOther$numero) {
      return false;
    }
    final l$numeroRepresentante = numeroRepresentante;
    final lOther$numeroRepresentante = other.numeroRepresentante;
    if (_$data.containsKey('numeroRepresentante') !=
        other._$data.containsKey('numeroRepresentante')) {
      return false;
    }
    if (l$numeroRepresentante != lOther$numeroRepresentante) {
      return false;
    }
    final l$professionalOccupation = professionalOccupation;
    final lOther$professionalOccupation = other.professionalOccupation;
    if (_$data.containsKey('professionalOccupation') !=
        other._$data.containsKey('professionalOccupation')) {
      return false;
    }
    if (l$professionalOccupation != lOther$professionalOccupation) {
      return false;
    }
    final l$professionalOccupationRepresentante =
        professionalOccupationRepresentante;
    final lOther$professionalOccupationRepresentante =
        other.professionalOccupationRepresentante;
    if (_$data.containsKey('professionalOccupationRepresentante') !=
        other._$data.containsKey('professionalOccupationRepresentante')) {
      return false;
    }
    if (l$professionalOccupationRepresentante !=
        lOther$professionalOccupationRepresentante) {
      return false;
    }
    final l$telefone = telefone;
    final lOther$telefone = other.telefone;
    if (_$data.containsKey('telefone') !=
        other._$data.containsKey('telefone')) {
      return false;
    }
    if (l$telefone != lOther$telefone) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$tradingName = tradingName;
    final lOther$tradingName = other.tradingName;
    if (_$data.containsKey('tradingName') !=
        other._$data.containsKey('tradingName')) {
      return false;
    }
    if (l$tradingName != lOther$tradingName) {
      return false;
    }
    final l$transferEnabled = transferEnabled;
    final lOther$transferEnabled = other.transferEnabled;
    if (_$data.containsKey('transferEnabled') !=
        other._$data.containsKey('transferEnabled')) {
      return false;
    }
    if (l$transferEnabled != lOther$transferEnabled) {
      return false;
    }
    final l$transferInterval = transferInterval;
    final lOther$transferInterval = other.transferInterval;
    if (_$data.containsKey('transferInterval') !=
        other._$data.containsKey('transferInterval')) {
      return false;
    }
    if (l$transferInterval != lOther$transferInterval) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountCheckDigit = accountCheckDigit;
    final l$accountNumber = accountNumber;
    final l$annualRevenue = annualRevenue;
    final l$bairro = bairro;
    final l$bairroRepresentante = bairroRepresentante;
    final l$bank = bank;
    final l$birthdate = birthdate;
    final l$birthdateRepresentante = birthdateRepresentante;
    final l$branchCheckDigit = branchCheckDigit;
    final l$branchNumber = branchNumber;
    final l$cep = cep;
    final l$cepRepresentante = cepRepresentante;
    final l$cidade = cidade;
    final l$cidadeRepresentante = cidadeRepresentante;
    final l$companyName = companyName;
    final l$complemento = complemento;
    final l$complementoRepresentante = complementoRepresentante;
    final l$descricao = descricao;
    final l$document = document;
    final l$documentRepresentante = documentRepresentante;
    final l$email = email;
    final l$emailRepresentante = emailRepresentante;
    final l$estado = estado;
    final l$estadoRepresentante = estadoRepresentante;
    final l$evento = evento;
    final l$holderDocument = holderDocument;
    final l$holderName = holderName;
    final l$holderType = holderType;
    final l$id = id;
    final l$idPagarme = idPagarme;
    final l$idPagarmeConta = idPagarmeConta;
    final l$logradouro = logradouro;
    final l$logradouroRepresentante = logradouroRepresentante;
    final l$monthlyIncome = monthlyIncome;
    final l$monthlyIncomeRepresentante = monthlyIncomeRepresentante;
    final l$name = name;
    final l$nameRepresentante = nameRepresentante;
    final l$numero = numero;
    final l$numeroRepresentante = numeroRepresentante;
    final l$professionalOccupation = professionalOccupation;
    final l$professionalOccupationRepresentante =
        professionalOccupationRepresentante;
    final l$telefone = telefone;
    final l$tipo = tipo;
    final l$tradingName = tradingName;
    final l$transferEnabled = transferEnabled;
    final l$transferInterval = transferInterval;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('accountCheckDigit') ? l$accountCheckDigit : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('annualRevenue') ? l$annualRevenue : const {},
      _$data.containsKey('bairro') ? l$bairro : const {},
      _$data.containsKey('bairroRepresentante')
          ? l$bairroRepresentante
          : const {},
      _$data.containsKey('bank') ? l$bank : const {},
      _$data.containsKey('birthdate') ? l$birthdate : const {},
      _$data.containsKey('birthdateRepresentante')
          ? l$birthdateRepresentante
          : const {},
      _$data.containsKey('branchCheckDigit') ? l$branchCheckDigit : const {},
      _$data.containsKey('branchNumber') ? l$branchNumber : const {},
      _$data.containsKey('cep') ? l$cep : const {},
      _$data.containsKey('cepRepresentante') ? l$cepRepresentante : const {},
      _$data.containsKey('cidade') ? l$cidade : const {},
      _$data.containsKey('cidadeRepresentante')
          ? l$cidadeRepresentante
          : const {},
      _$data.containsKey('companyName') ? l$companyName : const {},
      _$data.containsKey('complemento') ? l$complemento : const {},
      _$data.containsKey('complementoRepresentante')
          ? l$complementoRepresentante
          : const {},
      _$data.containsKey('descricao') ? l$descricao : const {},
      _$data.containsKey('document') ? l$document : const {},
      _$data.containsKey('documentRepresentante')
          ? l$documentRepresentante
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('emailRepresentante')
          ? l$emailRepresentante
          : const {},
      _$data.containsKey('estado') ? l$estado : const {},
      _$data.containsKey('estadoRepresentante')
          ? l$estadoRepresentante
          : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      _$data.containsKey('holderDocument') ? l$holderDocument : const {},
      _$data.containsKey('holderName') ? l$holderName : const {},
      _$data.containsKey('holderType') ? l$holderType : const {},
      l$id,
      _$data.containsKey('idPagarme') ? l$idPagarme : const {},
      _$data.containsKey('idPagarmeConta') ? l$idPagarmeConta : const {},
      _$data.containsKey('logradouro') ? l$logradouro : const {},
      _$data.containsKey('logradouroRepresentante')
          ? l$logradouroRepresentante
          : const {},
      _$data.containsKey('monthlyIncome') ? l$monthlyIncome : const {},
      _$data.containsKey('monthlyIncomeRepresentante')
          ? l$monthlyIncomeRepresentante
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('nameRepresentante') ? l$nameRepresentante : const {},
      _$data.containsKey('numero') ? l$numero : const {},
      _$data.containsKey('numeroRepresentante')
          ? l$numeroRepresentante
          : const {},
      _$data.containsKey('professionalOccupation')
          ? l$professionalOccupation
          : const {},
      _$data.containsKey('professionalOccupationRepresentante')
          ? l$professionalOccupationRepresentante
          : const {},
      _$data.containsKey('telefone') ? l$telefone : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
      _$data.containsKey('tradingName') ? l$tradingName : const {},
      _$data.containsKey('transferEnabled') ? l$transferEnabled : const {},
      _$data.containsKey('transferInterval') ? l$transferInterval : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

class Input$PutPreVendaCardapioInput {
  factory Input$PutPreVendaCardapioInput({
    int? cardapio,
    int? evento,
    required int id,
    int? preVenda,
    int? quantidade,
    double? valorTotal,
    double? valorUnitario,
  }) => Input$PutPreVendaCardapioInput._({
    if (cardapio != null) r'cardapio': cardapio,
    if (evento != null) r'evento': evento,
    r'id': id,
    if (preVenda != null) r'preVenda': preVenda,
    if (quantidade != null) r'quantidade': quantidade,
    if (valorTotal != null) r'valorTotal': valorTotal,
    if (valorUnitario != null) r'valorUnitario': valorUnitario,
  });

  Input$PutPreVendaCardapioInput._(this._$data);

  factory Input$PutPreVendaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cardapio')) {
      final l$cardapio = data['cardapio'];
      result$data['cardapio'] = (l$cardapio as int?);
    }
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('preVenda')) {
      final l$preVenda = data['preVenda'];
      result$data['preVenda'] = (l$preVenda as int?);
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as int?);
    }
    if (data.containsKey('valorTotal')) {
      final l$valorTotal = data['valorTotal'];
      result$data['valorTotal'] = (l$valorTotal as num?)?.toDouble();
    }
    if (data.containsKey('valorUnitario')) {
      final l$valorUnitario = data['valorUnitario'];
      result$data['valorUnitario'] = (l$valorUnitario as num?)?.toDouble();
    }
    return Input$PutPreVendaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cardapio => (_$data['cardapio'] as int?);

  int? get evento => (_$data['evento'] as int?);

  int get id => (_$data['id'] as int);

  int? get preVenda => (_$data['preVenda'] as int?);

  int? get quantidade => (_$data['quantidade'] as int?);

  double? get valorTotal => (_$data['valorTotal'] as double?);

  double? get valorUnitario => (_$data['valorUnitario'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cardapio')) {
      final l$cardapio = cardapio;
      result$data['cardapio'] = l$cardapio;
    }
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('preVenda')) {
      final l$preVenda = preVenda;
      result$data['preVenda'] = l$preVenda;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    if (_$data.containsKey('valorTotal')) {
      final l$valorTotal = valorTotal;
      result$data['valorTotal'] = l$valorTotal;
    }
    if (_$data.containsKey('valorUnitario')) {
      final l$valorUnitario = valorUnitario;
      result$data['valorUnitario'] = l$valorUnitario;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutPreVendaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (_$data.containsKey('cardapio') !=
        other._$data.containsKey('cardapio')) {
      return false;
    }
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (_$data.containsKey('preVenda') !=
        other._$data.containsKey('preVenda')) {
      return false;
    }
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (_$data.containsKey('valorTotal') !=
        other._$data.containsKey('valorTotal')) {
      return false;
    }
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (_$data.containsKey('valorUnitario') !=
        other._$data.containsKey('valorUnitario')) {
      return false;
    }
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$evento = evento;
    final l$id = id;
    final l$preVenda = preVenda;
    final l$quantidade = quantidade;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    return Object.hashAll([
      _$data.containsKey('cardapio') ? l$cardapio : const {},
      _$data.containsKey('evento') ? l$evento : const {},
      l$id,
      _$data.containsKey('preVenda') ? l$preVenda : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
      _$data.containsKey('valorTotal') ? l$valorTotal : const {},
      _$data.containsKey('valorUnitario') ? l$valorUnitario : const {},
    ]);
  }
}

class Input$PutPreVendaIngressoInput {
  factory Input$PutPreVendaIngressoInput({
    int? evento,
    required int id,
    int? ingresso,
    int? preVenda,
    int? quantidade,
    double? valorTotal,
    double? valorUnitario,
  }) => Input$PutPreVendaIngressoInput._({
    if (evento != null) r'evento': evento,
    r'id': id,
    if (ingresso != null) r'ingresso': ingresso,
    if (preVenda != null) r'preVenda': preVenda,
    if (quantidade != null) r'quantidade': quantidade,
    if (valorTotal != null) r'valorTotal': valorTotal,
    if (valorUnitario != null) r'valorUnitario': valorUnitario,
  });

  Input$PutPreVendaIngressoInput._(this._$data);

  factory Input$PutPreVendaIngressoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('ingresso')) {
      final l$ingresso = data['ingresso'];
      result$data['ingresso'] = (l$ingresso as int?);
    }
    if (data.containsKey('preVenda')) {
      final l$preVenda = data['preVenda'];
      result$data['preVenda'] = (l$preVenda as int?);
    }
    if (data.containsKey('quantidade')) {
      final l$quantidade = data['quantidade'];
      result$data['quantidade'] = (l$quantidade as int?);
    }
    if (data.containsKey('valorTotal')) {
      final l$valorTotal = data['valorTotal'];
      result$data['valorTotal'] = (l$valorTotal as num?)?.toDouble();
    }
    if (data.containsKey('valorUnitario')) {
      final l$valorUnitario = data['valorUnitario'];
      result$data['valorUnitario'] = (l$valorUnitario as num?)?.toDouble();
    }
    return Input$PutPreVendaIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int get id => (_$data['id'] as int);

  int? get ingresso => (_$data['ingresso'] as int?);

  int? get preVenda => (_$data['preVenda'] as int?);

  int? get quantidade => (_$data['quantidade'] as int?);

  double? get valorTotal => (_$data['valorTotal'] as double?);

  double? get valorUnitario => (_$data['valorUnitario'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('ingresso')) {
      final l$ingresso = ingresso;
      result$data['ingresso'] = l$ingresso;
    }
    if (_$data.containsKey('preVenda')) {
      final l$preVenda = preVenda;
      result$data['preVenda'] = l$preVenda;
    }
    if (_$data.containsKey('quantidade')) {
      final l$quantidade = quantidade;
      result$data['quantidade'] = l$quantidade;
    }
    if (_$data.containsKey('valorTotal')) {
      final l$valorTotal = valorTotal;
      result$data['valorTotal'] = l$valorTotal;
    }
    if (_$data.containsKey('valorUnitario')) {
      final l$valorUnitario = valorUnitario;
      result$data['valorUnitario'] = l$valorUnitario;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutPreVendaIngressoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$ingresso = ingresso;
    final lOther$ingresso = other.ingresso;
    if (_$data.containsKey('ingresso') !=
        other._$data.containsKey('ingresso')) {
      return false;
    }
    if (l$ingresso != lOther$ingresso) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (_$data.containsKey('preVenda') !=
        other._$data.containsKey('preVenda')) {
      return false;
    }
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (_$data.containsKey('quantidade') !=
        other._$data.containsKey('quantidade')) {
      return false;
    }
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (_$data.containsKey('valorTotal') !=
        other._$data.containsKey('valorTotal')) {
      return false;
    }
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (_$data.containsKey('valorUnitario') !=
        other._$data.containsKey('valorUnitario')) {
      return false;
    }
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$ingresso = ingresso;
    final l$preVenda = preVenda;
    final l$quantidade = quantidade;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      l$id,
      _$data.containsKey('ingresso') ? l$ingresso : const {},
      _$data.containsKey('preVenda') ? l$preVenda : const {},
      _$data.containsKey('quantidade') ? l$quantidade : const {},
      _$data.containsKey('valorTotal') ? l$valorTotal : const {},
      _$data.containsKey('valorUnitario') ? l$valorUnitario : const {},
    ]);
  }
}

class Input$PutPreVendaInput {
  factory Input$PutPreVendaInput({
    int? evento,
    required int id,
    int? inativo,
    int? pessoa,
    int? status,
    int? tipo,
    double? valor,
  }) => Input$PutPreVendaInput._({
    if (evento != null) r'evento': evento,
    r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (pessoa != null) r'pessoa': pessoa,
    if (status != null) r'status': status,
    if (tipo != null) r'tipo': tipo,
    if (valor != null) r'valor': valor,
  });

  Input$PutPreVendaInput._(this._$data);

  factory Input$PutPreVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('evento')) {
      final l$evento = data['evento'];
      result$data['evento'] = (l$evento as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    if (data.containsKey('valor')) {
      final l$valor = data['valor'];
      result$data['valor'] = (l$valor as num?)?.toDouble();
    }
    return Input$PutPreVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get evento => (_$data['evento'] as int?);

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get status => (_$data['status'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  double? get valor => (_$data['valor'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('evento')) {
      final l$evento = evento;
      result$data['evento'] = l$evento;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    if (_$data.containsKey('valor')) {
      final l$valor = valor;
      result$data['valor'] = l$valor;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutPreVendaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (_$data.containsKey('evento') != other._$data.containsKey('evento')) {
      return false;
    }
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    final l$valor = valor;
    final lOther$valor = other.valor;
    if (_$data.containsKey('valor') != other._$data.containsKey('valor')) {
      return false;
    }
    if (l$valor != lOther$valor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$id = id;
    final l$inativo = inativo;
    final l$pessoa = pessoa;
    final l$status = status;
    final l$tipo = tipo;
    final l$valor = valor;
    return Object.hashAll([
      _$data.containsKey('evento') ? l$evento : const {},
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
      _$data.containsKey('valor') ? l$valor : const {},
    ]);
  }
}

class Input$PutPreVendaPessoaInput {
  factory Input$PutPreVendaPessoaInput({
    required int id,
    int? pessoaCartao,
    int? status,
  }) => Input$PutPreVendaPessoaInput._({
    r'id': id,
    if (pessoaCartao != null) r'pessoaCartao': pessoaCartao,
    if (status != null) r'status': status,
  });

  Input$PutPreVendaPessoaInput._(this._$data);

  factory Input$PutPreVendaPessoaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('pessoaCartao')) {
      final l$pessoaCartao = data['pessoaCartao'];
      result$data['pessoaCartao'] = (l$pessoaCartao as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    return Input$PutPreVendaPessoaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get pessoaCartao => (_$data['pessoaCartao'] as int?);

  int? get status => (_$data['status'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('pessoaCartao')) {
      final l$pessoaCartao = pessoaCartao;
      result$data['pessoaCartao'] = l$pessoaCartao;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutPreVendaPessoaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoaCartao = pessoaCartao;
    final lOther$pessoaCartao = other.pessoaCartao;
    if (_$data.containsKey('pessoaCartao') !=
        other._$data.containsKey('pessoaCartao')) {
      return false;
    }
    if (l$pessoaCartao != lOther$pessoaCartao) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$pessoaCartao = pessoaCartao;
    final l$status = status;
    return Object.hashAll([
      l$id,
      _$data.containsKey('pessoaCartao') ? l$pessoaCartao : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

class Input$PutSeguindoInput {
  factory Input$PutSeguindoInput({required int id, required int status}) =>
      Input$PutSeguindoInput._({r'id': id, r'status': status});

  Input$PutSeguindoInput._(this._$data);

  factory Input$PutSeguindoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$status = data['status'];
    result$data['status'] = (l$status as int);
    return Input$PutSeguindoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int get status => (_$data['status'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$status = status;
    result$data['status'] = l$status;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutSeguindoInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    return Object.hashAll([l$id, l$status]);
  }
}

class Input$PutSolicitacaoTransferenciaIngressoInput {
  factory Input$PutSolicitacaoTransferenciaIngressoInput({
    required int id,
    int? status,
  }) => Input$PutSolicitacaoTransferenciaIngressoInput._({
    r'id': id,
    if (status != null) r'status': status,
  });

  Input$PutSolicitacaoTransferenciaIngressoInput._(this._$data);

  factory Input$PutSolicitacaoTransferenciaIngressoInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    return Input$PutSolicitacaoTransferenciaIngressoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get status => (_$data['status'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutSolicitacaoTransferenciaIngressoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    return Object.hashAll([
      l$id,
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

class Input$PutStorieInput {
  factory Input$PutStorieInput({
    String? arquivo,
    required int id,
    int? inativo,
    int? tempo,
    int? tipo,
  }) => Input$PutStorieInput._({
    if (arquivo != null) r'arquivo': arquivo,
    r'id': id,
    if (inativo != null) r'inativo': inativo,
    if (tempo != null) r'tempo': tempo,
    if (tipo != null) r'tipo': tipo,
  });

  Input$PutStorieInput._(this._$data);

  factory Input$PutStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arquivo')) {
      final l$arquivo = data['arquivo'];
      result$data['arquivo'] = (l$arquivo as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('tempo')) {
      final l$tempo = data['tempo'];
      result$data['tempo'] = (l$tempo as int?);
    }
    if (data.containsKey('tipo')) {
      final l$tipo = data['tipo'];
      result$data['tipo'] = (l$tipo as int?);
    }
    return Input$PutStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get arquivo => (_$data['arquivo'] as String?);

  int get id => (_$data['id'] as int);

  int? get inativo => (_$data['inativo'] as int?);

  int? get tempo => (_$data['tempo'] as int?);

  int? get tipo => (_$data['tipo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arquivo')) {
      final l$arquivo = arquivo;
      result$data['arquivo'] = l$arquivo;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('tempo')) {
      final l$tempo = tempo;
      result$data['tempo'] = l$tempo;
    }
    if (_$data.containsKey('tipo')) {
      final l$tipo = tipo;
      result$data['tipo'] = l$tipo;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutStorieInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$arquivo = arquivo;
    final lOther$arquivo = other.arquivo;
    if (_$data.containsKey('arquivo') != other._$data.containsKey('arquivo')) {
      return false;
    }
    if (l$arquivo != lOther$arquivo) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$tempo = tempo;
    final lOther$tempo = other.tempo;
    if (_$data.containsKey('tempo') != other._$data.containsKey('tempo')) {
      return false;
    }
    if (l$tempo != lOther$tempo) {
      return false;
    }
    final l$tipo = tipo;
    final lOther$tipo = other.tipo;
    if (_$data.containsKey('tipo') != other._$data.containsKey('tipo')) {
      return false;
    }
    if (l$tipo != lOther$tipo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arquivo = arquivo;
    final l$id = id;
    final l$inativo = inativo;
    final l$tempo = tempo;
    final l$tipo = tipo;
    return Object.hashAll([
      _$data.containsKey('arquivo') ? l$arquivo : const {},
      l$id,
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('tempo') ? l$tempo : const {},
      _$data.containsKey('tipo') ? l$tipo : const {},
    ]);
  }
}

class Input$PutVendaCardapioInput {
  factory Input$PutVendaCardapioInput({
    required int cardapio,
    required int evento,
    required int id,
    required int pessoa,
    required int quantidade,
    required double valorEvento,
    required double valorFastPay,
    required double valorTotal,
    required double valorUnitario,
    required int venda,
  }) => Input$PutVendaCardapioInput._({
    r'cardapio': cardapio,
    r'evento': evento,
    r'id': id,
    r'pessoa': pessoa,
    r'quantidade': quantidade,
    r'valorEvento': valorEvento,
    r'valorFastPay': valorFastPay,
    r'valorTotal': valorTotal,
    r'valorUnitario': valorUnitario,
    r'venda': venda,
  });

  Input$PutVendaCardapioInput._(this._$data);

  factory Input$PutVendaCardapioInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cardapio = data['cardapio'];
    result$data['cardapio'] = (l$cardapio as int);
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$quantidade = data['quantidade'];
    result$data['quantidade'] = (l$quantidade as int);
    final l$valorEvento = data['valorEvento'];
    result$data['valorEvento'] = (l$valorEvento as num).toDouble();
    final l$valorFastPay = data['valorFastPay'];
    result$data['valorFastPay'] = (l$valorFastPay as num).toDouble();
    final l$valorTotal = data['valorTotal'];
    result$data['valorTotal'] = (l$valorTotal as num).toDouble();
    final l$valorUnitario = data['valorUnitario'];
    result$data['valorUnitario'] = (l$valorUnitario as num).toDouble();
    final l$venda = data['venda'];
    result$data['venda'] = (l$venda as int);
    return Input$PutVendaCardapioInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get cardapio => (_$data['cardapio'] as int);

  int get evento => (_$data['evento'] as int);

  int get id => (_$data['id'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  int get quantidade => (_$data['quantidade'] as int);

  double get valorEvento => (_$data['valorEvento'] as double);

  double get valorFastPay => (_$data['valorFastPay'] as double);

  double get valorTotal => (_$data['valorTotal'] as double);

  double get valorUnitario => (_$data['valorUnitario'] as double);

  int get venda => (_$data['venda'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cardapio = cardapio;
    result$data['cardapio'] = l$cardapio;
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$id = id;
    result$data['id'] = l$id;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$quantidade = quantidade;
    result$data['quantidade'] = l$quantidade;
    final l$valorEvento = valorEvento;
    result$data['valorEvento'] = l$valorEvento;
    final l$valorFastPay = valorFastPay;
    result$data['valorFastPay'] = l$valorFastPay;
    final l$valorTotal = valorTotal;
    result$data['valorTotal'] = l$valorTotal;
    final l$valorUnitario = valorUnitario;
    result$data['valorUnitario'] = l$valorUnitario;
    final l$venda = venda;
    result$data['venda'] = l$venda;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutVendaCardapioInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardapio = cardapio;
    final lOther$cardapio = other.cardapio;
    if (l$cardapio != lOther$cardapio) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$quantidade = quantidade;
    final lOther$quantidade = other.quantidade;
    if (l$quantidade != lOther$quantidade) {
      return false;
    }
    final l$valorEvento = valorEvento;
    final lOther$valorEvento = other.valorEvento;
    if (l$valorEvento != lOther$valorEvento) {
      return false;
    }
    final l$valorFastPay = valorFastPay;
    final lOther$valorFastPay = other.valorFastPay;
    if (l$valorFastPay != lOther$valorFastPay) {
      return false;
    }
    final l$valorTotal = valorTotal;
    final lOther$valorTotal = other.valorTotal;
    if (l$valorTotal != lOther$valorTotal) {
      return false;
    }
    final l$valorUnitario = valorUnitario;
    final lOther$valorUnitario = other.valorUnitario;
    if (l$valorUnitario != lOther$valorUnitario) {
      return false;
    }
    final l$venda = venda;
    final lOther$venda = other.venda;
    if (l$venda != lOther$venda) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardapio = cardapio;
    final l$evento = evento;
    final l$id = id;
    final l$pessoa = pessoa;
    final l$quantidade = quantidade;
    final l$valorEvento = valorEvento;
    final l$valorFastPay = valorFastPay;
    final l$valorTotal = valorTotal;
    final l$valorUnitario = valorUnitario;
    final l$venda = venda;
    return Object.hashAll([
      l$cardapio,
      l$evento,
      l$id,
      l$pessoa,
      l$quantidade,
      l$valorEvento,
      l$valorFastPay,
      l$valorTotal,
      l$valorUnitario,
      l$venda,
    ]);
  }
}

class Input$PutVendaInput {
  factory Input$PutVendaInput({
    int? cortesia,
    int? cupomDesconto,
    required int id,
    int? idCortesia,
    String? idPagarme,
    int? inativo,
    int? preVenda,
    String? qrcode,
    String? qrcodeUrl,
    int? solicitacaoTransferenciaIngresso,
    int? status,
  }) => Input$PutVendaInput._({
    if (cortesia != null) r'cortesia': cortesia,
    if (cupomDesconto != null) r'cupomDesconto': cupomDesconto,
    r'id': id,
    if (idCortesia != null) r'idCortesia': idCortesia,
    if (idPagarme != null) r'idPagarme': idPagarme,
    if (inativo != null) r'inativo': inativo,
    if (preVenda != null) r'preVenda': preVenda,
    if (qrcode != null) r'qrcode': qrcode,
    if (qrcodeUrl != null) r'qrcodeUrl': qrcodeUrl,
    if (solicitacaoTransferenciaIngresso != null)
      r'solicitacaoTransferenciaIngresso': solicitacaoTransferenciaIngresso,
    if (status != null) r'status': status,
  });

  Input$PutVendaInput._(this._$data);

  factory Input$PutVendaInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cortesia')) {
      final l$cortesia = data['cortesia'];
      result$data['cortesia'] = (l$cortesia as int?);
    }
    if (data.containsKey('cupomDesconto')) {
      final l$cupomDesconto = data['cupomDesconto'];
      result$data['cupomDesconto'] = (l$cupomDesconto as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('idCortesia')) {
      final l$idCortesia = data['idCortesia'];
      result$data['idCortesia'] = (l$idCortesia as int?);
    }
    if (data.containsKey('idPagarme')) {
      final l$idPagarme = data['idPagarme'];
      result$data['idPagarme'] = (l$idPagarme as String?);
    }
    if (data.containsKey('inativo')) {
      final l$inativo = data['inativo'];
      result$data['inativo'] = (l$inativo as int?);
    }
    if (data.containsKey('preVenda')) {
      final l$preVenda = data['preVenda'];
      result$data['preVenda'] = (l$preVenda as int?);
    }
    if (data.containsKey('qrcode')) {
      final l$qrcode = data['qrcode'];
      result$data['qrcode'] = (l$qrcode as String?);
    }
    if (data.containsKey('qrcodeUrl')) {
      final l$qrcodeUrl = data['qrcodeUrl'];
      result$data['qrcodeUrl'] = (l$qrcodeUrl as String?);
    }
    if (data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          data['solicitacaoTransferenciaIngresso'];
      result$data['solicitacaoTransferenciaIngresso'] =
          (l$solicitacaoTransferenciaIngresso as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as int?);
    }
    return Input$PutVendaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cortesia => (_$data['cortesia'] as int?);

  int? get cupomDesconto => (_$data['cupomDesconto'] as int?);

  int get id => (_$data['id'] as int);

  int? get idCortesia => (_$data['idCortesia'] as int?);

  String? get idPagarme => (_$data['idPagarme'] as String?);

  int? get inativo => (_$data['inativo'] as int?);

  int? get preVenda => (_$data['preVenda'] as int?);

  String? get qrcode => (_$data['qrcode'] as String?);

  String? get qrcodeUrl => (_$data['qrcodeUrl'] as String?);

  int? get solicitacaoTransferenciaIngresso =>
      (_$data['solicitacaoTransferenciaIngresso'] as int?);

  int? get status => (_$data['status'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cortesia')) {
      final l$cortesia = cortesia;
      result$data['cortesia'] = l$cortesia;
    }
    if (_$data.containsKey('cupomDesconto')) {
      final l$cupomDesconto = cupomDesconto;
      result$data['cupomDesconto'] = l$cupomDesconto;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('idCortesia')) {
      final l$idCortesia = idCortesia;
      result$data['idCortesia'] = l$idCortesia;
    }
    if (_$data.containsKey('idPagarme')) {
      final l$idPagarme = idPagarme;
      result$data['idPagarme'] = l$idPagarme;
    }
    if (_$data.containsKey('inativo')) {
      final l$inativo = inativo;
      result$data['inativo'] = l$inativo;
    }
    if (_$data.containsKey('preVenda')) {
      final l$preVenda = preVenda;
      result$data['preVenda'] = l$preVenda;
    }
    if (_$data.containsKey('qrcode')) {
      final l$qrcode = qrcode;
      result$data['qrcode'] = l$qrcode;
    }
    if (_$data.containsKey('qrcodeUrl')) {
      final l$qrcodeUrl = qrcodeUrl;
      result$data['qrcodeUrl'] = l$qrcodeUrl;
    }
    if (_$data.containsKey('solicitacaoTransferenciaIngresso')) {
      final l$solicitacaoTransferenciaIngresso =
          solicitacaoTransferenciaIngresso;
      result$data['solicitacaoTransferenciaIngresso'] =
          l$solicitacaoTransferenciaIngresso;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutVendaInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cortesia = cortesia;
    final lOther$cortesia = other.cortesia;
    if (_$data.containsKey('cortesia') !=
        other._$data.containsKey('cortesia')) {
      return false;
    }
    if (l$cortesia != lOther$cortesia) {
      return false;
    }
    final l$cupomDesconto = cupomDesconto;
    final lOther$cupomDesconto = other.cupomDesconto;
    if (_$data.containsKey('cupomDesconto') !=
        other._$data.containsKey('cupomDesconto')) {
      return false;
    }
    if (l$cupomDesconto != lOther$cupomDesconto) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$idCortesia = idCortesia;
    final lOther$idCortesia = other.idCortesia;
    if (_$data.containsKey('idCortesia') !=
        other._$data.containsKey('idCortesia')) {
      return false;
    }
    if (l$idCortesia != lOther$idCortesia) {
      return false;
    }
    final l$idPagarme = idPagarme;
    final lOther$idPagarme = other.idPagarme;
    if (_$data.containsKey('idPagarme') !=
        other._$data.containsKey('idPagarme')) {
      return false;
    }
    if (l$idPagarme != lOther$idPagarme) {
      return false;
    }
    final l$inativo = inativo;
    final lOther$inativo = other.inativo;
    if (_$data.containsKey('inativo') != other._$data.containsKey('inativo')) {
      return false;
    }
    if (l$inativo != lOther$inativo) {
      return false;
    }
    final l$preVenda = preVenda;
    final lOther$preVenda = other.preVenda;
    if (_$data.containsKey('preVenda') !=
        other._$data.containsKey('preVenda')) {
      return false;
    }
    if (l$preVenda != lOther$preVenda) {
      return false;
    }
    final l$qrcode = qrcode;
    final lOther$qrcode = other.qrcode;
    if (_$data.containsKey('qrcode') != other._$data.containsKey('qrcode')) {
      return false;
    }
    if (l$qrcode != lOther$qrcode) {
      return false;
    }
    final l$qrcodeUrl = qrcodeUrl;
    final lOther$qrcodeUrl = other.qrcodeUrl;
    if (_$data.containsKey('qrcodeUrl') !=
        other._$data.containsKey('qrcodeUrl')) {
      return false;
    }
    if (l$qrcodeUrl != lOther$qrcodeUrl) {
      return false;
    }
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final lOther$solicitacaoTransferenciaIngresso =
        other.solicitacaoTransferenciaIngresso;
    if (_$data.containsKey('solicitacaoTransferenciaIngresso') !=
        other._$data.containsKey('solicitacaoTransferenciaIngresso')) {
      return false;
    }
    if (l$solicitacaoTransferenciaIngresso !=
        lOther$solicitacaoTransferenciaIngresso) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cortesia = cortesia;
    final l$cupomDesconto = cupomDesconto;
    final l$id = id;
    final l$idCortesia = idCortesia;
    final l$idPagarme = idPagarme;
    final l$inativo = inativo;
    final l$preVenda = preVenda;
    final l$qrcode = qrcode;
    final l$qrcodeUrl = qrcodeUrl;
    final l$solicitacaoTransferenciaIngresso = solicitacaoTransferenciaIngresso;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('cortesia') ? l$cortesia : const {},
      _$data.containsKey('cupomDesconto') ? l$cupomDesconto : const {},
      l$id,
      _$data.containsKey('idCortesia') ? l$idCortesia : const {},
      _$data.containsKey('idPagarme') ? l$idPagarme : const {},
      _$data.containsKey('inativo') ? l$inativo : const {},
      _$data.containsKey('preVenda') ? l$preVenda : const {},
      _$data.containsKey('qrcode') ? l$qrcode : const {},
      _$data.containsKey('qrcodeUrl') ? l$qrcodeUrl : const {},
      _$data.containsKey('solicitacaoTransferenciaIngresso')
          ? l$solicitacaoTransferenciaIngresso
          : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

class Input$PutVisualizouStorieInput {
  factory Input$PutVisualizouStorieInput({
    required int id,
    int? pessoa,
    int? stories,
  }) => Input$PutVisualizouStorieInput._({
    r'id': id,
    if (pessoa != null) r'pessoa': pessoa,
    if (stories != null) r'stories': stories,
  });

  Input$PutVisualizouStorieInput._(this._$data);

  factory Input$PutVisualizouStorieInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('pessoa')) {
      final l$pessoa = data['pessoa'];
      result$data['pessoa'] = (l$pessoa as int?);
    }
    if (data.containsKey('stories')) {
      final l$stories = data['stories'];
      result$data['stories'] = (l$stories as int?);
    }
    return Input$PutVisualizouStorieInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get pessoa => (_$data['pessoa'] as int?);

  int? get stories => (_$data['stories'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('pessoa')) {
      final l$pessoa = pessoa;
      result$data['pessoa'] = l$pessoa;
    }
    if (_$data.containsKey('stories')) {
      final l$stories = stories;
      result$data['stories'] = l$stories;
    }
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PutVisualizouStorieInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (_$data.containsKey('pessoa') != other._$data.containsKey('pessoa')) {
      return false;
    }
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$stories = stories;
    final lOther$stories = other.stories;
    if (_$data.containsKey('stories') != other._$data.containsKey('stories')) {
      return false;
    }
    if (l$stories != lOther$stories) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$pessoa = pessoa;
    final l$stories = stories;
    return Object.hashAll([
      l$id,
      _$data.containsKey('pessoa') ? l$pessoa : const {},
      _$data.containsKey('stories') ? l$stories : const {},
    ]);
  }
}

class Input$UpdatePasswordEquipeEventoInput {
  factory Input$UpdatePasswordEquipeEventoInput({
    required int evento,
    required int pessoa,
    required String senha,
  }) => Input$UpdatePasswordEquipeEventoInput._({
    r'evento': evento,
    r'pessoa': pessoa,
    r'senha': senha,
  });

  Input$UpdatePasswordEquipeEventoInput._(this._$data);

  factory Input$UpdatePasswordEquipeEventoInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$evento = data['evento'];
    result$data['evento'] = (l$evento as int);
    final l$pessoa = data['pessoa'];
    result$data['pessoa'] = (l$pessoa as int);
    final l$senha = data['senha'];
    result$data['senha'] = (l$senha as String);
    return Input$UpdatePasswordEquipeEventoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get evento => (_$data['evento'] as int);

  int get pessoa => (_$data['pessoa'] as int);

  String get senha => (_$data['senha'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$evento = evento;
    result$data['evento'] = l$evento;
    final l$pessoa = pessoa;
    result$data['pessoa'] = l$pessoa;
    final l$senha = senha;
    result$data['senha'] = l$senha;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdatePasswordEquipeEventoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$evento = evento;
    final lOther$evento = other.evento;
    if (l$evento != lOther$evento) {
      return false;
    }
    final l$pessoa = pessoa;
    final lOther$pessoa = other.pessoa;
    if (l$pessoa != lOther$pessoa) {
      return false;
    }
    final l$senha = senha;
    final lOther$senha = other.senha;
    if (l$senha != lOther$senha) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$evento = evento;
    final l$pessoa = pessoa;
    final l$senha = senha;
    return Object.hashAll([l$evento, l$pessoa, l$senha]);
  }
}

class Input$ValidarIngressoInputDto {
  factory Input$ValidarIngressoInputDto({
    required String codigo,
    required int validadoPor,
  }) => Input$ValidarIngressoInputDto._({
    r'codigo': codigo,
    r'validadoPor': validadoPor,
  });

  Input$ValidarIngressoInputDto._(this._$data);

  factory Input$ValidarIngressoInputDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$codigo = data['codigo'];
    result$data['codigo'] = (l$codigo as String);
    final l$validadoPor = data['validadoPor'];
    result$data['validadoPor'] = (l$validadoPor as int);
    return Input$ValidarIngressoInputDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get codigo => (_$data['codigo'] as String);

  int get validadoPor => (_$data['validadoPor'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$codigo = codigo;
    result$data['codigo'] = l$codigo;
    final l$validadoPor = validadoPor;
    result$data['validadoPor'] = l$validadoPor;
    return result$data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ValidarIngressoInputDto ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$codigo = codigo;
    final lOther$codigo = other.codigo;
    if (l$codigo != lOther$codigo) {
      return false;
    }
    final l$validadoPor = validadoPor;
    final lOther$validadoPor = other.validadoPor;
    if (l$validadoPor != lOther$validadoPor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$codigo = codigo;
    final l$validadoPor = validadoPor;
    return Object.hashAll([l$codigo, l$validadoPor]);
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
