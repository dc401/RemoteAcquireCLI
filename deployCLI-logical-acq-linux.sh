#Runs dd against root share and pipes to SMB share path for logical pull
#dchow[AT]xtecsystems.com

#vars
dstdir="/mnt/ddout"
hostStr=$(hostname)
fullDstPath=$dstdir$hostStr

#creating an smb session
smbclient //foo/encase/test/logical -U hpa-svc-tanium passfoo
mkdir /mnt/ddout
mount -t cifs -o username=foo //foo/encase/test/logical $dstdir


#start imaging
dd if=/ of=/mnt/dd/out/ of=$fullDstPath

#remove mount points and clean up
unmount -v -f $dstdir
rm -rf $dstdir

#close smb session
smclient //foo/encase/test/logical -c exit

exit