# Project

Learning how to process data in Dart

- We have a CSV file of time tracking entries
- We want to process this 
- output a simple report to the CLI 

some basic code to open a file: 

        import 'dart:io';

        void main(List<String> args) {
            // first we have an error check (if empty, fail with error 1)
            if (args.isEmpty) {
                print('Usage: You need to include a filename.csv');
                exit(1);
            }

            // declare a variable to hold the file passed as args
            final inputFile = args.first;

            // read each line, one at a time
            final lines = File(inputFile).readAsLinesSync();

            for (var line in lines) {
                // this will print each line, 1 at a time
                print(line);
            }
        }


## Psuedocode: 

    // get input
    // lines = readline(inputFile) 

    // somewhere to store our data
    // durationByTag = empty Map

    // remove the header line
    // lines.removeFirst() 

    // iterate through each file using For Loop
    // For (line in lines)

        // split the line at the comma
        // values = line.split(',')

        // get the duration data
        // duration = values[3]

        // understand which activity
        // tag = values[5]

        // now we want to add duration to the activity
        // update(durationByTag[tag], duration)

    // end of loop
