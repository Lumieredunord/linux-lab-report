from setuptools import setup

setup(
	name="greetlab",
	version="0.1.0",
	package_dir={"":"src"},
	packages=["greetlab"],
	entry_points={
		"console_scripts":[
			"sdt-greet = greetlab.cli:main"
		]
	}
)
