package ci

# The package.json is presumed faulty
default allow = false

# Packages that aren't allowed
blacklist = {
    "event-stream",
    "left-pad"
}

# Records dependencies that are on the blacklist
violations[pkg] {
    input.dependencies[pkg]
    blacklist[pkg]
}

# Returns true only if there are no violations
allow {
    count(violations) == 0
}
