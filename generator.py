suffixs = ["mk1", "mk2", "mk3", "mk4"]
for suffix in suffixs:
    combo = [
        suffix+"-inserter",
        suffix+"-filtered-inserter",
        suffix+"-long-inserter",
        suffix+"-long-filtered-inserter",
        suffix+"-stack-inserter",
        suffix+"-stack-filtered-inserter",
        suffix+"-long-stack-inserter",
        suffix+"-long-stack-filtered-inserter",
    ]
    for x in combo:
        print("ru-"+x+"= "+x.replace("-", " "))
        
# lol = ["ru-mk1-inserter-technology= ",
# "ru-mk2-inserter-technology= ",
# "ru-mk3-inserter-technology= ",
# "ru-mk4-inserter-technology= ",
# "ru-mk1-stack-inserter-technology= ", 
# "ru-mk2-stack-inserter-technology= ", 
# "ru-mk3-stack-inserter-technology= ", 
# "ru-mk4-stack-inserter-technology= "]
# for x in lol:
#     print(x+x[3:-13].replace("-", " ")+"s")