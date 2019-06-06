const express = require('express')
const app = express()
const port = 3000

const message = "If you're reading this, this app has no blacklisted dependencies"

app.get('/', (req, res) => res.send(message))

app.listen(port, () => console.log(`Listening on port ${port}`))