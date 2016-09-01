## Warning: only works with GNU find ##
find /home/dongyeop/data -printf '%s %p\n'| sort -nr | head -10
find . -printf '%s %p\n'| sort -nr | head -10
