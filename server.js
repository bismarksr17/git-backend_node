const express = require('express');
const app = express();
const PORT = process.env.POR || 300;

app.get('/hello', (req, res) => {
    res.json({message: 'HOLA MUNDO'})
})

app.listen(PORT, () => {
    console.log('Server is running on port', PORT)
})
