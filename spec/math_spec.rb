require 'spec_helper'
require 'math'

RSpec.describe Math do
  describe '#add' do
    it 'adds two numbers' do
         expect(Math.add(6, 6)).to eq(12)
       end
    end
  end
  
