#!/bin/bash 

ip netns add new-ns 
ip l add veth0 type veth peer name veth0-host
ip l set veth0 netns new-ns


ip netns exec new-ns ip l set lo up 
ip netns exec new-ns ip l set veth0 up 

