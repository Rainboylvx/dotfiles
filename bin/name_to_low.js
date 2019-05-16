#!/bin/env node
const fs = require("fs")

let file = process.argv[2]


let list = fs.readdirSync(file)
for ( let f of list){
    let _f = `${file}/${f}`
    let l_f = f.toLowerCase()
    fs.renameSync(`${file}/${f}`,`${file}/${l_f}`)
}
