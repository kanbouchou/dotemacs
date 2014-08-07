// echo "" | (g++ -v -x c++ -E -) 2>&1 | grep include | grep -v = | grep -v ignor | grep -v \# | sed 's/.*/-I&/' | xargs clang++ -cc1 -emit-pch -x c++-header ~/.emacs.d/pch/stdafx.hh -o ~/.emacs.d/pch/stdafx.pch

#include <iostream>
#include <vector>
#include <string>
