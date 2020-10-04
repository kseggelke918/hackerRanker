// HackerLand University has the following grading policy:

// Every student receives a  in the inclusive range from  to .
// Any  less than  is a failing grade.
// Sam is a professor at the university and likes to round each student's  according to these rules:

// If the difference between the  and the next multiple of  is less than , round  up to the next multiple of .
// If the value of  is less than , no rounding occurs as the result will still be a failing grade.
// Examples

//  round to  (85 - 84 is less than 3)
//  do not round (result is less than 40)
//  do not round (60 - 57 is 3 or higher)
// Given the initial value of  for each of Sam's  students, write code to automate the rounding process.

// Function Description

// Complete the function gradingStudents in the editor below.

// gradingStudents has the following parameter(s):

// int grades[n]: the grades before rounding
// Returns

// int[n]: the grades after rounding as appropriate
// Input Format

// The first line contains a single integer, , the number of students.
// Each line  of the  subsequent lines contains a single integer, .

// Constraints

// Sample Input 0

// 4
// 73
// 67
// 38
// 33
// Sample Output 0

// 75
// 67
// 40
// 33
// Explanation 0

// image

// Student  received a , and the next multiple of  from  is . Since , the student's grade is rounded to .
// Student  received a , and the next multiple of  from  is . Since , the grade will not be modified and the student's final grade is .
// Student  received a , and the next multiple of  from  is . Since , the student's grade will be rounded to .
// Student  received a grade below , so the grade will not be modified and the student's final grade is .

'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

function gradingStudents(grades) {
    const newGrades = grades.map(grade => {
        if (grade < 38) {
            return grade 
        } else if ((grade + 2) % 5 === 0) {
            return grade + 2
        } else if ((grade + 1) % 5 === 0) {
            return grade + 1
        } else {
            return grade 
        }
    })
    return newGrades
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const gradesCount = parseInt(readLine().trim(), 10);

    let grades = [];

    for (let i = 0; i < gradesCount; i++) {
        const gradesItem = parseInt(readLine().trim(), 10);
        grades.push(gradesItem);
    }

    const result = gradingStudents(grades);

    ws.write(result.join('\n') + '\n');

    ws.end();
}
