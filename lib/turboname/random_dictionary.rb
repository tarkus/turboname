module Turboname
  class Random < Dictionary
    # let's get a random word out of the dictionary and modify it, also randomly
    def get
      vowels = File.readlines(File.join(Turboname::path, 'dictionary.txt'))
      line = vowels[rand(410)-1].gsub("\n","")
      rand_times = Turboname::prefix.nil? ? 3 : 2 
      rand(rand_times).times do
        line = line + vowels.shuffle.first.gsub("\n","")
      end
      line = Turboname::prefix + line unless Turboname::prefix.nil?
      line
    end
  end
end
