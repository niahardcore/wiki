---
order: 4
title: Команды Git
---

`grep -rih 'ttimeout' -A 25 --color` - чтобы найти таймауты



`cat rphost_*/*.log | perl -pe 's/\n/@/; s/(^\d\d:\d\d.\d+-)/\n\1/;' | grep --color -iP ',level=INFO,' | perl -pe 's/@/\n/g'`




