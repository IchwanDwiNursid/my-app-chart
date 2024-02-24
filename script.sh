# hapus semua file di folder templates
rm -rf templates/*

# generate manifests
helm template my-app . --set=image.repository=nginx --set=image.tag=alpine --set=autoscaling.minReplicas=5 --set=autoscaling.maxReplicas=1000 --set=autoscaling.targetCPUUtilizationPercentage=50 --set=autoscaling.targetMemoryUtilizationPercentage=100
helm lint .

# package manifests
helm package <DIR>

# indexing repo
helm repo index <DIR>