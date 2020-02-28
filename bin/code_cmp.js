#!/bin/env node
/* 
 * -1 code 1,fast but wrong possibly
 * -2 code 2,right but not fast
 * -n [100] test right count to print
 * */
const {execSync} = require("child_process")
const {existsSync} = require("fs")

const want_compare_code_path = "./1"
const right_code_path = "./2"

const compare_path = "compare"
const generate_compare_data_shell_code = `python data_generator.py > ${compare_path}/input`

var compare_cnt_to_print = 10 ;
var compare_cnt_cnt  = 0 ;


if( !existsSync(compare_path))
    execSync(`mkdir -p ${compare_path}`)

let cnt = 0;
while(1){
    execSync(generate_compare_data_shell_code)
    execSync(`${want_compare_code_path} < ${compare_path}/input > ${compare_path}/output.a 2>/dev/null`)
    execSync(`${right_code_path} < ${compare_path}/input > ${compare_path}/output.b 2>/dev/null`)
    try {
    let ret = execSync(`diff ${compare_path}/output.a ${compare_path}/output.b`);
    }
    catch(e){
        console.log(`=== error answer! ===`);
        process.exit(1)
    }
    cnt = (cnt+1) %  compare_cnt_to_print
    if(!cnt ){
      compare_cnt_cnt++
      console.log(`test right ${compare_cnt_to_print}: ${compare_cnt_cnt}`);
    }
}
