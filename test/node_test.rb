require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"

class NodeTest < Minitest::Test
    def test_node_class_exists
        node = Node.new("plop")

        assert_instance_of Node, node
    end 

    def test_node_has_data
        node = Node.new("plop")
        assert_equal "plop", node.data
    end

    def test_next_node
        node = Node.new("plop")
        assert_equal nil, node.next_node
        require 'pry';binding.pry
    end
end