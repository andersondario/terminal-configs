function gac() {
    git add .
    git commit -m "$1"
}

function grc() {
    git commit --amend "$1"
}

function grebase() {
    local branch=${1:-$(git rev-parse --abbrev-ref HEAD)}
    git rebase "$branch"
}

function glog() {
    git log --oneline
}

function gpush() {
    git push origin $(git rev-parse --abbrev-ref HEAD)
}

function gpull() {
    git pull origin $(git rev-parse --abbrev-ref HEAD)
}

function gcloud_zazmic() {
    gcloud auth login anderson.arendt@zazmic.com
}

function gcloud_deephealth() {
    gcloud auth login anderson.arendt@deephealth.com
}

function gcloud_ls() {
    gcloud auth list
}
