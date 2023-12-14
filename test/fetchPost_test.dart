import 'package:materimodul6/unit_testing/fetchPost.dart';
import 'package:materimodul6/model/post_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  group('fetchPosts tests', () {
    test('Test fetchPosts', () async {
      final client = http.Client();

      try {
        final result = await fetchPosts(client);

        // Pastikan objek yang dikembalikan adalah instance dari Posts
        expect(result, isA<Posts>());

        // Tambahkan test case sesuai kebutuhan Anda
        // Misalnya, pastikan nilai properti userId tidak null
        expect(result.userId, isNotNull);
      } finally {
        client.close();
      }
    });
  });
}
