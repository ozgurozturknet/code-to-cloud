output "server_ip" {
  description = "Public IP address of the k3s cluster node"
  value       = hcloud_server.k8s_node.ipv4_address
}

output "kubeconfig_command" {
  description = "Command to download kubeconfig and replace the server IP"
  value       = "ssh root@${hcloud_server.k8s_node.ipv4_address} 'cat /etc/rancher/k3s/k3s.yaml' | sed 's/127.0.0.1/${hcloud_server.k8s_node.ipv4_address}/g' > ~/.kube/k8s-stackshop.yaml"
}
