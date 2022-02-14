#！ /usr/bin/bash
ping -c1 www.google.com && echo $?
test="helloworld"
/usr/bin/python <<-EOF
print 'python $test'
EOF

echo 'here is shell'