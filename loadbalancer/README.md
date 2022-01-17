### How to

#### Run server.rb in two terminals
```ruby
 ruby server.rb -p 3000
 ruby server.rb -p 3001
```
Make sure to have nginx config similar to `nginx-loadbalancer.conf`

Use curl to test load balancing:

```shell
  curl -H "X-Additional-Header: yolo" localhost:8080/index
```
