A little docker swarm project. Execute "execute.sh" to run it. It will create 3 replicas of a server and 1 redis database. When you make a http get request to http://localhost:3000 swarm will load balance the request to one of the replicas. The chosen replica will pull a random value from redis, calculate the factorial value and return the value as response. 

Although the redis database has to be filled before, otherwise the server will only calculate the factorial of nothing and return 1. 
