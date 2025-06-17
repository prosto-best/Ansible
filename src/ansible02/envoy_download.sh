# curl -L https://github.com/envoyproxy/envoy/releases/download/v1.33.0/envoy-1.33.0-linux-x86_64 -o /usr/local/bin/envoy
# chmod +x /usr/local/bin/envoy

# sudo wget -O- https://apt.envoyproxy.io/signing.key | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/envoy-keyring.gpg
# sudo echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/trusted.gpg.d/envoy-keyring.gpg] https://apt.envoyproxy.io focal main" | sudo tee /etc/apt/sources.list.d/envoy.list
# sudo apt update
# sudo apt install envoy

curl -L https://github.com/envoyproxy/envoy/releases/download/v1.25.3/envoy-1.25.3-linux-x86_64 -o /usr/local/bin/envoy
chmod +x /usr/local/bin/envoy