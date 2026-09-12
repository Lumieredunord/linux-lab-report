import argparse
import sys

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("--name",required=True)
	args = parser.parse_args()

	name = args.name.strip()
	if not name:
		sys.exit(2)
	print(f"Hello,{name}!")

if __name__ == "__main__":
	main()
