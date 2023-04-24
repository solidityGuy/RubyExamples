class Tree
  attr_accessor :children, :node_name
  def initialize(hash={})
    raise ArgumentError, "Input must be a hash with only one key-value pair" unless hash.is_a?(Hash) && hash.size == 1
    key, value = hash.first
    @children = value
    @node_name = key
  end
  def visit_all(&block)
    visit &block
    children.each do |key, value|
      if value.is_a?(Hash)
        new_tree = {}
        new_tree[key] = value
        init_tree = Tree.new(new_tree)
        init_tree.visit_all &block
      end
    end
  end
  def visit(&block)
    block.call self
  end
end
ruby_tree = Tree.new({'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {}}}})
puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
