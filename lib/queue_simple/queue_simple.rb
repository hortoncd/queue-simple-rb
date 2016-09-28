# Copyright 2016 Chris Horton
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'linked_list_tail'
include LinkedListTail

# A class to implement a queue backed by a linked list with a tail pointer
module QueueSimple
  class Queue
    def initialize
      @ll = LinkedList.new
    end

    def count
      @ll.count
    end

    def empty?
      @ll.empty?
    end

    def enqueue(k)
      @ll.push_front(k)
    end

    def dequeue
      @ll.pop_back
    end
  end
end
