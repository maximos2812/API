
import { Router } from "express";
import { inserircarro } from "../repository/carro.js";

const server = Router()

server.post( '/veiculo' , async (resp,req) =>{
   
  try{
    const veiculo = req.body
    const reposta = await inserircarro(veiculo)

    resp.send(reposta)
  }

  catch (err){
    resp.status(500).send({erro:err.message})
  }

})
 



export default server