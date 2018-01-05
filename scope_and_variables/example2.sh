#!/bin/bash

myfunc() {
    echo "\$1 is $1"
    echo "\$2 is $2"

    # Cannot change $1 - we would have to say:
    # 1 = "Goodbye Cruel"
    # which is not valid syntax. However, we can
    # change $a:
    a="Goodbye Cruel"
}

### Main script starts here:

a=Hello
b=World

myfunc $a $b
echo

echo "a is $a"
echo "b is $b"
