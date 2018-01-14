complete -C aws_completer aws
function hostname_from_instance() {
    echo $(aws ec2 describe-instances --filters "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" --query='Reservations[0].Instances[0].PublicDnsName' | tr -d '"')
}

function ip_from_instance() {
    echo $(aws ec2 describe-instances --filters "{\"Name\":\"instance-state-code\", \"Values\":[\"16\"]}" "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" --query='Reservations[0].Instances[0].PublicIpAddress' | tr -d '"')
}

function proxy_ips() {
    number_of_proxy=5
    echo "["
    for i in $(seq 1 $number_of_proxy);
    do
            result="    { \"publicIp\": \"$(ip_from_instance squid$i)\", \"port\": \"3128\" }"
            if [ $i -lt $number_of_proxy ]; then
                    echo "$result,"
            else
                    echo "$result"
            fi
    done
    echo "]"
}

function pip_from_instance() {
    echo $(aws ec2 describe-instances --filters "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" --query='Reservations[0].Instances[0].PrivateIpAddress' | tr -d '"')
}

function instance_id() {
    echo $(aws ec2 describe-instances --filters "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" --query='Reservations[0].Instances[0].InstanceId' | tr -d '"')
}

function start_proxy() {
    for i in $(seq 1 5);
         do aws ec2 start-instances --instance-ids "$(instance_id squid$i)" --output text | grep -w CURRENTSTATE | awk '{print $3}'
    done
}

function stop_proxy() {
    for i in $(seq 1 5);
         do aws ec2 stop-instances --instance-ids "$(instance_id squid$i)" --output text | grep -w CURRENTSTATE | awk '{print $3}'
    done
}

function ssh_aws() {
    ssh -i ~/.ssh/aws.pem ec2-user@$(ip_from_instance "$1")
}
function ssh_aws_ip() {
    ssh -i ~/.ssh/aws.pem ec2-user@$1
}
