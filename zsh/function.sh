# termbin.com
#alias tb="nc termbin.com 9999"
function tb(){
    cat $1 | nc termbin.com 9999 | clipcopy
    clippaste
}

function tbb(){
    cat $1 | nc termbin.com 9999 | cat
}
