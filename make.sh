for i in $(seq 0 46); do
	j=$(printf "%04x\n" $i)
	m68k-linux-gnu-as -o code.$j.o code.$j.s
	m68k-linux-gnu-ld --oformat=binary -e 0x00000000 -o code.$j.bin code.$j.o
done
sha1sum -c sha1sums
