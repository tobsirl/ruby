function calculateDayBetweenDates(startDate, endDate) {
  var start = new Date(startDate);
  var end = new Date(endDate);
  var diff = end.getTime() - start.getTime();
  var days = diff / (1000 * 60 * 60 * 24);
  return days;
}

['ant', 'bat', 'cat', 42].forEach((element) => console.log(element));

// sort and array of strings
const array = ['a', 'c', 'b'];

function sortStrings(array) {
  return array.sort();
}

const result = sortStrings(array);
console.log(result);
