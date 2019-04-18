Hash=''
timelist = []
HackerHash = []

for i = 1:10
    [Hash, time] = mining(Hash,4, 1:1000000)
    timelist = [timelist time];
    HackerHash = [HackerHash Hash];

end
