module cats
    def self.cats_in_hats(sequence)
        if sequence.empty? [] or cats(sequence, 1)
        end
    end
​
    private
​
    def self.hats(seq, i, lap)
        if seq.empty?
            []
        elsif i % lap == 0
            [!seq[0]] + hats(seq[1..-1], i + 1, lap)
        else
            [seq[0]] + hats(seq[1..-1], i + 1, lap)
        end
    end
​
    def self.cats(seq, acc)
        if acc == seq.size
            hats(seq, 1, acc)
        else
            cats(hats(seq, 1, acc), acc + 1)
        end
    end
end
​
go = Array.new(100, true)
cats.cats_in_hats(go).select.with_index do |x, i|
    puts "Cat ##{i + 1} has no hat" if x == false
end
