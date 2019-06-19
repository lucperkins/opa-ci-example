package ci

test_now_allow {
    not allow with input as {"dependencies":{"event-stream":""}}
    not allow with input as {"dependencies":{"left-pad":""}}
}

test_allow {
    allow with input as {"dependencies":{"some-pkg":""}}
    allow with input as {"dependencies":{}}
}
