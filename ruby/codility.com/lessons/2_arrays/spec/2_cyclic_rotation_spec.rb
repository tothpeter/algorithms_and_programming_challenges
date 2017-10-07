require './2_cyclic_rotation'
require '../../../spec_helper'

examples = [
  {
    context: 'when the number of rotates is the same number as the lenght of the list',
    input: [ [ 1, 2, 3 ], 6 ],
    expected_output: [ 1, 2, 3 ]
  },
  {
    context: 'when the number of rotates is bigger than the length of the list',
    input: [ [ 1, 2, 3 ], 4 ],
    expected_output: [ 3, 1, 2 ]
  },
  {
    context: 'when the number of rotates is smaller than the length of the list',
    input: [ [ 1, 2, 3 ], 1 ],
    expected_output: [ 3, 1, 2 ]
  },
]

# describe "solution1" do
#   test_batch_examples examples, :solution1
# end

describe "solution2" do
  test_batch_examples examples, :solution2
end