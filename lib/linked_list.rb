require 'pry'
require_relative 'node'

class LinkedList
      attr_accessor :head
      attr_reader :count

    def initialize
        @head = nil
        @count = 0 
    end

    def append(data)
         if @head == nil 
            @head = Node.new(data)
         else  
             current_node = @head
             current_node = current_node.next_node until  current_node.next_node.nil? 
             current_node.next_node = Node.new(data)         
         end
        data
    end
    



     def count
        if @head == nil
            count = 0
        else
             count = 1
              current_node = @head
               while current_node.next_node != nil
              count += 1
             current_node = current_node.next_node
            end
         end
        count  
      end


      def to_string
          string = ""
          current_node = @head
          string << current_node.data
            until current_node.next_node == nil
                  current_node = current_node.next_node
                  string << " #{current_node.data}" 
            end
        string
     end

    
     def prepend(data)
        if @head == nil
           @head = Node.new(data)   
        else
           current_node = Node.new(data)
           current_node.next_node = @head
           @head = current_node
        end
        data
     end

    def insert(index, value)
			counter = 0
			current_node = @head
			new_node = Node.new(value)
			until counter == index - 1
				current_node = current_node.next_node
				counter += 1
			end
			new_node.next_node = current_node.next_node
			current_node.next_node = new_node
		end
        end