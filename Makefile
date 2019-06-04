evaluate:
	opa eval \
	--fail-defined data.ci.violations[pkg] \
	--input package.json \
	--data ci.rego \
	--format pretty
