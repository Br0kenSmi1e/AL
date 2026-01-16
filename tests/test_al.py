"""Tests for the al package."""

import pytest
import al


def test_package_import():
    """Test that the package can be imported."""
    assert al is not None
    assert hasattr(al, "__version__")
    assert al.__version__ == "0.1.0"


def test_version():
    """Test package version."""
    assert al.__version__ == "0.1.0"
