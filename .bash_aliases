for ((i=1;i<=15;i++)); do alias sshcs$i="ssh $(whoami)@linux$i.csie.ntu.edu.tw";done
alias ll='ls -AlF --color=always'
alias dos2unix='fromdos'
alias less='less -r'
## Standard Aliases
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias dir='ls -lg|more'
alias vi='vim'
alias cls='clear'
alias telnet='telnet -8'
alias view_storage='du -h --max-depth=1 | sort -rhk 1'
alias sshtwcc='python3 ~/opt.py && ssh twcc'
export CUDA_VISIBLE_DEVICES=''

git_main_branch () {
        command git rev-parse --git-dir &> /dev/null || return
        local ref
        for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk}
        do
                if command git show-ref -q --verify $ref
                then
                        echo ${ref:t}
                        return
                fi
        done
        echo master
}

gcod(){
        branch=$(git branch --show-current)
        if [[ $branch == "master" || $branch == "main" || $branch == "dev" ]]; then
                echo "You cannot delete the $branch."
                exit 1
        fi
        echo "git checkout dev && git pull && git remote update --prune && git branch -d $branch"
        git checkout dev && git pull && git remote update --prune && git branch -d $branch
}

gcom(){
        branch=$(git branch --show-current)
		if [[ $branch == "$(git_main_branch)" || $branch == "dev" ]]; then
                echo "You cannot delete the $branch."
                exit 1
        fi
		echo "git checkout $(git_main_branch) && git pull && git remote update --prune && git branch -D $branch"
		git checkout $(git_main_branch) && git pull && git remote update --prune && git branch -D $branch
}

