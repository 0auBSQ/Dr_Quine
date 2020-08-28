i=5
if [ "$D" != "1" ]; then
	i=$((i+1))
	export D="1"
fi
i=$((i-1))
if [ "$i" -lt 0 ]; then
	export D="0"
	exit 0
fi
s='i=%d\12if [ "$D" != "1" ]; then\12	i=$((i+1))\12	export D="1"\12fi\12i=$((i-1))\12if [ "$i" -lt 0 ]; then\12	export D="0"\12	exit 0\12fi\12s=\47%s\47\12printf "$s" "$i" "$s" > "Sully_$i.sh"\12sh "Sully_$i.sh"';
printf "$s" "$i" "$s" > "Sully_$i.sh"
sh "Sully_$i.sh"