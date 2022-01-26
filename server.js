//use inquror for options 
// const express = require('express');
const inquirer = require('inquirer');
// Import and require mysql2
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// app.use(express.static('public'));

// Connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // MySQL password
    password: 'Root',
    database: 'movies_db'
  },
  console.log(`Connected to the movies_db database.`)
);





// Hardcoded query: DELETE FROM course_names WHERE id = 3;

// app.delete('/api/movie/:id', (req, res) => {
//     // console.log(results);
//     db.query(`DELETE FROM movies WHERE id=?;`,1  ,(err, result) => {
//         if (err) {
//           console.log(err);
//         }
//         console.log(result);
//         console.log(res.body);
//       });
//     });

    // app.delete('/api/movie/:id', (req, res) => {
    //     console.log(req.params.id);
    //     db.query('DELETE FROM movies WHERE id=?', req.params.id, function (err, results) {
    //         res.json(results);
    //     })
    // })

// db.query(`DELETE FROM course_names WHERE id = ?`, 3, (err, result) => {
//   if (err) {
//     console.log(err);
//   }
//   console.log(result);
// });

// Update review.
// app.post('/api/update-review/:id', (req, res) => {
//     let movieName = req.body.title;
//     let movieId = req.params.id;
//     let reviewText = req.body.review;
//     db.query(`UPDATE reviews SET review = ? where movie_id = ?;`, [reviewText, movieId], (err, results) => {
//         console.log(`Movie ${movieName} ID ${movieId} review: ${reviewText}`)
//         res.json(`${movieName} review submitted!`)
//     })
// });


// app.get('/api/movies', (req, res) => {
//     // console.log(results);
//     db.query('SELECT * FROM movies', function (err, results) {
//         console.log(results);
//         res.json(results);
//       });
// })

// app.post('/api/add-movie', (req, res) => {
//     // console.log(results);
//     db.query('SELECT * FROM movies INSERT INTO movies movie_name VALUES ("asdfasdf")') , function (err, results) {
                                            
//         console.log(results);
//        console.log(req.params.id); 
//       }
// })



// app.post('/api/movies', (req, res) => {
//     db.query(`INSERT INTO movies (movie_name)
//     VALUES (?);`,req.body.movie, function (err, results) {
//         console.log(results);
//         res.json(results)
//     })
// });
// Query database
// db.query('SELECT * FROM movies', function (err, results) {
//   console.log(results);
// });

// // Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});