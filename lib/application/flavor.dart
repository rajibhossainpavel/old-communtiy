late Flavor flavor;

void initFlavor(String env) {
  switch (env) {
    case 'development':
      flavor = Flavor.development;
      break;
    case 'staging':
      flavor = Flavor.staging;
      break;
    default:
      flavor = Flavor.production;
      break;
  }
}

enum Flavor {
  development,
  staging,
  production,
}
