import 'package:test/test.dart';

class Solution {
  List<int> sortArray(List<int> nums) {
    Quicksort(nums, 0, nums.length - 1);
    nums.sort();
    return nums;
  }

  void Quicksort(listtobesort, int leftelement, int rightelement) {
    int i = leftelement;
    int j = rightelement;
    int pivotelement = listtobesort[(leftelement + rightelement) ~/ 2];

    while (i <= j) {
      while (listtobesort[i] < pivotelement) {
        i++;
      }

      while (listtobesort[j] > pivotelement) {
        j--;
      }

      if (i <= j) {
        int objtemp = listtobesort[i];
        listtobesort[i] = listtobesort[j];
        listtobesort[j] = objtemp;
        i++;
        j--;
      }
    }

    if (leftelement < j) {
      Quicksort(listtobesort, leftelement, j);
    }
    if (i < rightelement) {
      Quicksort(listtobesort, i, rightelement);
    }
  }
}
