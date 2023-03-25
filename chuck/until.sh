#!/bin/bash

until [[ $order == "coffee" ]]
do
	read -p "gimme your order" order
done
echo "wise choise"
