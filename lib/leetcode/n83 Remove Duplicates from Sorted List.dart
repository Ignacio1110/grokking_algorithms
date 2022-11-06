import 'package:test/test.dart';

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  @override
  bool operator ==(Object other) {
    return other is ListNode && val == other.val && next == other.next;
  }
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if (head == null) return null;
    ListNode slowNode = head;
    ListNode? fastNode = head;
    while (fastNode != null) {
      if (fastNode.val != slowNode.val) {
        slowNode.next = fastNode;
        slowNode = slowNode.next!;
      }
      fastNode = fastNode.next;
    }
    slowNode.next = null;

    return head;
  }
}

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
