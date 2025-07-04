// ignore_for_file: unnecessary_type_check

import 'package:modu_3_dart_study/assignments/2025-06-13/asset.dart';
import 'package:modu_3_dart_study/assignments/2025-06-13/tangible_asset.dart';
import 'package:modu_3_dart_study/assignments/2025-06-13/thing.dart';
import 'package:test/test.dart';
import 'package:modu_3_dart_study/assignments/2025-06-13/book.dart';
import 'package:modu_3_dart_study/assignments/2025-06-13/computer.dart';

void main() {
  group('GROUP : Constructor tests for Book and Computer\n', () {
    test('Book instance', () {
      //given
      Book book = Book(
        '신데렐라',
        price: 20000,
        color: 'Blue',
        weight: 0.2,
        isbn: 'a-1234',
      );
      //when
      //then
      expect(book is Book, true);
      expect(book is Computer, false);
      expect(book is TangibleAsset, true);
      expect(book is Thing, true);
      expect(book is Asset, true);

      expect(book.weight, 0.2);

      //when
      book.weight = 0.4;
      expect(book.weight, 0.4);
    });

    test('Computer instance', () {
      //given
      Computer computer = Computer(
        '그램',
        price: 1000000,
        color: 'White',
        weight: 1.1,
        makerName: 'LG',
      );
      //when
      //then
      expect(computer is Book, false);
      expect(computer is Computer, true);
      expect(computer is TangibleAsset, true);
      expect(computer is Thing, true);
      expect(computer is Asset, true);

      expect(computer.weight, 1.1);

      //when
      computer.weight = 1.2;
      expect(computer.weight, 1.2);
    });
  });
}
