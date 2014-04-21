require! <[fs]>

data = JSON.parse(fs.read-file-sync \list.done.json .toString!)

