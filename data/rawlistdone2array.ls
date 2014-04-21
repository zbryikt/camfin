require! <[fs]>

data = JSON.parse(fs.read-file-sync \raw/list.done.json .toString!)

ret = []
for item in data
  if not (item.id in ret) => ret.push item.id

ret.sort!
fs.write-file-sync \data/list.done.json, JSON.stringify ret

