#!/bin/env node
const fs = require("fs")

let file = process.argv[2]


let list = fs.readdirSync(file)
for ( let f of list){
    let _f = `${file}/${f}`
    let stat = fs.statSync(_f)
    if(stat.isFile()){
        let _content = fs.readFileSync(`${file}/${f}`,{encoding:'utf-8'})
        let content = _content.trim()
        fs.writeFileSync(`${file}/${f}`,content,{encoding:'utf-8'})
        console.log(`done! ${file}/${f}`)
    }
}
