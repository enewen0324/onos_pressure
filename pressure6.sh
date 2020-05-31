
up_l='curl -u onos:rocks -X POST -H "Content-type: application/json" -d' 
up_l_f1="'http://localhost:8181/onos/v1/flows?appId=app'"

for (( i=0; i<=45; i=i+1 ))
do
	for (( j=0; j<=45; j=j+1 ))
	do
				cat /dev/null > upload.json
				cat uppartv6 >> upload.json
				echo "\"ip\":\"fe80::d294:66ff:fe5d:$i$j/128\"" >> upload.json
				cat downpartv6 >> upload.json
				comd="$up_l @upload.json $up_l_f1"
				eval "$comd"
	done
done

