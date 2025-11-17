import * as fs from 'fs';

console.log('Incrementing build number...');
fs.readFile('VERSION', function(err, content) {
    if (err) throw err;
    console.log(String(content));
    var parts = String(content).split(".");
    parts[parts.length - 1] = parseInt(parts[parts.length - 1]) + 1;
    content = parts.join(".")
    fs.writeFile('VERSION', content, function(err){
        if (err) throw err;
        console.log(`Current build number: ${content}`);
    })
});
