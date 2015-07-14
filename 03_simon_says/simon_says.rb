def echo(string)
string
end

def shout(string)
	string.upcase
end

def repeat(string, n = 2)
	([string]*n).join ' '
end

def start_of_word(string, n)
	string[0,n]
end

def first_word(string)
	words = string.split(' ')
	words[0]
end

def titleize(string)
	words = string.split(' ')
	words.each do |x| 
		x.capitalize! unless(words.index(x)>0 && (x =='and' || x =='the'|| x =='over'|| x =='in'|| x =='a'))
	end
	words.join(' ')
end