import express , { Express, Request, Response } from 'express';
const app: Express = express();
const port = process.env.PORT || 3000;

app.use(express.static('public'))

app.get('/', (req: Request, res: Response) => {
  res.send('Hello World This s!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})