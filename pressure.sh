up_l='curl -u onos:rocks -X POST -H "Content-type: application/json" -d' 
up_l_f1="'http://localhost:8181/onos/v1/flows?appId=app'"

for (( i=0; i<=45; i=i+1 ))
do
	for (( j=0; j<=45; j=j+1 ))
	do
				cat /dev/null > upload.json
				sed "s/A.B.C.D/192.168.1${i}.1${j}\/32/g" uppart >> upload.json
				comd="$up_l @upload.json $up_l_f1"
				#cat upload.json
				eval "$comd"
	done
done

