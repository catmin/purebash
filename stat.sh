
testfile()
{
[ -b $1 ] && echo "block special"
[ -c $1 ] && echo "char special"
[ -e $1 ] && echo "exists"
[ -d $1 ] && echo "dir"
[ -f $1 ] && echo "regular"
[ -g $1 ] && echo "set-group-ID"
[ -G $1 ] && echo "owner by effective group-ID"
[ -L $1 ] && echo "symlink"
[ -k $1 ] && echo "sticky"
[ -O $1 ] && echo "owned by effective user-id"
[ -p $1 ] && echo "named pipe"
[ -r $1 ] && echo "read permission"
[ -s $1 ] && echo "size greater 0"
[ -S $1 ] && echo "socket"
[ -u $1 ] && echo "set-user-ID"
[ -w $1 ] && echo "write permission granted"
[ -x $1 ] && echo "execute/search granted"
}

testfile $1
