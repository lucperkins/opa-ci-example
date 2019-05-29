test:
	opa run --input package.json 'input.dependencies[_]'
