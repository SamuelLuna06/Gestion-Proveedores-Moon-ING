// Conexión a BD

const express = requiere('express');
const mongoose = requiere('mongoose');

const app = express();
const PORT = 3000;

// Crear el cuerpo de las peticiones (Middleware)

app.use(express.json());

// Conexión a BD

mongoose.connect('mongodb://localhost:2701/BDMongo',{
    useNewURLParser:True,
    useFieldTopology:True
}).then(()=>console.log('Se conecto a MongoDB.'))
.catch(err=>console.error('No se coneto a BD error:', err));

// Iniciar servidor

app.listen(PORT,()=>{
    console.log('Servidor ejecutandose sobre el puerto:${PORT}');
});