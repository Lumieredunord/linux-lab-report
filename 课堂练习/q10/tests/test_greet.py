import pytest
from greetlab.cli import main
def test_dummy():
	assert True

def test_blank_name(monkeypatch):
	monkeypatch.setattr("sys.argv",["sdt-greet","--name"," "])
	with pytest.raises(SystemExit) as excinfo:
		main()
	assert excinfo.value.code == 2
