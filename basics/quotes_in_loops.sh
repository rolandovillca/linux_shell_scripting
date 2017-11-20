list="one two three four five"

# EXMPLE 1:
# =========
for l in $list # Splits the variable in parts at whitespace
do
    echo "$l"
done

echo "-------------------"

# EXAMPLE 2:
# ==========
for l in "$list" # Preserves whitespace in a single variable
do
    echo "$l"
done
