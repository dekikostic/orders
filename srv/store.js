const cds = require("@sap/cds");

module.exports = (srv) => {
  srv.on("deleteKg", async (req) => {
    console.log("Deleting orders with unit = kg");
    await DELETE.from("Orders").where`items.unit='kg'`;
  });
};
