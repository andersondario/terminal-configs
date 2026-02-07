alias tunnel_pg_dev="gcloud compute ssh --project=prj-dh-n-dev-os-01 --zone=northamerica-northeast1-a --tunnel-through-iap dh-os-bastion-dev-vm -- -N -L 5433:172.16.18.40:5432"
alias tunnel_pg_stage="gcloud compute ssh --project=synth-197 --zone=northamerica-northeast1-a --tunnel-through-iap dh-os-bastion-stage -- -N -L 5434:172.30.9.2:5432"
alias tunnel_pg_qa="gcloud compute ssh --project=prj-dh-n-qa-os-01 --zone=northamerica-northeast1-a --tunnel-through-iap dh-os-bastion-qa -- -N -L 5435:172.18.18.18:5432"
alias tunnel_pg_dev_trigram="gcloud compute ssh --project=prj-dh-n-dev-os-01 --zone=us-west1-c --tunnel-through-iap dh-os-bastion-dev -- -N -L 5431:172.16.18.2:5432"
alias tunnel_mongo_qa="gcloud compute ssh --project=prj-dh-n-qa-os-01 --zone=northamerica-northeast1-a --tunnel-through-iap dh-os-bastion-qa -- -N -L 27018:172.18.0.96:27017"
alias k=kubectl
alias kc=kubectx
alias kn=kubens
