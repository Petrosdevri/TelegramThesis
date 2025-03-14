import argparse
import subprocess
import sys

parser = argparse.ArgumentParser(description='Run scripts for different wars, countries and sectors.')
parser.add_argument('war', type=str, help='War to run script')
parser.add_argument('country', type=str, help='Country to run script from')
parser.add_argument('sector', type=str, help='Sector to run script')
parser.add_argument('channel', type=str, help='Name of the channel')
parser.add_argument('script_name', type=str, help='Name of the script to run')

args = parser.parse_args()

command = f'python {args.war}/{args.country}/{args.sector}/{args.channel}/{args.script_name}.py'
print(f'Running command: {command}')

subprocess.run(command, shell=True)