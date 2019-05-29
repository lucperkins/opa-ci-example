package ci

default allow = false

blacklist = {
    "event-stream"
}

allow {
    deps := input.dependencies
    not deps[x]; blacklist[x]
}
