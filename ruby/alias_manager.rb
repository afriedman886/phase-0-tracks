# Fake name creator

def reverse(name)
  name.split(' ').reverse.join(' ')
end

def letter_shift(name)
  name_array = name.chars
    i = 0
    shift = []
    while i < name_array.length
      if "aeiou".include?(name_array[i])
        shift << name_array[i].tr('aeiou', 'eioua')
      elsif name_array[i] == " "
        shift << " "
      else
        shift << name_array[i].next
      end
    i += 1
    end
    shift
end



p reverse("amy friedman")

p letter_shift("amy friedman")