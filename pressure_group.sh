
up_l='curl -u onos:rocks -X POST -H "Content-type: application/json" -d'
up_l_g1='http://localhost:8181/onos/v1/groups/of:000078321bdf7600'

for (( i=1; i<=5000; i=i+1 ))
do
				gid=$(( $i + 65536 ))			
				cat /dev/null > upload.json
				sed "s/GGININ/${i}/g;s/QAQ/$gid/g;s/AABBCCDD/$gid/g" group >> upload.json
				comd="$up_l @upload.json $up_l_g1"
				#cat upload.json
				eval "$comd"
done
