import express from 'express';
import cors from 'cors';
import connection from '../database/database.js';

const app = express();

app.use(cors());
app.use(express.json());

app.get('/memes', async (req, res) => {

    try {



    } catch (error) {
        console.log(error);
        res.status(500);
    }

})

app.post('/memes', async (req, res) => {


    try {



    } catch (error) {
        console.log(error);
        res.status(500);
    }

})


app.get('/health', (req, res) => {
    res.sendStatus(200);
})

export default app;