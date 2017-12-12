const express = require('express')
const app = express()

process.on('SIGINT', function() {
    process.exit();
});

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(3000, () => console.log('Example app listening on port 3000!'))
