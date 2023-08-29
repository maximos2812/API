import { Router } from "express";
import {inserircliente, listarclientes, listarclientesPesquisa }from "../repository/cliente.js";


const server = Router()


server.post( '/inserir' , async(req,resp) => {

    try{

        const cliente = req.body;
        const resposta  = await inserircliente(cliente)
       

        console.log(resposta)
        resp.send(resposta)

    }




    catch(erro){

        resp.status(400).send(
            {
                erro: 'ocorreu um erro'
            }
        )

    }

} )


server.get ('/consulta/:nome'  , async (req , resp) => {

    try{
     
        const {nome} = req.params

        const resposta = await listarclientesPesquisa(nome)
        
     
        resp.send(resposta)

    }


    catch(erro){
        
        resp.status(400).send(
            {
                erro:'ocorreu um erro'
            }
        )
    }
})


server.get ('/consulta'  , async (req , resp) => {

    try{
     
        const cliente = req.query
        
        const resposta = await listarclientes(cliente)
        
     
        resp.send(resposta)

    }


    catch(erro){
        
        resp.status(400).send(
            {
                erro:'ocorreu um erro'
            }
        )
    }
})




export default server