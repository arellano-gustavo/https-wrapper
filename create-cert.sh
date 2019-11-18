echo "We DO assume that the domain IS pointing to this server"
sudo certbot certonly --standalone --preferred-challenges http --force-renewal -d $1.ci.gustavo-arellano.com
