a=[1,2,3,4,5,6,7,8,9,10]

def print_even(list)
  list.each{|n| puts n if n%2==0}
end

def gugudan(n)
  (1..9).each{|x| puts "#{n}*#{x}=#{n*x}" }
end

def sphere_volume(r)
  pi=Math::PI
  v=pi*4/3*r**3
  puts "Volume of sphere with radius #{r} is #{v}"
  return v
end

def sqrt_round2(value)
  if(!value.is_a?Numeric or value<0)
    puts 'Input이 자연수가 아닙니다'
  else
    puts "#{value}의 제곱근을 소숫점 둘째자리까지 구하면 #{Math.sqrt(value).round(2)}"
  end
end

def count_a(str)
  cnt=0
  str.each_char{|c| cnt+=1 if (c=='a' or c=='A')}
  puts "#{str}안의 a의 개수는 #{cnt}개"
end

def first_char(str_list)
  str_list.each{|str| puts "#{str} starts with #{str[0]}"}
end

def check369(i)
  if(i<10)
    if(i==3 or i==6 or i==9)
      return true
    end
  elsif(i%10==3 or i%10==6 or i%10==9)
    return true
  else return check369(i/10)
  end
end

def game369(i)
  (1..i).each do |k|
    if(check369(k))
      puts 'clab!'
    else
      puts k
    end
  end
end


def color_count(color_list)
  colors={}
  color_list.each do|color|
    if colors.has_key?(color)
      colors[color]+=1
    else
      colors[color]=1
    end
  end
  colors.each{|k,v| puts "#{k}: #{v}"   }
end


print_even(a)
gugudan(3)
sphere_volume(3)
sqrt_round2("adasd")
count_a("You’ve probably already used many of the applications that were built with Ruby on Rails: Basecamp, GitHub, Shopify, Airbnb, Twitch, SoundCloud, Hulu, Zendesk, Square, Highrise. Those are just some of the big names, but there are literally hundreds of thousands of applications built with the framework since its release in 2004.")
input=["Alberto","Justin","Bon","Mose"]
first_char(input)
game369(30)
color_count(["red","black","red","blue","red","blue"])