function calculateDayBetweenDates(startDate, endDate) {
  var start = new Date(startDate);
  var end = new Date(endDate);
  var diff = end.getTime() - start.getTime();
  var days = diff / (1000 * 60 * 60 * 24);
  return days;
}
