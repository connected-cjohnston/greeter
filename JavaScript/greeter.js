'use strict'

function greeter(name, time) {
  const formattedName = name.trim()[0].toUpperCase() + name.trim().slice(1);

  const sixAM = new Date();
  sixAM.setTime("06:00:00");
  console.log(sixAM);

  if (time && time >= sixAM) {
    return "Good morning " + formattedName;
  }

  return "Hello " + formattedName;
}

module.exports = greeter;
