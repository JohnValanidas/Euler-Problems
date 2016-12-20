var multiples = function(max) {
  var multiple1 = 3;
  var multiple2 = 5;
  var cont = [];
  while(multiple1 < max) {
    if (((multiple1 % multiple2) !== 0)) {
      cont.push(multiple1);
      multiple1 = multiple1 +3;
    }
    else {
      multiple1 = multiple1 + 3;
    }
  }
  multiple1 = 3;
  while(multiple2 < max) {
      cont.push(multiple2);
      multiple2 = multiple2 + 5;
  }
  return cont;
};
var sum = function(array) {
  var index = 0;
  var sum = 0;
  while (index < array.length) {
    sum = sum + array[index];
    index++;
  }
  return sum;
};

console.log(sum(multiples(1000)));
