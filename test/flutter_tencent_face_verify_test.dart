import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tencent_face_verify/flutter_tencent_face_verify.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_tencent_face_verify');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterTencentFaceVerify.platformVersion, '42');
  });
}
