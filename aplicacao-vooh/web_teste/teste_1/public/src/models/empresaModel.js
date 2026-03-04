var database = require("../database/config")

function cadastrar(
    cnpj,
    razaoSocial,
    telefoneContato,
    email,
    senha,
    token
) {
    var instrucaoSql = `
        INSERT INTO Empresa (cnpj, razaoSocial, telefoneContato, email, senha, token)
        VALUES (
            '${cnpj}','${razaoSocial}','${telefoneContato}', '${email}', '${senha}', '${token}'
        );
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    cadastrar,
};