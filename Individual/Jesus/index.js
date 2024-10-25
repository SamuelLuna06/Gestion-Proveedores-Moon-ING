const express = require ('express');
const mongoose = require ('mongoose')

const app=express();
const PORT = 3000;

//crear el cuerpo de las peticiones (Middleware)

app.use(express.json())

// conexion a db

mongoose.use('mongodb://localhost:27017//BDMongo',{
    useNewUrlParser: true,
    useUnidfieldTopology: True

}).then(()=>console.log('se conecto a MongoBD'))
.catch(err=>console.log('No se conecto', err));

// Inciar servidor
app.listen(PORT,()=>{
    console.log('servidor ejecutando en el puerto $(PORT)')
});