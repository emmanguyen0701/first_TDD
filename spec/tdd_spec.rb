require 'tdd'
require 'rspec'

describe '#my_uniq' do
    it 'should take in an Array and return a new array' do
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
        expect(my_uniq(["a", "b", "a", "a", "c"])).to eq(["a", "b", "c"])
    end

    it 'should not use built-in Array#uniq' do
        array = [1,2,1,3,3]
        expect(array).to_not receive(:uniq)
    end
end

RSpec.describe Array do
    
    describe '#two_sum' do
        let(:arr_1) { [-1, 0, 2, -2, 1] }
        let(:one_zero) { [-1, 0, 2] }
        let(:two_zero) { [-1, 0, 2, 0] }

        it 'returns array with length of each sub_array equal to 2' do
            expect(arr_1.two_sum).to eq([[0,4], [2,3]])
        end

        it 'returns the smaller index first' do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
        end     
        
        it 'should not be confused by one zero' do
            expect(one_zero.two_sum).to eq([])
        end

        it 'should not be confused by two zeroes' do
            expect(two_zero.two_sum).to eq([])
        end
    end

    describe '#my_transpose' do
        let(:arr) {[           
               [0, 1, 2],
               [3, 4, 5],
               [6, 7, 8]
            ]}  
    
        let(:expected_arr) {[
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ]}
            
        it 'should accept 2D array and return new 2D array where rows has been trasnposes horizontally' do
            expect(arr.my_transpose).to eq(expected_arr)
        end

        it 'should not receive built-in Array#transpose' do
            expect(arr).to_not receive(:transpose)
            arr.my_transpose
        end
    end

    describe '#pick_stocks' do    
        it 'returns indices of the smallest and largest number in the array' do 
            expect([1,2,4,0,5].pick_stocks).to eq([3,4])
        end      
    end
end