var names = ["prasanna","Rahul","Ramesh","Suresh"]
for name in names {
    print(name)
}


for index in 1...5 {
    print(index)
}


for (index , name) in names.enumerated(){
    print("\(index):\(name)")
}


var i = 0
while i < 5 {
    print(i)
    i += 1
}


var j = 0
repeat {
    print(j)
    j += 1
} while j < 5

