class PolyTreeNode
    attr_accessor :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        if node == nil
            @parent = node
            return true
        end
        if @parent == nil
            node.children << self 
        else
            @parent.children.delete(self) 
            node.children << self
        end
        @parent = node
    end

    def add_child(node)
        node.parent = self
        @children << node if !@children.include?(node)
    end

    def remove_child(child)
        raise "node is not a child!!!" if !@children.include?(child)
        child.parent = nil
    end

    def dfs(target)
        return self if self.value == target

        self.children.each do |child|
            node = child.dfs(target)
            return node if node != nil 
        end

        return nil
    end

    def dfs(target)
        return self if self.value == target

        self.children.each do |child|
            node = child.dfs(target)
            return node if node != nil 
        end

        return nil
    end

    def bfs(target)
        queue = [self]

        while queue.length > 0
            temp = queue.shift
            return temp if temp.value == target
            temp.children.each { |child| queue << child }
        end
        return nil
    end

end

class Searchable
    
end