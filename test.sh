str="Hello World!"

while [ -n "$str" ]; do
    next=${str#?}
    echo -n "${str%$next}"
    str=$next
done
