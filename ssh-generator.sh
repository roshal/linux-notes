
exit

while ! [[ "${value}" =~ MD5:00 ]]
do
	rm -f key
	value=$(ssh-keygen -b 4096 -E md5 -P '' -f key)
done
