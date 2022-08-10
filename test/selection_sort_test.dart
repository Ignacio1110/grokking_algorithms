import 'package:grokking_algorithms/grokking_algorithms.dart';
import 'package:test/test.dart';

void main() {
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
