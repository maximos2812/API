import 'dotenv/config';
import inserir from './controller/cliente.js'
import carro   from  './controller/carro.js'

import express from 'express';
import cors from 'cors';



const server = express();
server.use (cors());
server.use(express.json())


server.use(inserir)
server.use(carro)






  server.listen(process.env.PORT , ()=> {
  console.log(` a API esta online na porta ${process.env.PORT}`)

})