'use strict'

// Greeter

// Before you start:
// Try not to read ahead.
// Do one task at a time. The trick is to learn to work incrementally.

// This kata demonstrates the problems of static scoped functions and objects.
// All tests should always pass, regardless of environment conditions.

// 1. Write a `Greeter` class with `greet` function that receives a `name`
//    as input and outputs `Hello <name>`.
//    You are allowed to construct `Greeter` object as you please.
// 2. `greet` trims the input
// 3. `greet` capitalizes the first letter of the name
// 4. `greet` returns `Good morning <name>` when the time is 06:00-12:00
// 5. `greet` returns `Good evening <name>` when the time is 18:00-22:00
// 6. `greet` returns `Good night <name>` when the time is 22:00-06:00

const greeter = require('./greeter');

describe('greeter', () => {
  it('should return Hello Bob when given a name', () => {
    expect(greeter("Bob")).toEqual("Hello Bob");
  })

  it('should trim trailing spaces from the name', () => {
    expect(greeter("Bob     ")).toEqual("Hello Bob");
  })

  it('should trim leading spaced from name', () => {
    expect(greeter("      Bob")).toEqual('Hello Bob');
  })

  it('should capitalize the first character of the name', () => {
    expect(greeter('bob')).toEqual('Hello Bob');
  })

  it('should return Good morning Bob when the time is between 6am and noon', () => {
    const time = new Date();
    time.setTime('11:00:00');

    expect(greeter('Bob', time)).toEqual('Good morning Bob');
  })

  // it('should return Good evening when it is evening', () => {
  //   const time = new Date();
  //   time.setTime('20:00:00');

  //   expect(greeter('Bob', time)).toEqual('Good evening Bob');
  // })
})
