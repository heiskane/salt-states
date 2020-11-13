install_dante:
	pkg.installed:
		- name: dante-server
	service.running:
		- name: danted
		- enable: True
		- require:
			- pkg: install_dante