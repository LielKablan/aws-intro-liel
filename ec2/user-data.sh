#!/bin/bash
dnf install -y nginx

TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" \
  -H "X-aws-ec2-metadata-token-ttl-seconds: 300")
INSTANCE_ID=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/instance-id)
AZ=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/placement/availability-zone)

cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Liel Kablan's First Server</title>
</head>
<body>
  <h1>Liel Kablan's Server</h1>
  <p>Instance ID: ${INSTANCE_ID}</p>
  <p>Availability Zone: ${AZ}</p>
  <p>Created at: $(date)</p>
</body>
</html>
EOF

systemctl enable --now nginx
