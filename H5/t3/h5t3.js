const { error } = require('console')
const fs = require('fs')
console.log("Reading file and calculating a sum...")

fs.readFile('numbers.txt', 'utf-8', (err, data) => {
    if (err) {
        console.error("Error reading file.", err.message);
        return;
    }

    const numbers = data.split(',').map(num =>parseInt(num.trim(), 10));

    const sum = numbers.reduce((acc, corr) => acc + corr, 0);

    console.log("sum is", sum)
})