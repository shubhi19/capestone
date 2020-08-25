# create an EKS cluster in default region (specified as us-east-2 via AWS CLI) with one node group containing 3 t2.micro nodes 

eksctl create cluster \
--name bn-prod \
--version 1.14 \
--nodegroup-name standard-workers \
--node-type t2.micro \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--node-ami auto
