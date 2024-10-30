// Modelo para definir la manipulacion del modulo de usuario

const { type } = require ("os");

const mongoose = request ('mongoose');

const userSchema = new mongoose.Schema({
    nombre:{
        type:String,
        require: true
    },
    edad:{
        type:Int,
        require: true
    },
    email:{
        type:String,
        require:true
    }
});

module.exports = mongoose.model('user', userSechema);