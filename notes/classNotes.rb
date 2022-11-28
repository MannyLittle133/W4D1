class Node

    attr_reader :value, :children
    def initialize(value, children=[])
        @value = value
        @children = children
        
    end
end

def string_include_key?(string, key)
    return false if string.length == 0 && key.length != 0
    return true if key.length == 0

    if string[0] == key[0]
        string_include_key?(string[1..-1], key[1..-1])
    else
        string_include_key?(string[1..-1], key)
    end
end

def deep_dup(arr)
    arr.map { |ele| ele.is_a?(Array) ? deep_dup(ele) : ele }
end

def rec_sum(num)
    return 0 if n == 0 
    return 1 if n == 1

    rec_sum(n-1) + rec_sum(n-2) + 1
end

def digital_root(num)
    if num < 10
        num
    else 
        digital_root(digital_root(num / 10) + (num % 10))
    end
end

def my_zip(*arrays)
    zipped = []

    self.count.times do |i|
        subzip = [self[i]]

        arrays.each do |array|
            subzip << array[i]
        end
        zipped << subzip
    end
    zipped
end

def my_each(&prc)
    i = 0
    while i < self.length
        prc.call(ele)
        i += 1
    end
    self
end

def my_all(&prc)
    self.each do |ele|
        if !prc.call(ele)
            return false
        end
    end
    true
end

def my_quicksort(&prc)
    prc ||= proc {|a, b| a<=>b }
    return self if size < 2

    pivot = first
    left = self[1..-1].select { |ele| prc.call(ele, pivot) == -1}
    right = self[1..-1].select { |ele| prc.call(ele, pivot) != -1}

    left.my_quicksort(&prc) + [pivot] + right.my_quicksort(&prc)
end

def deep_dup(arr)
    arr.map { |ele| ele.is_a?(Array) ? deep_dup(ele) : ele }
end

def string_include_key?(string, key)
    return false if string.length == 0 && key.length != 0
    return true if key.length == 0

    if string[0] == key[0]
        string_include_key?(string[1..-1], key[1..-1])
    else
        string_include_key?(string[1..-1], key)
    end
end

def my_reverse
    rev = []
    i = self.length-1
    while i >= 0
        rev << self[i]
        i -= 1
    end
    rev
end

def titleize(title)
    words = title.split(' ')
    no_cap = "the, and, or, when"
    new_title = []

    words.each_with_index do |word, i|
        if i == 0
            new_title << word.capitalize
        elsif !no_cap.include?(word)
            new_title << word.capitalize
        else
            new_title << word
        end
    end
    new_title.join(' ')
end

def my_each(&prc)
    i = 0
    while i < self.length
        prc.call(self[i])
        i += 1
    end
    self
end

def my_reject(&prc)
    res_arr = []

    self.each do |ele|
        if !prc.call(ele)
            res_arr << ele
        end
    end
    res_arr
end