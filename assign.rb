students = [
  { :name=> "Alice", :grades=> [90, 85, 88], :age=> 15 },
  { :name=> "Bob", :grades=> [80, 85, 88], :age=> 16 },
  { :name=> "Charlie", :grades=> [90, 95, 93], :age=> 17 },
  { :name=> "Dave", :grades=> [70, 75, 78], :age=> 18 },
  { :name=> "Eve", :grades=> [80, 85, 88], :age=> 19 }
]

def top_students(students, age, n)
        topper=students.select{|stud| stud[:age]>age}
        res = topper.map{|top_marks| {name: top_marks[:name] , avg:top_marks[:grades].reduce(:+)/top_marks[:grades].length}}
        res.sort_by!{|student| student[:avg]}.reverse!
        if(topper.length>=n)
            take_n=res.first(n)
            take_n.each{|student| puts "#{student[:name]}"}
        else
            res.each{|student| puts "#{student[:name]}"}
        end

end
puts "enter the number of toppers that you wish to see"
n=gets.chomp.to_i
puts "enter the age"
age=gets.chomp.to_i
top_students(students,age,n)