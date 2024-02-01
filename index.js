const express = require('express');
const app = express();
const port = 3000;
app.get('/', (req, res) => {
    res.send('Hello World');
}
);

app.get("/ping", (req, res) => {
    res.send("pong");
});

app.get("/post", (req, res) => {
    res.status(200).json({ title: "Post 1", content: "This is my first post" })
});
app.listen(3000, () => {
    console.log(`Server is running on port ${port}`);
});