import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_login/twitter_login.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  /// If your Twitter account does not have an email address,
  /// or if the API is not configured to retrieve email addresses,
  /// you may not be able to retrieve email addresses.
  group('user response json parse test', () {
    test('parse', () {
      final json = {
        'email': 'test_email@test.com',
        'profile_image_url_https': 'https://test.com/',
        'name': 'test_name',
        'screen_name': 'test_screen_name',
      };

      final user = TwitterUser(json);
      // ignore: unnecessary_type_check
      expect(user is TwitterUser, isTrue);
    });

    test('email is null', () {
      final json = {
        'email': null,
        'profile_image_url_https': 'https://test.com/',
        'name': 'test_name',
        'screen_name': 'test_screen_name',
      };

      final user = TwitterUser(json);
      // ignore: unnecessary_type_check
      expect(user is TwitterUser, isTrue);
    });
  });
}
