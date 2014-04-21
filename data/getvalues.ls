require! <[fs request]>

hash = JSON.parse(fs.read-file-sync \data/list.json .toString!)
listdone = JSON.parse(fs.read-file-sync \data/list.done.json .toString!)

list = []
for k,v of hash
  for item in v
    list.push item.id

getpage = (id) ->
  console.log id, list.length
  request.get "http://campaign-finance.g0v.ctiml.tw/api/getcells/#{id}", (e,r,b) ->
    if e => console.log "can't download #{id}."
    else
      fs.write-file-sync "data/values/#{id}.json", b
    while list.length > 0 =>
      v = list.splice(0,1)0
      if v in listdone => break
    if list.length => setTimeout (-> getpage v), 10
v = list.splice 0,1
getpage v.0
