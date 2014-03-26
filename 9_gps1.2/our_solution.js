// GPS 1.2 - JavaScript
 
// YOUR FULL NAMES:
//  1. Nick Giovacchini
//  2. Kevin Zhou
 
 
//  1. "YOU SIGNED... WHO?!"
 
 var john = {
   name: "John Doe",
   age: 30,
   quote: "Ready or not, here I come!"
 };
 
 var adam = {
   name: "Adam Smith",
   age: 40,
   quote: "Here they come!"
 };
 
// 2. "Here they Come!"

var adamSandler = {
  name: "Adam Sandler",
  age: 47,
  quote: "That's your home! Are you too good for your home?!"
};

var kristenBell = {
  name: "Kristen Bell",
  age: 33,
  quote: "Do you wanna build a snowman?"
};

var jimCarrey = {
    name: "Jim Carrey",
    age: 52,
    quote: "...So you're telling me there's a chance? YEAH!"
};

var list = [adamSandler, kristenBell, jimCarrey];
 
 
//    3. "TIME IS MONEY!"
// YOUR CODE HERE!

function Client(name, age, quote){
    this.name = name;
    this.age = age;
    this.quote = quote;
}
 
var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";
 
//     4. "SHOW 'EM OFF!"
 
Client.prototype.print = function () {
  console.log("Name: " + this.name + "\nAge: " + this.age + "\nQuote: " + this.quote); 
}

//       ** BONUS **