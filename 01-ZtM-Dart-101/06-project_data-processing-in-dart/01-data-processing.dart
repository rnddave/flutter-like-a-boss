// this command will take input from the CLI at time of calling the program and then add it to a list
/* void main(List<String> arguments) {
  print(arguments);
}
 */

// but we want to input a csv file:

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

  // remove the header line
  lines.removeAt(0);

  // variable for duration by tag
  final durationByTag = <String, double>{};

  // variable for total time
  var totalTime = 0.0;

  for (var line in lines) {
    // this will print each line, 1 at a time
    // print(line);

    // split values
    final values = line.split(',');

    // extract data for duration
    // currently the duration field is seen as String
    final durationStr = values[3].replaceAll('"', '');

    // convert the duration number to a double
    final eventDuration = double.parse(durationStr);

    // extrag the tag and remove any quotation marks
    final tag = values[5].replaceAll('"', '');

    // new variable for the start count
    final initialDuration = durationByTag[tag];

    // how to see if previous total existed or is null
    if (initialDuration == null) {
      durationByTag[tag] = eventDuration;
    } else {
      durationByTag[tag] = initialDuration + eventDuration;
    }

    totalTime += eventDuration;
  }

  for (var entry in durationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key == '' ? 'Unallocated' : entry.key;

    print('$tag: ${durationFormatted}h');
  }
  print('Total Hours: ${totalTime.toStringAsFixed(1)}h');
}


// pseudocode: 

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