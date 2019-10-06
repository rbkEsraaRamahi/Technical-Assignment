const express = require('express')
var cors = require('cors')
const app = express()
const port = 5000
var parser = require('rss-parser-browser');

app.use(express.json());
app.use(cors())

app.get('/', function(req, res){
  parser.parseURL('https://www.rotanacareers.com/live-bookmarks/all-rss.xml', function(err, parsed) {
    if(err){
      console.log("ERR: " + err)
      return; 
    }

    var result = [];
    parsed.feed.entries.forEach(function(entry) {
      var split = entry.link.split("/")
      result.push({title: entry.title, link:entry.link, location: split[4]});
    })
        
    res.json(result)
  })

})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))