from merge_sort import merge_sort


def test_normal():
	assert merge_sort([3,1,4,2]) == [1,2,3,4]

def test_dup():
	assert merge_sort([3,1,4,1,5,9,2,6]) == [1,1,2,3,4,5,6,9]
