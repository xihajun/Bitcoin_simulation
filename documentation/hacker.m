Hash=''
timelist = []
for i = 1:10
    [Hash, time] = mining(Hash,4, 1:1000000)
    timelist = [timelist time];
end
