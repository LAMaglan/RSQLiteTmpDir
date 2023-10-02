# Getting started

SQLite creates and uses temporary files. See [here](https://www.sqlite.org/tempfiles.html). This can cause unforseen 
consequences when handling large files, in particular on linux based systems. This package has a simple, single 
function which creates and overwrites a custom temporary directory for (R)Sqlite.

```r
remotes::install_github("LAMaglan/RSQLiteTmpDir")
```

Load the package

```r
library(RSQLiteTmpDir)
```


The single function in the package (read the docs):

```r
create_rsqlite_tmp()
```
