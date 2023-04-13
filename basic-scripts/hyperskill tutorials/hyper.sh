#!/usr/bin/bash
echo "Welcome to the Simple converter!"
touch definitions.txt
FILE=definitions.txt

while true; do
    echo -e "\nSelect an option\n0. Type '0' or 'quit' to end program\n1. Convert units\n2. Add a definition\n3. Delete a definition"
    read INPUT
    case "${INPUT}" in
        0 | "quit")
            echo "Goodbye!"
            break
            ;;
        1)
            if [ -s $FILE ]; then
                #cat -n $FILE
                echo "Type the line number to convert units or '0' to return"
                num='[0-9]+'
                cat -n "$FILE" | sed 's/^ *//' | sed 's/\t/\. /'  # removes leading spaces and replaces tabs with dot and space
                read ANSWER
                while true; do
                    if [[ $ANSWER == 0 ]]; then
                        break
                    elif [[ $ANSWER -le $(wc -l < $FILE) && $ANSWER != "" ]]; then
                        echo "Enter a value to convert: "
                        read value
                        constant=$(sed "${ANSWER}q;d" $FILE | cut -d' ' -f2)
                        while [[ ! "$value" =~ $num ]]; do
                            echo "Enter a float or integer value!"
                            read value
                        done
                        result=$(echo "$constant $value" | awk '{printf "%.2f", $1 * $2}')
                        printf "Result: $result"
                        break
                    else
                        echo "Enter a valid line number!"
                        read ANSWER
                    fi
                done
            else
                echo "Please add a definition first!"
            fi
            ;;
        2)
            echo "Enter a definition:"
            read -a user_input
            arr_length="${#user_input[@]}"
		definition="${user_input[0]}"
		constant="${user_input[1]}"
		re='[a-z]+_to_[a-z]+'
		num='^-?[0-9]+(\.[0-9]+)?$'
		while true; do
                if [[ "$definition" =~ $re && "$constant" =~ $num && "$arr_length" -eq 2 ]]; then
                    echo ${user_input[@]} >> $FILE
                    break
                else
                    echo "The definition is incorrect!"
                    echo "Enter a definition:"
                    read -a user_input
                    arr_length="${#user_input[@]}"
                    definition="${user_input[0]}"
			constant="${user_input[1]}"
                fi
               done            
            ;;
        3)
            if [ -s $FILE ]; then
                #cat -n $FILE
                echo "Type the line number to delete or '0' to return"
                cat -n "$FILE" | sed 's/^ *//' | sed 's/\t/\. /'  # removes leading spaces and replaces tabs with dot and space
                while true; do
                    read  ANSWER
                    if [ $ANSWER -eq 0 ]; then
                        break
                    elif [ $ANSWER -le $(wc -l < $FILE) ]; then
                        # to delete a line
                        sed -i "${ANSWER}d" "$FILE"
                        break
                    else
                        echo "Enter a valid line number!"
                    fi
                done
            else
                echo "Please add a definition first!"
            fi
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac
done
