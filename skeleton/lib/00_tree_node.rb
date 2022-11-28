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

    end

    def remove_child(child)
        raise "node is not a child!!!" if !@children.include?(child)
        child.parent = nil
    end

end