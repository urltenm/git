git-md() {
    local formatted_date=$(date "+%Y-%m-%d %H:%M:%S")
    if [ $# -eq 0 ]; then
        #git commit -m "Date:$(date +'%d.%m.%Y')" "Time:$(date)" | grep -oP "(([0-9]{2}:){2}[0-9]{2})") "Who:$(whoami)"
	git commit -m "Date:$(date +'%d.%m.%Y')"

    else
        #git commit -m "$*" "Date:"$(date +'%d.%m.%Y') "Time:"$(date | grep -oP "(([0-9]{2}:){2}[0-9]{2})") "Who:$(whoami)"
	git commit -m "$*" "Date:$(date +'%d.%m.%Y')"

    fi
}
