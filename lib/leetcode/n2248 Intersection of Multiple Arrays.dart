import 'package:test/test.dart';
// 2248. Intersection of Multiple Arrays

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

class Solution {
  List<int> intersection(List<List<int>> nums) {
    List<int> ret = [];

    for (var num in nums[0]) {
      if (!ret.contains(num)) {
        bool everyNumContainsNum = true;
        for (int i = 1; i < nums.length; i++) {
          if (!nums[i].contains(num)) everyNumContainsNum = false;
        }
        if (everyNumContainsNum) ret.add(num);
      }
    }

    ret.sort();
    return ret;
  }
}

class Solution2 extends Solution {
  @override
  List<int> intersection(List<List<int>> nums) {
    List<int> ret = [];
    Map<int, int> countMap = {};
    for (var num in nums) {
      for (var n in num) {
        if (!countMap.containsKey(n)) {
          countMap.addAll({n: 1});
        } else {
          countMap[n] = countMap[n]! + 1;
        }
      }
    }

    for (var c in countMap.entries) {
      if (c.value == nums.length) {
        ret.add(c.key);
      }
    }
    ret.sort();
    return ret;
  }
}
