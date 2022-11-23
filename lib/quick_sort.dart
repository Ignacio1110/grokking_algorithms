part of 'grokking_algorithms.dart';

///應用D&C原則，將大問題化為小問題再解決
///找一個基準值，小於等於基準值的放一邊，大於基準值的放另一邊
///依照同樣邏輯，繼續找小問題的解答，最後就能找到答案
List<int> quickSort(List<int> array) {
  if (array.length < 2) {
    return array;
  } else {
    int pivot = array[0];
    array.removeAt(0);
    List<int> less = [];
    List<int> greater = [];
    for (var num in array) {
      if (num <= pivot) {
        less.add(num);
      } else {
        greater.add(num);
      }
    }
    return quickSort(less) + [pivot] + quickSort(greater);
  }
}
