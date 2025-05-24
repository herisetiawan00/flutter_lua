/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_lua/flutter_lua.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_lua');

  testWidgets('getVersion', (tester) async {
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(channel,
        (MethodCall methodCall) async {
      return '42';
    });

    expect(await Lua.version, '42');
  });
}
