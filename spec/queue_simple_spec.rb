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

require_relative 'spec_helper.rb'
require_relative '../lib/queue_simple'

include QueueSimple

describe QueueSimple::Queue do
  before :each do
    @queue = QueueSimple::Queue.new
  end

  it 'is a Queue object' do
    expect(@queue).to be_kind_of(QueueSimple::Queue)
  end

  it 'has a count of 0' do
    expect(@queue.count).to eq(0)
  end

  it 'returns true when empty?' do
    expect(@queue.empty?).to eq(true)
  end

  it 'enqueues a key onto the queue' do
    @queue.enqueue(1)
    expect(@queue.count).to eq(1)
  end

  it 'returns false when !empty?' do
    @queue.enqueue(1)
    expect(@queue.empty?).to eq(false)
  end

  it 'removes the oldest key from the queue' do
    @queue.enqueue(1)
    @queue.enqueue(2)
    expect(@queue.count).to eq(2)
    k = @queue.dequeue
    expect(@queue.count).to eq(1)
    expect(k).to eq(1)
  end
end
