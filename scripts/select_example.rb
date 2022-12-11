grades = { alice: 100,
    bob: 92,
    chris: 95,
    dave: 97
}

best_people = grades.select { |name, grade| grade <  97 }
# ==> { :bob => 92, :chris => 95 }

grades.select { |k, v| k == :alice }
# ==> { :alice => 100 }

puts best_people