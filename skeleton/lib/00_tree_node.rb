class PolyTreeNode
    attr_accessor :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        @parent = node
        if !node.children.include?(self)
            node.children << self 
        else
            node.children = 
        end
    end

    def add_child(node)

    end


end