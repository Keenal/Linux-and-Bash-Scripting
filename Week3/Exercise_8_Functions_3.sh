function nevens {
	count=0
	for i in $arr
	do
		if [[ $(($i % 2)) -eq 0 ]]
		then
			let count=count+1
		fi
	done
	echo $count
}
