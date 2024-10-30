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

// Agregar las rutas para manipular user

const User = require ('./Usuario/User');

// Registrar un usuario nuevo

app.post('/users', async(req, res)=>{
    try{
        const user = new User(req.body);
        await user.save();
        res.status(201).send(user);
    }catch(error){
        res.status(400).send(error);
    }
})

//Consultar todos los usuarios

app.get('/users', async(req, res)=>{
    try{
        const user = await user.find();;
        res.status(201).send(users);
    }catch(error){
        res.status(500).send(error);
    }
})

//Consultar un usuario por id

app.get('/users/:id', async(req, res)=>{
    try{
        const user = await user.findById(req.params.id);
        if(!user) return response.status(404).send();
        res.status(201).send(users);
    }catch(error){
        res.status(500).send(error);
    }
})

//Actualizar un usuario

app.get('/users/:id', async(req, res)=>{
    try{
        const user = await user.findByIdAndUpdate(req.params.id,req.body,{new:true, runValidators:true});
        if(!user) return response.status(404).send();
        res.status(201).send(users);
    }catch(error){
        res.status(500).send(error);
    }
})

//Eliminar un usuario

app.delete('/users/:id', async(req, res)=>{
    try{
        const user = await user.findByIdAndDelete(req.params.id);
        if(!user) return response.status(404).send();
        res.status(201).send(users);
    }catch(error){
        res.status(500).send(error);
    }
})