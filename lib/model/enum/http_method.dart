enum HttpMethod { get, post, put, delete, patch }

extension HttpMethodExtension on HttpMethod {
  String stringfy() {
    switch (this) {
      case HttpMethod.get:
        return 'get';
      case HttpMethod.post:
        return 'post';
      case HttpMethod.put:
        return 'put';
      case HttpMethod.delete:
        return 'delete';
      case HttpMethod.patch:
        return 'patch';
    }
  }

  static HttpMethod fromString(String s) {
    switch (s) {
      case 'get':
        return HttpMethod.get;
      case 'post':
        return HttpMethod.post;
      case 'put':
        return HttpMethod.put;
      case 'delete':
        return HttpMethod.delete;
      case 'patch':
        return HttpMethod.patch;
      default:
        throw UnsupportedError('Unsupported HttpMethod Type');
    }
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'HttpMethod': stringfy(),
    };
  }
}
