"""Tests for main module."""

import sys
from pathlib import Path

# Add parent directory to path to import main
sys.path.insert(0, str(Path(__file__).parent.parent))

import main


def test_main_function():
    """Test that main function exists and is callable."""
    assert callable(main.main)
