from calculator import subtract
import pytest
def test_subtract():
    result = subtract(3, 4)
    assert result == 7
