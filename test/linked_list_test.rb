require 'minitest/autorun'
require "minitest/pride"
require "./lib/linked_list"
require 'pry'

class LinkedListTest < Minitest::Test
    def test_does_link_list_exit
        list = LinkedList.new
        assert_instance_of LinkedList, list     
    end

    def test_does_link_list_have_head
        list = LinkedList.new
        assert_nil list.head 
    end

    def test_does_link_list_append
        list = LinkedList.new
        list.append("doop")
        assert_equal "doop", list.head.data     
    end

    def test_is_next_node_nil
        list = LinkedList.new
        list.append("doop")
        assert_nil list.head.next_node      
    end

    def test_what_is_the_count_of_list
        list = LinkedList.new
        list.append("doop")
        assert_equal 1, list.count    
    end

    def test_does_list_to_string_return_doop
        list = LinkedList.new
        list.append("doop")
        assert_equal "doop", list.to_string    
    end

    def test_count_is_correct_when_multiple_words_added
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        assert_equal 2, list.count   
    end

    def test_does_list_to_string_returns_the_correct_output
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        assert_equal "doop deep", list.to_string   
    end

    def test_does_list_prepend_word_to_front_of_list
        list = LinkedList.new
        list.append("doop")
        list.prepend("dop")
        assert_equal "dop doop", list.to_string  
    end

    def test_does_prepend_work_with_more_than_two_variables
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        assert_equal "dop plop suu", list.to_string
    end

    def test_does_list_count_equal_three
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        assert_equal 3, list.count
    end

    def test_inserting_data_at_specific_value
        list = LinkedList.new
        list.append("plop")
        list.append('suu')
        list.prepend("dop")
        list.insert(1, "woo")
        assert_equal "dop woo plop suu", list.to_string
    end

    def test_a_string_of_five
        list = LinkedList.new
        list.append("woo")
        list.prepend("deep")
        list.append("shi")
        list.append("blop")
        list.insert(4, "shu")
        assert_equal "deep woo shi blop shu", list.to_string
    end

    #def test_does_find_find_data_starting_at_two_moving_once
        #list = LinkedList.new 
        #list.append("woo")
        #list.prepend("deep")
        #list.append("shi")
        #list.append("blop")
        #list.insert(4, "shu")
        #assert_equal "shi", list.find(2,1)
    #end
end