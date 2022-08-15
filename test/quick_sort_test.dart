import 'package:grokking_algorithms/grokking_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('quick sort test', () {
    expect(quickSort([7, 6, 5, 4, 3, 2, 1, 0]), [0, 1, 2, 3, 4, 5, 6, 7]);
    expect(quickSort([2, 6, 5, 4, 3, 7, 1, 0]), [0, 1, 2, 3, 4, 5, 6, 7]);
  });
}
