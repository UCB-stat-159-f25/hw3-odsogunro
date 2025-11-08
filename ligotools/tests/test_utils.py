"""
Simple tests for utils.py functions
"""
import numpy as np
from ligotools import utils

def test_write_wavfile_basic():
    """Test that write_wavfile works without errors"""
    # Create simple test data
    data = np.array([0.1, 0.5, -0.3, 0.8, -0.2])
    fs = 44100
    
    # This should run without errors
    utils.write_wavfile("./test_junk/test.wav", fs, data)

def test_reqshift_basic():
    """Test that reqshift returns same length output"""
    # Create simple test signal
    data = np.array([1.0, 0.5, -0.2, 0.7, -0.9])
    
    # Apply frequency shift
    result = utils.reqshift(data, fshift=100, sample_rate=4096)
    
    # Check output has same length as input
    assert len(result) == len(data)
