const http = require('http');
const fs = require('fs');

const hostname = '127.0.0.1';
const port = 3000;
const counterfile = './counterfile.txt';

// Luo palvelin
const server = http.createServer((req, res) => {
  // Lue laskurin arvo tiedostosta
  fs.readFile(counterfile, 'utf8', (error, data) => {
    if (error) {
      if (error.code === 'ENOENT') {
        // Jos tiedostoa ei ole, aloitetaan laskuri arvosta 1
        fs.writeFile(counterfile, '1', (err) => {
          if (err) {
            res.statusCode = 500;
            res.end('Server error: unable to create counter file.');
            return;
          }
          res.statusCode = 200;
          res.setHeader('Content-Type', 'text/html');
          res.write('<h1>Laskurisivu</h1>');
          res.write('<p>Laskurin arvo on 1</p>');
          res.end();
        });
      } else {
        // joku Muu virhe
        res.statusCode = 500;
        res.end('Server error');
      }
    } else {
      // Päivitä laskurin arvo
      let count = parseInt(data, 10) || 0;
      count++;

      // Kirjoita uusi arvo tiedostoon
      fs.writeFile(counterfile, count.toString(), (err) => {
        if (err) {
          res.statusCode = 500;
          res.end('Server error: unable to update counter.');
          return;
        }

        // Lähetä laskurin arvo vastauksena
        res.statusCode = 200;
        res.setHeader('Content-Type', 'text/html');
        res.write('<h1>Laskurisivu</h1>');
        res.write(`<p>Laskurin arvo on ${count}</p>`);
        res.end();
      });
    }
  });
});

// Käynnistä palvelin
server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
