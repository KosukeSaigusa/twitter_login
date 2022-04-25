import 'dart:core';

import '../../twitter_login.dart';
import 'entity.dart';

/// The result when the Twitter login flow has completed.
/// The login methods always return an instance of this class.
class TwitterAuthResult {
  /// The access token for using the Twitter APIs
  final String? _authToken;

  //// The access token secret for using the Twitter APIs
  final String? _authTokenSecret;

  /// The status after a Twitter login flow has completed
  final TwitterLoginStatus? _status;

  /// The error message when the log in flow completed with an error
  final String? _errorMessage;

  /// Twitter Account user Info.
  final TwitterUser? _user;

  String? get authToken => _authToken;
  String? get authTokenSecret => _authTokenSecret;
  TwitterLoginStatus? get status => _status;
  String? get errorMessage => _errorMessage;
  TwitterUser? get user => _user;

  /// constructor
  TwitterAuthResult({
    String? authToken,
    String? authTokenSecret,
    TwitterLoginStatus? status,
    String? errorMessage,
    TwitterUser? user,
  })  : this._authToken = authToken,
        this._authTokenSecret = authTokenSecret,
        this._status = status,
        this._errorMessage = errorMessage,
        this._user = user;
}
