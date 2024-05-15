up: 
	helm repo add gitea-charts https://dl.gitea.com/charts/
	helm dependency update ./helm
	helm upgrade -i cicd ./helm

down:
	helm repo remove gitea-charts
	helm uninstall cicd
	kubectl delete pvc data-cicd-gitea-0 
	kubectl delete pvc data-cicd-postgresql-0 