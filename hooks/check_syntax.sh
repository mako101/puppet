#!/bin/sh

syntax_errors=0
error_msg=$(mktemp /tmp/error_msg.XXXXXX)

if git rev-parse --quiet --verify HEAD > /dev/null
then
    against=HEAD
else
    # Initial commit: diff against an empty tree object
    against=6d92fc3c4994c2fec4f32cf2b41bd2a43fe727e3
fi

# Get list of new/modified manifest and template files to check (in git index)

for indexfile in $(git diff-index --diff-filter=AM --name-only --cached $against | egrep '\.(pp|erb)')
do
  # Don't check empty files
if [ $(git cat-file -s :0:$indexfile) -gt 0 ]
then
# This is a puppet parser check
    case $indexfile in
         *.pp)
          # Check puppet manifest syntax
          git cat-file blob :0:$indexfile | puppet parser validate > $error_msg;;
          *.erb)
          # Check ERB template syntax
          git cat-file blob :0:$indexfile | erb -x -T - | ruby -c 2> $error_msg > /dev/null;;
    esac

# This is a puppet-lint check
# puppet-lint --with-filename "$indexfile"

  if [ "$?" -ne 0 ]
  then
    echo -n "$indexfile: "
    cat $error_msg
    syntax_errors=$(expr $syntax_errors + 1)
  fi
fi
done

rm -f $error_msg

if [ "$syntax_errors" -ne 0 ]
then
    echo "Error: $syntax_errors syntax errors found, aborting commit."
    exit 1
fi
