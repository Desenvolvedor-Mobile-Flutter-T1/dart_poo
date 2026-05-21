import '../model/livro_model.dart';
import '../service/db.dart';

class LivroRepository {
  final _db = DB().getData();

  List<LivroModel> getRepository() => _db
      .map(
        (libro) => LivroModel(
          author: libro['autor'] as String,
          title: libro['titulo'] as String,
          publicationAt: libro['anoPublicacao'] as int,
          gender: libro['genero'] as String,
          pages: libro['paginas'] as int,
        ),
      )
      .toList();
}
