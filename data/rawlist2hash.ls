require! <[fs]>

data = JSON.parse(fs.read-file-sync \raw/list.json .toString!)
hash = {}
for item in data.data =>
  re = /^([^\/]+)\/([^\/]+)\/([^.]+)/exec item.file
  if !re => continue
  [name,type1,type2] = [re.1,re.2,re.3]
  hash.[][name].push {name,type1,type2} <<< item{file,page,id}

fs.write-file-sync \data/list.json, JSON.stringify(hash)
