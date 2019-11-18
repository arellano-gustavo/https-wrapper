# https-wrapper
Strategy for wrapping a non SSL service with dockerized nginx and Lets Encript Certificates

Basically, we need to do just a few steps:

1) Install Docker in your brand new box and start a dummy service running in any specific port
2) Create (or get) certificates from your provider OR by using LetsEncrypt technology
3) Build a Wrapper by Using an nginx custom proxy

1)
    1)  sudo sh -c "echo 'LC_ALL=en_US.UTF-8\nLANG=en_US.UTF-8' >> /etc/environment"
    2)  sudo apt-get update
    3)  wget -qO- https://get.docker.com/ | sh
    4)  sudo gpasswd -a ${USER} docker
    5)  exit
    6)  echo "Starting a dummy service running at port 80"
    7)  docker run -d -p 80:80 nginx 
2)
    1  sudo apt-get install software-properties-common
    2  sudo add-apt-repository universe
    3  sudo add-apt-repository ppa:certbot/certbot
    4  sudo apt-get update
    5  sudo apt-get install certbot
    6  sudo ./create-cert.sh
3)
    1  mkdir     /home/ubuntu/bridge
    2  mkdir     /home/ubuntu/bridge/conf.d
    3  nano      /home/ubuntu/bridge/pba.conf
    4  nano      /home/ubuntu/bridge/run.sh
    5  chmod 700 /home/ubuntu/bridge/run.sh
    6  /home/ubuntu/bridge/run.sh 

Now, you can see in: https://your-site.com how the certs are shown...
NOTE: If you have given a Certifice, just adjust the paths for its location in "run.sh" and "conf.d" accordangly

Cheers,
Goose
