import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bundle/bundle.dart';

void main() {
  const MethodChannel channel = MethodChannel('bundle');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('executablePath', () async {
  //   expect(await Bundle.executablePath, '42');
  // });
}
