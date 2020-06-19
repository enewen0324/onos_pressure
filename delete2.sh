

for (( i=1; i<=5000; i=i+1 ))
do
	gid=$(( $i + 65536 ))			
	curl -u onos:rocks -X DELETE --header 'Accept: application/json' "http://localhost:8181/onos/v1/groups/of%3A000078321bdf7600/0x${gid}"
done
