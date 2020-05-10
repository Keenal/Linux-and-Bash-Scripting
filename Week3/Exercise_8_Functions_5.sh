function fib {
	a=0
	b=1
	for i in $arr
	do
		echo -n "$a "
		fib=$((a + b))
		a=$b
		b=$fib
	done
}
