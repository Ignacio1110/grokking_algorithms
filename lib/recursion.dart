part of 'grokking_algorithms.dart';

///遞迴函式都是由兩個部分組成
///Base Case與Recursive Case
///Base Case 程式停止
///Recursive Case 程式呼叫自己
///
///countdown 倒數至1為止
///[i]為起始值
void countdown(int i) {
  print(i);
  if (i <= 1) {
    //base case
    return;
  } else {
    //recursive case
    countdown(i - 1);
  }
}

///階層函數
int factorial(int x) {
  if (x == 0) {
    return 1;
  } else {
    return x * factorial(x - 1);
  }
}

///計算陣列內每個元素的和
///[array]為整數陣列
int sumOfArray(List<int> array) {
  if (array.isEmpty) {
    return 0;
  } else {
    return array[0] + sumOfArray(array.sublist(1));
  }
}
