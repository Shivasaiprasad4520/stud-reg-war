clear
sudo apt update -y && sudo apt upgrade -y
sudo apt install fontconfig openjdk-21-jre
java -version
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins
jenkins -version
jenkins --version
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
cd /opt
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker jenkins
sudo usermod -aG docker $USER
sudo systemctl restart jenkins
sudo apt install maven -y
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip -y
sudo unzip awscliv2.zip
sudo ./aws/install
aws --version
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
sudo curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
cd ..
sudo su
vi ekscluster.yml
eksctl create cluster -f ekscluster.yml
sudo su
clear
eksctl create cluster -f ekscluster.yml
vi ekscluster.yml
eksctl create cluster -f ekscluster.yml
clear
eksctl get cluster --name stud-reg-cluster --region us-east-1
aws eks update-kubeconfig --name stud-reg-cluster --region us-east-1
kubectl get nodes
ls
cd ~/.kube/config
aws eks update-kubeconfig --name stud-reg-cluster --region us-east-1
kubectl get nodes
aws eks list-nodegroups --cluster-name ekscluster
aws eks list-nodegroups --cluster-name stud-reg-cluster
aws eks describe-nodegroup   --cluster-name stud-reg-cluster   --nodegroup-name standard-nodes
eksctl delete cluster --name stud-reg-cluster --region us-east-1
eksctl create cluster -f ekscluster.yml
eksctl delete cluster --name stud-reg-cluster --region us-east-1
eksctl create cluster -f ekscluster.yml
kubectl get nodes
aws eks list-nodegroups --cluster-name stud-reg-cluster
aws eks describe-nodegroup   --cluster-name stud-reg-cluster   --nodegroup-name standard-nodes
kubectl get nodes
ls
sudo su
clear
sudo su
sudo su 
eksctl delete cluster --name stud-reg-cluster --region us-east-1
aws eks list-nodegroups --cluster-name <your-cluster-name>
aws eks list-nodegroups --cluster-name stud-reg-cluster
aws eks describe-nodegroup   --cluster-name stud-reg-cluster   --nodegroup-name standard-node
eksctl delete cluster --name stud-reg-cluster --region us-east-1
