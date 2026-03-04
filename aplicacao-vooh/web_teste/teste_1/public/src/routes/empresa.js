var express = require("express");
var router = express.Router();
var empresaController = require("../controllers/empresaController");

router.get("/token", function (req, res) {
    empresaController.token(req, res);
});
router.post("/cadastrar", function (req, res) {
    empresaController.cadastrar(req, res);
});

module.exports = router;