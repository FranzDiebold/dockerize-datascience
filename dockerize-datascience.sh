alias python3.8='docker run --rm -it -v "${PWD}":/usr/src/app -w /usr/src/app python:3.8 python'
alias python3.9='docker run --rm -it -v "${PWD}":/usr/src/app -w /usr/src/app python:3.9 python'
alias python3.10='docker run --rm -it -v "${PWD}":/usr/src/app -w /usr/src/app python:3.10 python'
alias python='docker run --rm -it -v "${PWD}":/usr/src/app -w /usr/src/app python:latest python'

alias jupyter='docker run --rm -p 8888:8888 -p 4040:4040 -v "${PWD}":/home/jovyan franzdiebold/datascience-ultimate:latest'

# PyEnvD: Python environment dockerized
slugify() {
    echo "$1" | iconv -t ascii//TRANSLIT | sed -E 's/[^a-zA-Z0-9-]+/-/g' | sed -E 's/^-+|-+$//g' | tr A-Z a-z
}

env_name() {
    echo $(slugify ${${1:-$PWD}: -200})
}

pyenvd3.8() {
    docker run --rm -it -v "$(env_name $1)_python":/usr/local/lib -v "${PWD}":/usr/src/app -w /usr/src/app python:3.8 bash
}
pyenvd3.9() {
    docker run --rm -it -v "$(env_name $1)_python":/usr/local/lib -v "${PWD}":/usr/src/app -w /usr/src/app python:3.9 bash
}
pyenvd3.10() {
    docker run --rm -it -v "$(env_name $1)_python":/usr/local/lib -v "${PWD}":/usr/src/app -w /usr/src/app python:3.10 bash
}
pyenvd() {
    docker run --rm -it -v "$(env_name $1)_python":/usr/local/lib -v "${PWD}":/usr/src/app -w /usr/src/app python:latest bash
}

pyenvd_del() {
    docker volume rm "$(env_name $1)_python"
}

jupyterenvd() {
    local working_directory="/usr/src/$(basename ${PWD})"
    local ssh_directory="${HOME}/.ssh"
    docker run --rm -p 8888:8888 -p 4040:4040 -v "$(env_name $1)_jupyter":/opt/conda/lib/python3.9/site-packages -v "${PWD}":"$working_directory" -v $ssh_directory:/home/jovyan/.ssh -w $working_directory franzdiebold/datascience-ultimate:latest
}
alias jed=jupyterenvd

jupyterenvd_del() {
    docker volume rm "$(env_name $1)_jupyter"
}
