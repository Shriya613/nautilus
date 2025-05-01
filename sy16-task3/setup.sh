if [ "$1" -eq 1 ]; then
    kubectl delete deployment sy16-task3
    
elif [ "$1" -eq 0 ]; then
    kubectl create -f sy16_dep.yaml
    kubectl create -f sy16_pvc.yaml
    kubectl create -f sy16_job.yaml
else
    echo "Usage: $0 [1]"
    exit 1
fi