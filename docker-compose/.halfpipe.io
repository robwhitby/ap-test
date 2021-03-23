team: engineering-enablement
pipeline: docker-compose
platform: actions

triggers:
- type: git
  watched_paths:
  - docker-compose

tasks:
- type: docker-compose
  name: test in docker-compose
  vars:
    HELLO: world
    YOLO: "420"
- type: docker-compose
  name: more complex example
  command: echo hello
  service: myservice
  compose_file: conf/another-docker-compose-file.yml
