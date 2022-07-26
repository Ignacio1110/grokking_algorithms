part of 'grokking_algorithms.dart';

///binary search
///
///二元搜尋法只能用在排序過的清單
///retrun index of item
int? binarySearch(List<int> list, int item) {
  int low = 0; //first index
  int hight = list.length - 1; //last index
  while (low <= hight) {
    int mid = (low + hight) ~/ 2; // mid index
    int guess = list[mid];
    if (guess == item) return mid;
    if (guess < item) {
      low = mid + 1;
    } else {
      hight = mid - 1;
    }
  }
  return null;
}
