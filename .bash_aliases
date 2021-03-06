alias composer='docker run -ti --rm -v $(pwd):/app composer/composer'
alias php='docker exec -ti dev_web_1 php'
alias bower='docker run -ti --rm -v $(pwd):/data digitallyseamless/nodejs-bower-grunt bower'
alias nodejs='docker run -ti --rm -v $(pwd):/data digitallyseamless/nodejs-bower-grunt nodejs'
alias npm='docker run -ti --rm -v $(pwd):/data digitallyseamless/nodejs-bower-grunt npm'
alias grunt='docker run -ti --rm -v $(pwd):/data digitallyseamless/nodejs-bower-grunt grunt'
