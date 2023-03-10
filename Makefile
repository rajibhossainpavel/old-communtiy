code-check: dependencies build_runner format analyze

dependencies:
	fvm install
	fvm flutter pub get

build_runner:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

format:
	fvm flutter format lib/

analyze:
	fvm flutter analyze

# androidのimportと挙動が違うのでcode-checkに入れない
import:
	fvm flutter pub run import_sorter:main


run-stg:
	fvm flutter run --dart-define=FLAVOR=staging

run-dev:
	fvm flutter run --dart-define=FLAVOR=development

run-prod:
	fvm flutter run --dart-define=FLAVOR=prod

ipa-stg:
	fvm flutter build ipa --dart-define=FLAVOR=staging --export-options-plist=ExportOptionsStaging.plist

ipa-prd:
	fvm flutter build ipa --dart-define=FLAVOR=prod --export-options-plist=ExportOptions.plist

aab-stg:
	fvm flutter build appbundle --dart-define=FLAVOR=staging

aab-prd:
	fvm flutter build appbundle --dart-define=FLAVOR=prod

apk-prd:
	fvm flutter build apk --dart-define=FLAVOR=prod

build-stg:
	fvm flutter build ios --dart-define=FLAVOR=staging

build-dev:
	fvm flutter build ios --dart-define=FLAVOR=development

build-prd:
	fvm flutter build ios --dart-define=FLAVOR=prod

icons:
	fvm flutter pub run flutter_launcher_icons:main