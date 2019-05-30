workflow "OPA evaluation" {
  on = "push"
  resolves = ["evaluate"]
}

action "evaluate" {
  uses = "docker://openpolicyagent/opa:0.11.0"
  args = ["eval", "--fail-defined", "data.ci.violations[x]", "--input", "package.json", "--data", "ci.rego", "--format", "pretty"]
}

action "install" {
  uses = "nuxt/actions-yarn@master"
  args = "install"
  needs = "evaluate"
}
