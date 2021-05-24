import 'dart:convert';

import 'package:flutter/material.dart';

class Usuario {
  final String email, nome, sobrenome, avatar;
  final int id;

  Usuario(
      {@required this.email,
      @required this.nome,
      @required this.id,
      @required this.sobrenome,
      @required this.avatar});

  static Usuario convertFromJson(dynamic json) {
    return Usuario(
        id: json['id'],
        nome: json['first_name'],
        sobrenome: json['last_name'],
        email: json['email'],
        avatar: json['avatar']);
  }

  static List<Usuario> listarUsuarios(String json) {
    final jsonLista = jsonDecode(json);
    final data = jsonLista['data'];
    final usuariosIterable =
        (data).map<Usuario>((usuario) => convertFromJson(usuario));
    return usuariosIterable.toList();
  }
}
