NAMESPACE := sunflower

up:
	# kubectl create namespace ${NAMESPACE}
	${MAKE} up-cicd

down:
	kubectl delete namespace ${NAMESPACE}
	${MAKE} down-cicd

# Area-specific commands

# Note that we cd to the dir because that allows the makefile to have its own directory as root.
# $* matches the % in up-%

up-%:
	cd ./src/$* && ${MAKE} up 

down-%:
	cd ./src/$* && ${MAKE} down
