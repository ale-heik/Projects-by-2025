const express = require('express');
const fs = require('fs');
const path = require('path');
const app = express();
const port = 3000;

// Mongoose-yhteys
const mongoose = require('mongoose');
const mongoDB = 'mongodb+srv://ae9688:fullstack@democluster.ayasp.mongodb.net/?retryWrites=true&w=majority&appName=DemoCluster';
mongoose.connect(mongoDB);
const db = mongoose.connection;

db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function () {
  console.log("Database test connected");
});

app.use(express.json());

// User-malli
const userSchema = new mongoose.Schema({
  name: String,
});

const User = mongoose.model('User', userSchema, 'users');

// Logger
const logger = (request, response, next) => {
  const date = new Date();
  const lDate = `${date.toLocaleDateString()} ${date.toLocaleTimeString()}`;
  const log = `${lDate}: ${request.method} ${request.url}\n`;

  const logFilePath = path.join(__dirname, 'requests.log');
  fs.appendFile(logFilePath, log, (err) => {
    if (err) {
      console.error('Error writing to log file:', err);
    }
  });

  console.log(log);
  next();
};

app.use(logger);

// Luo uusi käyttäjä
app.post('/users', async (request, response) => {
  const { name } = request.body;
  const user = new User({ name: name });
  try {
    const savedUser = await user.save();
    response.json(savedUser);
  } catch (error) {
    response.status(500).json({ error: error.message });
  }
});

// get all users
app.get('/users', async (request, response) => {
  try {
    const users = await User.find({});
    response.json(users);
  } catch (error) {
    response.status(500).json({ error: error.message });
  }
})


// get one user
app.get('/users/:id', async (request, response) => {
  const user = await User.findById(request.params.id)
  if (user) response.json(user)
  else response.status(404).end()
})

// delete one user
app.delete('/users/:id', async (request, response) => {
  const { id } = request.params;

  // Tarkista, että ID on validi ObjectId
  if (!mongoose.Types.ObjectId.isValid(id)) {
    return response.status(400).json({ error: 'Invalid user ID' });
  }

  try {
    const deletedUser = await User.findByIdAndDelete(id);
    if (deletedUser) {
      response.json(deletedUser);
    } else {
      response.status(404).json({ error: 'User not found' });
    }
  } catch (error) {
    response.status(500).json({ error: error.message });
  }
});

// Käynnistä palvelin
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
