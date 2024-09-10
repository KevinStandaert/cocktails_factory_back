import { createServer } from 'node:http';
import './api/helpers/env.load.js';
import app from './api/index.app.js';

const server = createServer(app);

const PORT = process.env.PORT || 3000;

server.listen(PORT, () => {
  console.log(`Server launched at http://localhost:${PORT}`);
});
