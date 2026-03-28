const cds = require('@sap/cds')
module.exports = async (srv) => {
    const ECPersonalInformation = await cds.connect.to('ECPersonalInformation')
    srv.on('*', async function (req) {
        return ECPersonalInformation.run(req.query);
    });
}