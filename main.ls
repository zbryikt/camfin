require! <[fs]>
data = JSON.parse(fs.read-file-sync \tables.json .toString!)

fs.write-file-sync \out.json, JSON.stringify data
