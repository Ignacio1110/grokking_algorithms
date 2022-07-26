part of 'grokking_algorithms.dart';

int findSmallestIndex(List<int> arr) {
  int smallest = arr[0];
  int smallestIndex = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < smallest) {
      smallest = arr[i];
      smallestIndex = i;
    }
  }
  return smallestIndex;
}

///目前寫法會refrece到陣列，因此 remove會移除原本陣列元素
List<int> selectionSort(List<int> arr) {
  List<int> newArray = [];
  while (arr.isNotEmpty) {
    int smallestIndex = findSmallestIndex(arr);
    newArray.add(arr[smallestIndex]);
    arr.removeAt(smallestIndex);
  }
  return newArray;
}
