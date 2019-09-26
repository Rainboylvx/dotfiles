#!/bin/env node
const {execSync} = require("child_process")
const {existsSync} = require("fs")

const want_compare_code_path = "./1"
const right_code_path = "./2"

const compare_path = "/tmp/compare"
const generate_compare_data_shell_code = `python data_generator.py > ${compare_path}/input`


if( !existsSync(compare_path))
    execSync(`mkdir -p ${compare_path}`)

let cnt = 0;
while(1){
    execSync(generate_compare_data_shell_code)
    execSync(`${want_compare_code_path} < ${compare_path}/input > ${compare_path}/output.a`)
    execSync(`${right_code_path} < ${compare_path}/input > ${compare_path}/output.b`)
    try {
    let ret = execSync(`diff ${compare_path}/output.a ${compare_path}/output.b`);
    }
    catch(e){
        console.log(`=== error answer! ===`);
        process.exit(1)
    }
    console.log(`test right ${cnt++}`);
}
