#!/bin/bash

# Define the packages and projects lists
packages=("utilities" "maps" "forms")
projects=("fellowship" "thrift_findr")

# Define the project suffixes
suffixes=("_package" "_app" "_dashboard")

# Define the commands to run in each directory
commands=("flutter clean" "flutter pub get" "dart run build_runner build --delete-conflicting-outputs")

# Function to run specified commands in the given directory if it exists
run_commands() {
    if [ -d "$1" ]; then
        echo "Entering $1"
        cd "$1"
        for command in "${commands[@]}"; do
            echo "Running: $command"
            $command
        done
        cd - > /dev/null
        echo "Finished running commands in $1"
    else
        echo "Directory $1 does not exist"
    fi
}

# Run commands in the specified packages
for package in "${packages[@]}"; do
    run_commands "$package"
done

# Run commands in the specified projects with their suffixes
for project in "${projects[@]}"; do
    for suffix in "${suffixes[@]}"; do
        project_dir="../clients/$project/$project$suffix"
        run_commands "$project_dir"
    done
done
