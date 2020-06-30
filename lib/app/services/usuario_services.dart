import 'package:cuidapetcurso/app/repository/usuario_repository.dart';

class UsuarioService {

  final UsuarioRepository _repository;

  UsuarioService(this._repository);

  Future<void> login(String email, {String password, bool facebookLogin = false, String avatar = ''}) async {
    try {
      final access_token = await _repository.login(email, password: password, facebookLogin: facebookLogin, avatar: avatar);
    } catch (e) {
      print('Erro ao fazer login $e');
      rethrow;
    }
  }
}