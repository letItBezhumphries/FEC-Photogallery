const express = require('express');
const app = express();
const PORT = process.env.PORT || 3003;

// Init Middleware
app.use(
  express.json({
    extended: false
  })
);

app.get('/*', (req, res) => {
  res.send('Hello World!!!');
});

app.listen(PORT, () => {
  console.log(`server running at: ${PORT}`);
});
