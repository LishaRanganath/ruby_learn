names=["lisha","blake","serena","nathaniel","renne","chad","crypt","flyby"]
def check(names)
     temp=names.select{|name| name.chars.none?{|char| char.match?(/[aeiou]/i)}}
     names -= temp
     res=names.map{|name| name.reverse}.sort_by!{|name| name.length}.reverse!.find { |name| name.length > 5 }
     puts res

end
filter=check(names)
puts filter