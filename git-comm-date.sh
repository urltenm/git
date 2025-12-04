git-md() {
    local formatted_date=$(date "+%Y-%m-%d %H:%M:%S")
    if [ $# -eq 0 ]; then
        git commit -m "Date: $formatted_date"
    else
        git commit -m "$* (Date: $formatted_date)"
    fi
}
