baseline
baseline: spec
  <baseline>
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'Seaside3'
          with: [ 
              spec
                loads:
                    #('Core' 'Development' 'Zinc' 'FastCGI' 'Scriptaculous' 'Email');
                repository: 'github://GsDevKit/Seaside31:gs_master/repository' ];
        yourself.
      spec
        baseline: 'Flow'
          with: [ spec repository: 'filetree:///opt/git/ta/flow/backend/src' ];
        yourself.
      spec
        package: 'Graphics-Files';
        package: 'GraphViz';
        package: 'INIFile';
        package: 'Q2Swiki';
        package: 'Q2'
          with: [ spec requires: #('Flow' 'Seaside3' 'GraphViz' 'INIFile' 'Q2Swiki') ];
        package: 'Q2GemStone' with: [ spec requires: #('Q2') ];
        package: 'Q2PE'
          with: [ spec requires: #('Q2' 'Q2GemStone' 'Graphics-Files') ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('Q2GemStone' 'Q2PE');
        group: 'Tests' with: #('Core');
        group: 'CI' with: #('Tests');
        yourself ]