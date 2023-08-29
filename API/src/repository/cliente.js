import { con } from "../controller/conection.js";


export  async function inserircliente(cliente){

    const comando = `

      insert into tb_cliente (nm_cliente , ds_email ,ds_telefone , ds_cpf ,ds_cnh)
	  values(? ,? ,? , ? , ?)

      `

  const [resposta] = await  con.query( comando ,  [cliente.cliente , cliente.email , cliente.telefone , cliente.cpf , cliente.cnh ])
  cliente.id = resposta.insertId 

  return cliente ;

}


export async function listarclientes() {
  const comando = `
      SELECT * 
      FROM tb_cliente  
  `

  const [resposta ] = await con.query(comando);

  return resposta;
}


export async function listarclientesPesquisa(nome) {
  const comando = `
      SELECT * 
      FROM tb_cliente 
      WHERE nm_cliente like ? `

  const [resposta]= await con.query(comando, [`%${nome}%`]);

  return resposta;
}
