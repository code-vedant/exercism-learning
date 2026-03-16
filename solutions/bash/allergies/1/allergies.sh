#!/usr/bin/env bash

allergen_names=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")
allergen_values=(1 2 4 8 16 32 64 128)

main() {
    local score=$1
    local command=$2
    local item=$3

    if [[ -z "$score" || -z "$command" ]]; then
        echo "Usage: $0 <score> allergic_to <allergen>"
        echo "       $0 <score> list"
        exit 1
    fi

    if [[ "$command" == "allergic_to" ]]; then
        for i in "${!allergen_names[@]}"; do
            if [[ "${allergen_names[$i]}" == "$item" ]]; then
                if (( (score & allergen_values[i]) != 0 )); then
                    echo "true"
                else
                    echo "false"
                fi
                exit 0
            fi
        done
        echo "false"

    elif [[ "$command" == "list" ]]; then
        local found=()
        for i in "${!allergen_names[@]}"; do
            if (( (score & allergen_values[i]) != 0 )); then
                found+=("${allergen_names[$i]}")
            fi
        done

        if [[ ${#found[@]} -eq 0 ]]; then
            echo ""
        else
            echo "${found[*]}"
        fi

    else
        echo "Unknown command: $command"
        exit 1
    fi
}

main "$@"