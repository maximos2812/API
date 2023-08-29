
import { con } from "../controller/conection.js";


 export async function inserircarro ( veiculo ){

    const comando = `
     INSERT INTO TB_VEICULO (id_tipo_veiculo ,nm_modelo, ds_marca, ds_ano, ds_placa)
                     VALUES (? ,?, ?, ?, ?)
                     ` 
    
  const [resposta] = await con.query(comando , [
    veiculo.IDtipoveiculo,
    veiculo.modelo,
    veiculo.marca,
    veiculo.ano,
    veiculo.placa
  ])

  veiculo.id = resposta.insertId;
  return  veiculo;
 }