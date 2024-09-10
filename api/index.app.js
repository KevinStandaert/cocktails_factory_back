import express from 'express';
import cors from 'cors';
import router from './routers/index.router.js';
import errorMiddleware from './middlewares/error.middleware.js';
import createDoc from './helpers/api.doc.js';
import httpLogger from './middlewares/httpLogger.js';

const app = express();

app.use(cors({
  origin: process.env.FRONTEND_URL,
  methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
  credentials: true,
}));

app.use(express.json());

app.get('/api', (req, res) => {
  res.json({ message: 'Bonjour du backend !' });
});
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

createDoc(app);

app.use(httpLogger);

app.use(router);

app.use(errorMiddleware);

export default app;
