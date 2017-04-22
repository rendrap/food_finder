args = "user response".downcase.strip.split(' ')
# ==> ["user", "response"]
action = args.shift
# ==> "user"
args
# ==> ["response"]

keyword = args.shift
# ==> "response"
p args
# =[]
# ==> []
