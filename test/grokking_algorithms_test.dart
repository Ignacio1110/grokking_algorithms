import 'package:grokking_algorithms/grokking_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
  test('binary search', () {
    final List<int> myList = [1, 3, 5, 7, 9];
    expect(binarySearch(myList, 3), 1);

    expect(binarySearch(myList, -1), null);
  });

  test('selection sort', () {
    final List<int> myList = [5, 3, 6, 2, 10];
    expect(selectionSort(myList), [2, 3, 5, 6, 10]);

    final int amount = 100;
    List<int> largeList = List.generate(amount, (index) => amount - index);
    List<int> largeList2 =
        List.generate(amount, (index) => index + 1, growable: false);
    expect(selectionSort(largeList), largeList2);
  });
}
