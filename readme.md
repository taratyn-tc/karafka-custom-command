# Adding custom cli commands to Karafka 1.4.x

This repo is an example of how to add a custom command to operate on a Karafka 1.4.x project.

## Local Kafka in Docker Compose

```bash
docker-compose -f kafka/docker-compose.yml up
```

To confirm please produce a message:

```bash
echo '{"account": 99, "foo": "bar"}' |  kafka-console-producer  --bootstrap-server localhost:9092   --topic example1
```

## run the cli command

```bash 
❯ bundle exec karafka help foo
I, [2023-03-22T22:04:44.194974 #8805]  INFO -- : Initializing Karafka framework 8805
Usage:
  karafka foo

This is the example command
```

```bash
❯ bundle exec karafka foo
I, [2023-03-22T15:46:29.553463 #6730]  INFO -- : Initializing Karafka framework 6730
example1
```

