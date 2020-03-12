# install ansible
apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y

# install cluster
ansible-playbook -i hosts ~/kube-cluster/initial.yml
ansible-playbook -i hosts ~/kube-cluster/kube-dependencies.yml
ansible-playbook -i hosts ~/kube-cluster/master.yml
ansible-playbook -i hosts ~/kube-cluster/workers.yml
