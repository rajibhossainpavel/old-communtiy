enum Env {
  development,
  staging,
  production,
}

extension EnvExtension on Env {
  String getEnvFileName() {
    switch (this) {
      case Env.development:
        return '.env.development';
      case Env.staging:
        return '.env.staging';
      case Env.production:
        return '.env';
    }
  }

  static Env fromString(String env) {
    switch (env) {
      case 'development':
        return Env.development;
      case 'staging':
        return Env.staging;
      case 'prod':
        return Env.production;
      default:
        throw UnsupportedError('Unsupported Environment Type');
    }
  }
}
