class NameLoop {
  var names = ["Sushant", "Adarsh", "Mom"];

  String showName(var index) => names[((index % names.length))];
}
