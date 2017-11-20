# EXAMPLE 1: Using a single bracket [
# ===================================

var1=abcde

if [ $var1 == abcde ]
then
    echo YES
else
    echo NO
fi

echo

# EXAMPLE 2: Using double bracket [[
# ==================================
# And this is a bash builtin.
# As a rule of thumb, [[ is used for strings and files

var2=xyz
if [[ $var2 == 12345 ]]; then echo YES; else echo NO; fi

echo


# EXAMPLE 3: Using parenthesis ()
# ===============================
# The subshell allowed you to perform operations without
# affecting the environment of the current shell

pwd
(cd /tmp; pwd)
pwd

echo


# EXAMPLE 4: Using braces {}
# ==========================
# It is used to unambiguously identify variables

var3=abcde
echo variable: $var3
echo variable: $var3xyz
echo variable: ${var3}xyz
echo

# EXAMPLE 5: Using braces {} again
# ================================
# To execute a sequence of commands in the current shell context:

{ date; top -b -n1 | head; } > logfile

# 'date' and 'top' output are concatenated, 
# could be useful sometimes to hunt for a top loader )

{ date; make 2>&1; date; } | tee logfile
# Now we can calculate the duration of a build from the logfile
