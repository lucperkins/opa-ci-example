workflow "OPA evaluation" {
  on = "push"
  resolves = ["evaluate"]
}

action "test" {
  uses = "docker://openpolicyagent/opa:0.11.0"
  args = ["test", "--verbose", "ci.rego", "ci_test.rego"]
}

action "evaluate" {
  uses = "docker://openpolicyagent/opa:0.11.0"
  args = ["eval", "--fail-defined", "data.ci.violations[pkg]", "--input", "package.json", "--data", "ci.rego", "--format", "pretty"]
  needs = "test"
}

action "install" {
  uses = "nuxt/actions-yarn@master"
  args = "install"
  needs = "evaluate"
}
