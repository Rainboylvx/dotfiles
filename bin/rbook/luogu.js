#!/bin/env node
const fs = require("fs")
var {execSync:e} = require("child_process")
const ejs = require("ejs")
let src  = fs.readFileSync(__dirname+"/nodelib/luogu_template.ejs",{encoding:'utf-8'})
var template = ejs.compile(src)

let id = process.argv.slice(2)

if( !id ){
  console.log(`usage: luogu_problem_lastCode pid1 pid2 ...`)
  process.exit(-1)
}
console.log(`download code :`)
console.log(id)



let cookie = ''

var getInfo = function(id){

  let a = e(`curl https://www.luogu.com.cn/problem/P${id} --cookie "${cookie}"`,{encoding:'utf-8'})
  let dataReg = /decodeURIComponent\("([\s\S]+?)"\)/
  //console.log(a)
  //console.log(dataReg.test(a))
  //console.log( a.match(dataReg))
  let data_string = a.match(dataReg)[1]
  var data = JSON.parse(decodeURIComponent(data_string))
  //console.log(JSON.stringify(data,null,4))
  //console.log(data.currentData.lastCode)
  return data
}



f = id[0]
let info = getInfo(f)
console.log(info.currentData.problem.pid,info.currentData.problem.title)
console.log(info.currentData.problem)
let tel = template(info.currentData.problem)
fs.writeFileSync(`1.md`,tel.trim(),{encoding:'utf-8'})
