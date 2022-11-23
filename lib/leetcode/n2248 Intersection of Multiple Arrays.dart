// 2248. Intersection of Multiple Arrays
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
