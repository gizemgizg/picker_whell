import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:picker_whell/picker_whell.dart';

void main() {
  const MethodChannel channel = MethodChannel('picker_whell');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

}
