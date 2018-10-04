

function getDigit(pattern) {
    return {
        " _ | ||_|": 0,
        "     |  |": 1,
        " _  _||_ ": 2,
        " _  _| _|": 3,
        "   |_|  |": 4,
        " _ |_  _|": 5,
        " _ |_ |_|": 6,
        " _   |  |": 7,
        " _ |_||_|": 8,
        " _ |_|  |": 9,
        " _ |_| _|": 9, // alternative 9
    }[pattern];
}

function getNumber(lines) {
    // Chop each line into 9 pieces of 3 chars:
    lines = lines.map( line => line.match(/.../g) );
    // Combine the pieces of each digit-pattern together:
    return +lines[0].map ( (piece, i) => piece + lines[1][i] + lines[2][i] )
        // Translate each pattern of 3x3=9 characters to a digit
        .map(getDigit)
        // Join digits together into one number
        .join('');
    if (lines[1][i] == undefined){
        console.log("uityuytyyuttytutyuttuu")
    }
}
var fs = require('fs')

const data = fs.readFileSync("/home/vishal/Downloads/RoR_test/input_user_story_1.txt", 'utf8');

const lines = data.split('\n');
for (var i =0; i < lines.length - 1; i+=4) {
    console.log(getNumber(lines.slice(i, i+3)));
}

// console.log(a,b,c);
// enukeAssignment
// console.log(b);


