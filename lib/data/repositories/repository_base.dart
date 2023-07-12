import 'package:http/http.dart' as http;

class RepositoryBase {
  http.Client client = http.Client();

  RepositoryBase({
    required this.client,
  });
}
