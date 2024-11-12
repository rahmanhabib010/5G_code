import pexpect
import csv

gnb_command = "gnb -c ash_gnb_rf_b200_tdd_n78_20mhz_both_slices.yml"

# Start the gNB process without requiring a password
child = pexpect.spawn(gnb_command, timeout=None)

# Wait for the "Type <t> to view trace" prompt
child.expect("Type <t> to view trace")
child.sendline("t")  # Press "t"

# Create a text file to save the output
output_file = open("output.txt", "w")

try:
    # Capture and save the output to the text file
    while True:
        line = child.readline().decode()
        if not line:
            break
        output_file.write(line)

except KeyboardInterrupt:
    pass

finally:
    # Close the text file and the child process
    output_file.close()
    child.close()

# Second part of the script to parse and save as CSV
input_file = "output.txt"
csv_output_file = "matrix_output.csv"

# header = ["pci", "rnti", "cqi", "ri", "mcs", "brate", "ok", "nok", "(%)",
         # "pusch", "mcs", "brate", "ok", "nok", "(%)", "bsr"]

header = ["pci", "rnti", "cqi", "ri", "mcs", "brate", "ok", "nok", "(%)", "dl_bs",
          "pusch", "mcs", "brate", "ok", "nok", "(%)", "bsr"]

# Open the input text file and CSV output file
with open(input_file, "r") as input_file, open(csv_output_file, "w", newline="") as csv_file:
    csv_writer = csv.writer(csv_file)
    
    # Write the header to the CSV file
    csv_writer.writerow(header)
    
    # Parse the input text file and write the data to the CSV file
    for line in input_file:
        if line.startswith(" "):
            data = line.split()
            csv_writer.writerow(data)

print("CSV file created:", csv_output_file)

