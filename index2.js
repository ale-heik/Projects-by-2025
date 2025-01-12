const express = require('express');
const fs = require('fs');
const path = require('path');
const app = express();
const port = 3000;

// use mongoose
const mongoose = require('mongoose')

// connection string - EDIT YOUR OWN HERE
const mongoDB = 'mongodb+srv://ae9688:fullstack@democluster.ayasp.mongodb.net/?retryWrites=true&w=majority&appName=DemoCluster';
// connect mongodb
mongoose.connect(mongoDB)
const db = mongoose.connection

// check connection - ok or error
db.on('error', console.error.bind(console, 'connection error:'))
db.once('open', function() {
  console.log("Database test connected")
})

app.use(express.json())

// new schema
const userSchema = new mongoose.Schema({
  name: String
})

// new model
const User = mongoose.model('User', userSchema, 'users')

const personSchema = new mongoose.Schema({
  name: { type: String, required: true },
  age: { type: Number, min: 0 },
  email: String
})

// create loggerz
const logger = (request, response, next) => {
    const date = new Date();
    const lDate = `${date.toLocaleDateString()} ${date.toLocaleTimeString()}`;
    const log = `${lDate}: ${request.method} ${request.url}\n`;

    // save logging info to file
    const logFilePath = path.join(__dirname, 'requests.log');
    fs.appendFile(logFilePath, log, (err) => {
        if (err) {
            console.error('Error writing to log file:', err)
        }
    });

    console.log(log);
    next();
};

// put logger to use
app.use(logger);

// create a new user
app.post('/users', async (request, response) => {
  // Get name from request
  const { name } = request.body

  // Create a new user
  const user = new User({
    name: name
  })

  // Save to db and send back to caller
  const savedUser = await user.save()
  response.json(savedUser)  
})


// get all users
app.get('/users', (request, response) => {
    response.json(users)
  })

// get one user
app.get('/users/:id', (request, response) => {
    // const id = request.params.id
    const { id } = request.params
    const user = users.find(user => user.id === id)
    // check if user exists or return 404
    if (user) response.json(user)
    else response.status(404).end()
  })

  // delete one user
app.delete('/users/:id', (request, response) => {
    //const id = request.params.id
    const { id } = request.params
    users = users.filter(user => user.id !== id)
    // Just send "204 no content" status code back
    response.status(204).end()
  })

  // update user data
app.put('/users/:id', (request, response) => {
    //const id = request.params.id
    const { id } = request.params
    // const name = request.query.name
    const { name } = request.query
    const user = users.find(user => user.id === id)
    if (user) {
      user.name = name
      response.status(200).end()
    } else {
      response.status(204).end()
    }
  })

// Käynnistä palvelin
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
