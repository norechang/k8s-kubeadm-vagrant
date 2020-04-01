# install ansible
apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y

# install cluster
ansible-playbook -i hosts ~/k8s-kubeadm-vagrant/initial.yml
ansible-playbook -i hosts ~/k8s-kubeadm-vagrant/kube-dependencies.yml
ansible-playbook -i hosts ~/k8s-kubeadm-vagrant/master.yml
ansible-playbook -i hosts ~/k8s-kubeadm-vagrant/workers.yml
