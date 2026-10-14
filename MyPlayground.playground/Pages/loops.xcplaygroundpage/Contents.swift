var names = ["prasanna","Rahul","Ramesh","Suresh"]
for name in names {
    print(name)
}


for index in 1...5 {
    print(index)
}

//enunerated means index and value
for (index , name) in names.enumerated(){
    print("\(index):\(name)")
}

for i in 1...3 {
    print(i)
}
for i in stride(from: 10, to : 1, by : 1){
    print(i)
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

// break, continue, labeled
outer: for i in 1...3 {
    for j in 1...3 {
        if j == 2 { continue outer }
        print(i, j)
    }
}
