#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
RESET='\033[0m'

# Function to display header
function header() {
    echo -e "${CYAN}=====
  $1
=====${RESET}"
}

# Function for running backend service
function run_backend() {
    header "Running Backend Django Service..."
    # Add command to run Django backend
    echo -e "${GREEN}Backend running successfully!${RESET}"
}

# Function for running frontend service
function run_frontend() {
    header "Running Frontend React Service..."
    # Add command to run React frontend
    echo -e "${GREEN}Frontend running successfully!${RESET}"
}

# Function for running desktop app
function run_desktop() {
    header "Running Desktop Electron App..."
    # Add command to run Electron desktop app
    echo -e "${GREEN}Desktop app running successfully!${RESET}"
}

# Function for starting PostgreSQL database
function run_database() {
    header "Starting PostgreSQL Database..."
    # Add command to run PostgreSQL database
    echo -e "${GREEN}Database started successfully!${RESET}"
}

# Function for starting Redis
function run_redis() {
    header "Starting Redis..."
    # Add command to run Redis
    echo -e "${GREEN}Redis started successfully!${RESET}"
}

# Function for running Celery tasks
function run_celery() {
    header "Running Celery Tasks..."
    # Add command to run Celery
    echo -e "${GREEN}Celery running successfully!${RESET}"
}

# Function for running all services
function run_all() {
    run_backend
    run_frontend
    run_desktop
    run_database
    run_redis
    run_celery
}

# Main menu
while true; do
    echo -e "${YELLOW}Select an option:${RESET}"
    echo "1) Run Backend Django"
    echo "2) Run Frontend React"
    echo "3) Run Desktop Electron"
    echo "4) Start PostgreSQL Database"
    echo "5) Start Redis"
    echo "6) Run Celery Tasks"
    echo "7) Run All Services"
    echo "8) Exit"

    read -p "Choose an option: " choice

    case $choice in
        1) run_backend;;
        2) run_frontend;;
        3) run_desktop;;
        4) run_database;;
        5) run_redis;;
        6) run_celery;;
        7) run_all;;
        8) echo -e "${GREEN}Exiting...${RESET}"; exit 0;;
        *) echo -e "${RED}Invalid option, please try again.${RESET}";;
    esac
done
