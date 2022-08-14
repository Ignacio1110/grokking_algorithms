import 'package:grokking_algorithms/grokking_algorithms.dart';
import 'package:test/test.dart';

void main() {
  test('recursion test', () {
    countdown(5);
  });

  test('factorial', () {
    expect(factorial(3), 6);
    expect(factorial(0), 1);
  });

  test('sum of int array', () {
    expect(sumOfArray([1, 2, 3]), 6);
    expect(sumOfArray([1, 2, 3, 4]), 10);
    expect(sumOfArray([]), 0);
  });
}
