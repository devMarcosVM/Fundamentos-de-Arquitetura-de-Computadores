.data
linha:  .string "\n"  # Define a newline character for output
string1: .space 1000  # Allocate 1000 bytes for input string storage

.text

main:
    # Read the number of characters (including newline) from the user
    li a7, 5  # Load system call code for reading an integer (syscall 5)
    ecall  # Execute the system call, result stored in a0
    mv t0, a0  # Move the number of characters to temporary register t0

    # Prepare to read the input string
    addi t0, t0, 1  # Increment t0 to account for the newline character
    la a0, string1  # Load the address of the input string storage into a0
    mv a1, t0  # Set the maximum length of the string
    li a7, 8  # Load system call code for reading a string (syscall 8)
    ecall  # Execute the system call to read the input string

    # Print a newline for formatting
    la a0, linha  # Load the address of the newline character into a0
    li a7, 4  # Load system call code for printing a string (syscall 4)
    ecall  # Execute the system call to print the newline

    # Initialize registers for palindrome check
    addi t0, t0, -1  # Adjust t0 to the actual number of characters (exclude newline)
    mv t6, t0  # Copy t0 to t6 to use as an end-of-string index
    addi t6, t6, -1  # Adjust t6 to point to the last character in the string
    srli t5, t0, 1  # Calculate the middle index of the string (t5 = t0 / 2)

    la t3, string1  # Load the start address of the string into t3
    la t4, string1  # Load the start address of the string into t4

    li s3, 0  # Initialize loop counter to 0

verificador:
    # Check if the middle of the string is reached
    beq s3, t5, is_palindrome  # If loop counter equals middle index, string is a palindrome
    add t4, t4, t6  # Adjust t4 to point to the end character of the current comparison
    lb t1, 0(t3)  # Load the current character from the start of the string into t1
    lb t2, 0(t4)  # Load the current character from the end of the string into t2
    bne t1, t2, not_palindrome  # If characters do not match, string is not a palindrome

    # Move to the next set of characters for comparison
    addi t3, t3, 1  # Increment t3 to the next character from the start
    addi t6, t6, -1  # Decrement t6 to the next character from the end
    addi s3, s3, 1  # Increment loop counter
    j verificador  # Repeat the comparison loop

is_palindrome:
    li a0, 1  # Set output to 1 (indicating the string is a palindrome)
    j fim  # Jump to the output section

not_palindrome:
    li a0, 0  # Set output to 0 (indicating the string is not a palindrome)

fim:
    # Print the result
    li a7, 1  # Load system call code for printing an integer (syscall 1)
    ecall  # Execute the system call to print the result

    # Print a newline for formatting
    la a0, linha  # Load the address of the newline character into a0
    li a7, 4  # Load system call code for printing a string (syscall 4)
    ecall  # Execute the system call to print the newline

    # Exit the program
    li a7, 10  # Load system call code to exit the program (syscall 10)
    ecall  # Execute the system call to terminate the program
