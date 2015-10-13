#!/bin/sh

echo "Choose the chain to delete from: "
read chain
iptables -L $chain --line-numbers
echo "Choose a line number to delete: "
read number
iptables -D $chain $number
