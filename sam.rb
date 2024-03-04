student=[
  ['lisha',98],
  ['xoxo',90],
  ['yoyo',80],
  ['nono',70]]
# student.each_with_index do |stud,i| 
#    puts stud
#    puts i
# end


# def each (array)
#   i=0
#   while i<array.count
#     ele=array[i]
#     puts "in the loop and the element is #{ele}"
#     i+=1
#   end
# end

# USING BLOCK

# def each (array,&blk)
#   i=0
#   while i<array.count
#     ele=array[i]
#    blk.call(ele)
#     i+=1
#   end
# end

# counter={}
# answers=[1,2,2,2,2,5,3,3,3]
# answers.each do|ans|
#   if counter.has_key?(ans)
#     counter[ans]+=1
#   else
#     counter[ans]=1
#   end
# end
# puts counter

# answers=[1,2,2,2,2,5,3,3,3]
# counter=Hash.new {|h,k| h[k]=0}
# answers.each do|ans|
#   counter[ans]+=1
# end
# puts counter

# student.each do|(stud,grade)|#argument destructurization 
#   puts stud
#   puts grade
# end


# def do_thrice(&blk)
#   blk.call
#   blk.call
#   blk.call
# end
# do_thrice do
#   puts "say hello"
# end


# def pair((x,y),z)
#   puts x
#   puts y
#   puts z
# end
# pair [1,2,3],4


# print_proc=Proc.new {|stud| puts stud}#proc
# print_proc=->(stud) {puts stud}
# print_proc=lambda(stud) {puts stud}
# each(student,&print_proc)



#USING YEILD

# def each (array)
#   i=0
#   while i<array.count
#     ele=array[i]
#     yield ele
#     i+=1
#   end
# end

# def each (array)
#   if !block_given?
#     puts "no block given"
#     return
#   end
#   i=0
#   while i<array.count
#     ele=array[i]
#     puts "in the loop and the element is #{ele}"
#     i+=1
#   end
# end
# each(student) do |stud|
#   puts stud
# end

# def call_proc
#   puts "Before proc"
#   my_proc = Proc.new { return 2 }
#   my_proc.call
#   puts "After proc"
# end

# p call_proc

# # Should work
# my_lambda = -> { return 1 }
# puts "Lambda result: #{my_lambda.call}"

# Should raise exception
# my_proc = Proc.new { return 1 }
# puts "Proc result: #{my_proc.call}"


# # Modules:
# module Greeting
#   def greet
#     "Hello, #{name}!"
#   end
# end

# class Person
#   attr_reader :name
#   include Greeting

#   def initialize(name)
#     @name = name
#   end
#   # def name
#   #   @name
#   # end
 
# end

# person = Person.new("Alice")
# puts person.greet  # Output: Hello, Alice!

# def my_method
#   my_proc=lambda{return "gonna exit now"}
#   my_proc.call
#   puts "this will not be executed"
# end
# puts my_method
def my_method
  my_lambda = -> { return "Exiting lambda" }
  puts my_lambda.call
  puts "This will be printed."
end

puts my_method

