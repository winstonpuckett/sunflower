NAMESPACE := sunflower

up:
	kubectl create namespace ${NAMESPACE}

down:
	kubectl delete namespace ${NAMESPACE}