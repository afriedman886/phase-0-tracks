# Fake name creator

def incognito(name)
  name_array = name.split(' ').reverse.join(' ').chars
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
    shift.join('')
end


p incognito("amy friedman")

