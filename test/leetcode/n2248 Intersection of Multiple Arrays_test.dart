import 'package:test/test.dart';
import 'package:grokking_algorithms/leetcode/n2248 Intersection of Multiple Arrays.dart';

void main() {
  //test case
  //nums =[[3,1,2,4,5],[1,2,3,4],[3,4,5,6]]
  test("test case 1", () {
    List<List<int>> nums = [
      [3, 1, 2, 4, 5],
      [1, 2, 3, 4],
      [3, 4, 5, 6]
    ];
    Solution solution = Solution2();

    expect(solution.intersection(nums), [3, 4]);
  });

  test("test case 2", () {
    List<List<int>> nums = [
      [1, 2, 3],
      [4, 5, 6]
    ];
    Solution solution = Solution2();

    expect(solution.intersection(nums), []);
  });
}
