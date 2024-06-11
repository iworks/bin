#!/usr/bin/env bash
#
# filename to lowercase
rename -f 'y/A-Z/a-z/' *
# chars
rename -f 's/ /_/g' *
rename -f 's/,//g' *
rename -f 's/\!//g' *
rename -f 's/\\342\\200\\223/-/g' *
# ą *
rename -f 's/\\304\\205/a/g' *
rename -f 's/ą/a/g' *
# ć *
rename -f 's/\\344\\207/c/g' *
rename -f 's/ć/c/g' *
# ę *
rename -f 's/\\304\\231/e/g' *
rename -f 's/ę/e/g' *
# ł *
rename -f 's/\\305\\202/l/g' *
rename -f 's/ł/l/g' *
# ń *
rename -f 's/\\305\\204/n/g' *
rename -f 's/ń/n/g' *
# ó *
rename -f 's/\\303\\263/o/g' *
rename -f 's/ó/o/g' *
# ś *
rename -f 's/\\305\\233/s/g' *
rename -f 's/ś/s/g' *
# ż *
rename -f 's/\\305\\274/z/g' *
rename -f 's/ż/z/g' *
# ź *
rename -f 's/\\305\\272/z/g' *
rename -f 's/ź/z/g' *
# other *
rename -f 's/_compressed\.pdf$/.pdf/g' *
rename -f 's/_\.pdf$/.pdf/g' *
