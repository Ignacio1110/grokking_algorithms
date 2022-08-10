import 'package:grokking_algorithms/grokking_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('binary search', () {
    final List<int> myList = [1, 3, 5, 7, 9];
    expect(binarySearch(myList, 3), 1);

    expect(binarySearch(myList, -1), null);
  });
}
