read-env-vars:
	. .env

start-microk8s-vm: read-env-vars
	gcloud compute instances start ${INSTANCE_NAME}

stop-microk8s-vm: read-env-vars
	gcloud compute instances stop ${INSTANCE_NAME}
