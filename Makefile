.PHONY: vagrant-up
vagrant-up:
	@echo Starting all VMs in parallel...
	grep config.vm.define Vagrantfile | awk -F'"' '{print $$2}' | xargs -P4 -I {} vagrant up {}

.PHONY: vagrant-down
vagrant-down:
# Retry if SSH connection is interrupted
# from laptop to Linux machine during removal
	until vagrant destroy -f; do sleep 2; done
