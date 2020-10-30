#!/bin/sh
if [ $# -ne 1 ]; then
	echo "Usage: $0 file"
	exit 1
fi
FILE=${1}

echo ${FILE}

perl -pi -e 's/bgcolor="#FFFF99"/bgcolor="#ff9"/g' ${FILE}
perl -pi -e 's/ bgcolor="[^"]{7}"//g' ${FILE}
perl -pi -e 's/ (width|cellspacing|border|sdnum|height|style|v?align|sdval)="[^"]+"//g' ${FILE}
perl -pi -e 's/(>[0-9\.]+<)/ class="alignright"\1/g' ${FILE}
perl -pi -e 's/valign=middle//g' ${FILE}
perl -pi -e 's/td>-</td class="aligncenter">-</g' ${FILE}
perl -pi -e 's/td><b class="alignright"/td class="alignright"><b/g' ${FILE}
