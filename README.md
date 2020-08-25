# R from bash

A demo of how to call R from bash with argument handling.

```
./bash_script.sh
```

will call the Rscript `r_func.r` with the command

```
Rscript r_func.r --args --filename='filename.csv' --num1=5 --num2=62.36
```

The R script `r_func.r` uses the enhanced version of commandArgs() provided in the [R.utils package](https://www.rdocumentation.org/packages/R.utils/versions/2.9.2).
There is a more basic version of `commandArgs()` built into R itself but I like the features in the R.utils version.
