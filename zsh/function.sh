# termbin.com
#alias tb="nc termbin.com 9999"
function tb(){
    cat $1 | nc termbin.com 9999 | clipcopy
    clippaste
}

function tbb(){
    cat $1 | nc termbin.com 9999 | cat
}

function zshclicolors() {
    i=1
    for color in {000..255}; do;
        c=$c"$FG[$color]$color✔$reset_color  ";
        if [ `expr $i % 8` -eq 0 ]; then
            c=$c"\n"
        fi
        i=`expr $i + 1`
    done;
    echo $c | sed 's/%//g' | sed 's/{//g' | sed 's/}//g' | sed '$s/..$//';
    c=''
}
