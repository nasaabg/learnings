### How to
Mak sure to have `Redis` locally installed
```shell
  brew install redis
```

Run server
```ruby
  ruby server.rb -p 3000
```

Open browser on `http://localhost:3001/nocache/index.html` and see how long does in take to load the page on every reload.
Then open `http://localhost:3001/nocache/index.html` and see the difference after few reloads.
