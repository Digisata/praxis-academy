main() {
  List numbers = [7, 26, 5, 4, 15, 2, 1];
  List numbers2 = [7, 1, 5, 120, 13, 15, 4];

  var max = maximumValue(numbers, 6, 4);
  var same = sameNumber(numbers, numbers2);
  var maxAndMin = maxMinValue(numbers2);
  var indexAndValue = indexSameWithValue(numbers, 0);
  var insertion = insertionSort(numbers2);
  var backInsertion = backwardInsertionSort(numbers);

  print(max);
  print(same);
  print('Max value is ${maxAndMin[0]}, and min value is ${maxAndMin[1]}');
  print('The value of array at index $indexAndValue same with its index');
  print(insertion);
  print(backInsertion);
}

// find max value between two elements of array based on given indexes
int maximumValue(List numbers, int index1, int index2) {
  int max = numbers[index1];
  return numbers[index2] > max ? numbers[index2] : max;
}

// find same number between two array
int sameNumber(List numbers, List numbers2) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers2[j]) return numbers[i];      
    }
    // if(numbers[i] == numbers2[i]) return numbers[i];
  }
}

// find maximum and minimun value 
List maxMinValue(List numbers) {
  List result = [];
  var max = numbers[0], min = numbers[0];
  for(int i in numbers) {
      if(max < i) max = i;
      if(min > i) min = i;
  }
  result.add(max);
  result.add(min);
  return result;
}

// return is index same as its value
int indexSameWithValue(List numbers, int index) {
  if(index == numbers[index]) return index;
}

// insertion sort
List insertionSort(List numbers) {
  for(int i = 1; i < numbers.length; i++) {
    var key = numbers[i];
    var j = i;
    while(j > 0 && numbers[j - 1] > key) {
      numbers[j] = numbers[j - 1];
      j = j - 1;
    }
    numbers[j] = key;
  }

  return numbers;
}

// backward insertion sort
List backwardInsertionSort(List numbers) {
  for(int i = numbers.length - 1; i >= 0; --i) {
    var key = numbers[i];
    var j = i + 1;
    while(j < numbers.length && key > numbers[j]) {
      numbers[j - 1] = numbers[j];
      j++;
    }
    numbers[j - 1] = key;
  }
  return numbers;
}