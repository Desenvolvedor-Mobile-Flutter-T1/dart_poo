// debe conseguir enxergar o repository
import '../repositories/livro_repository.dart';

class LivroViewmodel {
  final data = LivroRepository().getRepository();
  printData() => data.forEach(
    (element) => print(
      'TITLE : ${element.title} AUTOR : ${element.author} YEAR OF PUBLICATION: ${element.publicationAt} GENDER : ${element.gender} PAGES : ${element.pages}',
    ),
  );
}
