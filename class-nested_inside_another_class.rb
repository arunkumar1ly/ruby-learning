# # ruby 2.3.0
# # About Class nested inside another Class

# ---------------------------------

# Namespace and subclassing are two different things. They have no relation to each other.
# By doing:
class A
  class B
  end
end

# you define B in the namespace of A, hence A::B (but B is not a subclass of A; in fact it is a subclass of Object).
# By doing:
class A
end

class B < A
end
# you define B as a subclass of A (but B is not in the namespace of A; in fact it is in the namespace of the main environment :: (or Object::).
# In your example:
class A
  class B < A
  end
end
# both happened simultaneously, but they are independent of one another, and there is no contradiction.
# ===================



# EXAMPLE
class OuterClass
  def foobar
    puts "FOOBAR"
  end

  class InnerClass
    def barfoo
      puts "BARFOO"
    end
  end
end

oc = OuterClass.new
oc.foobar

ic = OuterClass::InnerClass.new
ic.barfoo