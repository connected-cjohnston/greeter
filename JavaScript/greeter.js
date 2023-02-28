'use strict'

function salutation(hour) {
  if (hour >= 6 && hour <= 11) return "Good morning ";
  if (hour >= 18 && hour <= 21) return "Good evening ";
  if (hour >= 22 || hour <= 5) return "Good night ";
  return 'Hello ';
}

module.exports = function greeter(name, time) {
  const formattedName = name.trim()[0].toUpperCase() + name.trim().slice(1);
  const defaultHour = 12;

  const hour = time ? time.getHours() : defaultHour;

  return salutation(hour) + formattedName;
};
