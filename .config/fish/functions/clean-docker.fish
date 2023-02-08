function clean-docker
    docker rm (docker container list --format '{{ .ID }}'); docker container prune -f; docker image prune -f; docker volume prune -f; docker system prune -f
end
