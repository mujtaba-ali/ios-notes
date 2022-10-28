const express = require("express")
const mongoose = require("mongoose")
var app = express()
var Data = require("./nodeSchema")

mongoose.connect("mongodb://localhost/notes", {useNewUrlParser: true, useUnifiedTopology:true})

mongoose.connection.once("open", ()=>{
    console.log("connected to db!")
}).on("error", (error)=>{
    console.log("failed to connect! "+error)
})

//create - post
app.post("/create", (req, res) => {
    var note = new Data({
        note: req.get("note"),
        title: req.get("title"),
        data: req.get("data")
    })
    note.save().then(()=>{
        if(note.isNew == false) {
            console.log("saved data!")
            res.send("saved data!")
        } else {
            console.log("failed!")
        }
    })

})


//delete - post
app.post("/delete", (req, res) => {
    Data.deleteMany({
        _id: req.get("id")
    }, (err) => {
        console.log("failed"+err)
    })
})

//update - post
app.post("/update", (req, res) => {
    Data.updateOne({
        _id:req.get("id")
    }, {
        note: req.get("note"),
        title: req.get("title"),
        date: req.get("date")
    }, (err) => {
        console.log("failed to update: "+err)
    })
    res.send("updated!")
})

//fetch - get
app.get("/fetch", (req, res) => {
    Data.find({}).then((dbitems)=>{
        res.send(dbitems)
    })
})


var server = app.listen(8081, "192.168.1.7", ()=>{
    console.log("server is running")
})