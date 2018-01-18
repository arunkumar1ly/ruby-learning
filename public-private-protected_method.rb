# # ruby 2.3.0
# # About "the difference between private, public, and protected methods"

# Public methods can be called by everyone - no access control is enforced. 
# A class's instance methods (these do not belong only to one object; instead, 
# every instance of the class can call them) are public by default; anyone can call them. 
# The initialize method is always private.
# ---
# Protected methods can be invoked only by objects of the defining class and its subclasses. Access is kept within the family. However, usage of protected is limited.
# ---
# Private methods cannot be called with an explicit receiver - the receiver is always self. This means that private methods can be called only in the context of the current object; you cannot invoke another object's private methods.

# In the preceding example, we compare one Person instance with another Person instance. The comparison, however, depends on the result of a call to the method age. The object doing the comparing (chris, in the example) has to ask the other object (marcos) to execute its age method. So, age can't be private.

# That's where the protected level comes in. With age protected rather than private, chris can ask marcos to execute age, because chris and marcos are both instances of the same class. But if you try to call the age method of a Person object when self is anything other than a Person object, the method will fail.

# A protected method is thus like a private method, but with an exemption for cases where the class of self (chris) and the class of the object having the method called on it (marcos) are the same.

# Note that if you remove the comment from the last statement in the program ie. when you use age directly, Ruby throws an exception.

class Person  
  def initialize(age)  # is also a prive method by default
    @age = age  
  end  

  def just # this is public method
    "this is public method"
  end

  def age  # protected method, by the code protected below.
    @age  
  end  

  def compare_age(c)  
    if c.age > age  
      "#{content} is bigger."  
    else  
      "#{content} the same or smaller."  
    end  
  end  

  private

  def content # is a private method
    "The other object's age is"
  end

  protected :age  
end  
  
chris = Person.new(25)  
marcos = Person.new(34)  
puts chris.just # we can call a public method like but not the private method
puts chris.compare_age(marcos)  
# puts chris.age  