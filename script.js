let displayValue = '';

function appendToDisplay(value) {
    displayValue += value;
    document.getElementById('display').value = displayValue;
}

function clearDisplay() {
    displayValue = '';
    document.getElementById('display').value = displayValue;
}

function calculate() {
    try {
        let result = eval(displayValue);
        document.getElementById('display').value = result;
        displayValue = result.toString();
    } catch (error) {
        document.getElementById('display').value = 'Error';
    }
}

function backspace() {
    displayValue = displayValue.slice(0, -1);
    document.getElementById('display').value = displayValue;
}

function addDot() {
    if (displayValue === '' || displayValue.slice(-1) === '+' || displayValue.slice(-1) === '-' || displayValue.slice(-1) === '*' || displayValue.slice(-1) === '/') {
        displayValue += '0.';
    } else if (!displayValue.includes('.')) {
        displayValue += '.';
    }
    document.getElementById('display').value = displayValue;
}

function changeSign() {
    if (displayValue.charAt(0) === '-') {
        displayValue = displayValue.slice(1);
    } else {
        displayValue = '-' + displayValue;
    }
    document.getElementById('display').value = displayValue;
}
