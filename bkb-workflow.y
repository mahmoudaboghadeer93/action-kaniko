name: Docker build
on: push
jobs:
  docker:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Kaniko build
        uses: mahmoudaboghadeer93/action-kaniko@master
        with:
          image: mhmud/kaniko
          tag: first
          registry: docker.io
          username: ${{ secrets.DOCKERHUB_USERNAME }}
          password: ${{ secrets.DOCKERHUB_PASSWORD }}
          cache: true
          cache_registry: mhmud/cache
