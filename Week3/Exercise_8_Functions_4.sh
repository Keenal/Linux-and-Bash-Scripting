function howodd {
	local perc=0
	local total=0

	for i in $arr
	do
		if $[[$i % 2 -ne 0 ]]
		then
			let perc=perc+1
		fi
	done
	total=${#arr[*]}
	echo $perc/$total	
}
