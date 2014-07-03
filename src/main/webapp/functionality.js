function onDigitPressed(digit) {
    document.getElementById("display").value += digit;
}
function onCleanPressed() {
    document.getElementById("display").value = "";
}
function onMathFunctionPressed(sign) {
    document.getElementById("display").value += sign;
}
function onDecimalPressed() {
    document.getElementById("display").value += '.';
}
function onCleanLastPressed() {
    var elements = document.getElementById("display").value;
    var cleanLast = elements.replace(elements.charAt(elements.length - 1), "");
    document.getElementById("display").value = cleanLast;
}
