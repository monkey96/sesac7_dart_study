# Testing

## How to Test
1. Pick a file to test
2. Under test directory, create filename_test.dart
3. given > when > then , using expect
```dart
import 'package:test/test.dart';

//메인 안에 

test ('Wizard Test', () {
    // given (준비)
    final wizard = Wizard(name: '마법사', hp: 100);

    // when (실행)
    wizard.heal(wizard);

    // then (검증)
    expect(wizard.hp, equals(20));
    expect(wizard.hp, 20);
    expect(wizard.hp == 20, equals(true));
    expect(wizard.hp == 20, true);
});
```
4. run with terminal 
```bash
dart test filename_test.dart
```

## Useful testing
- testing if something throws exception
```dart
expect(() => a.transfer(b, 600), throwsException);
```
- or does not throw error / exception
```dart
expect(() => a.transfer(b, 100), returnsNormally);
```

## Good reference
### Official web
- [Dart Test Package](https://pub.dev/packages/test)