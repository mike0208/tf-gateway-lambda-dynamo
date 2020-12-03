# tf-gateway-lambda-dynamo
terraform scripts for gateway-lambda-dynamo to connect.

prerequisites - 
Terraform need to installed.
AWS configuration need to done so terraform use those credentials to perform actions.

-------
-> terraform init

-> terraform plan

-> terraform apply

-> will get the output link -> https://URL/stage

can use the curl command to check.

-> curl -X POST -d '{"id":"1","name":"msg"}' https://URL/stage/writedb

-> curl -X POST -d '{"id":"1","name":"msg"}' https://URL/stage/readdb

-----------
terraform destroy   -> for destroying the infrastructure use with caution.

note -> 
never delete the terraform.tfstate file, it will delete the metadata it stores and when performing the terraform commands it will try to again create that state file and infrastructure. 
If by mistake got deleted, before performing any terraform commands,
there is terraform.tfstate.backup file which can be used change the file name to terraform.tfstate 
now perform the terraform commands. Because it will update the terraform state as well as backup.

Also try to have a tfstate backend ON for saving the state in other storage than local to have a consistent infrastruture like S3.
