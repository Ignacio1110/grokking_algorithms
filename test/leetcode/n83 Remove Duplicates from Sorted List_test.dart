import 'package:grokking_algorithms/leetcode/n83 Remove Duplicates from Sorted List.dart';
import 'package:test/test.dart';

void main() {
  //test case
  test("test case 1", () {
    ListNode head = ListNode(1, ListNode(1, ListNode(2, null)));
    Solution solution = Solution();

    expect(solution.deleteDuplicates(head), ListNode(1, ListNode(2, null)));
  });

  test("test case 2", () {
    ListNode head =
        ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3, null)))));

    Solution solution = Solution();

    expect(solution.deleteDuplicates(head),
        ListNode(1, ListNode(2, ListNode(3, null))));
  });
}
