cwlVersion: v1.2
label: "collect_annot_stats"

class: CommandLineTool
requirements:
  - class: InlineJavascriptRequirement
  - class: InitialWorkDirRequirement
    listing:
      - entryname: proc_annot_stats_or_details.mft
        # using more than line of JS code leads to a wrong result
        entry: ${var blob = '# proc_annot_stats_or_details.mft created for collect_annot_stats from input input Array of Files\n'; for (var i = 0; i < inputs.input.length; i++) { blob += inputs.input[i].path + '\n'; } return blob; }

baseCommand: collect_annot_stats
inputs:
  input:
    type: File[]
  input_manifest:
    type: string
    default: proc_annot_stats_or_details.mft
    inputBinding:
      prefix: -input-manifest
  output_name:
    type: string
    # default:  proc_annot_stats_or_details.xml
    inputBinding:
      prefix: -o
outputs:
  output:
    type: File
    outputBinding:
      glob: $(inputs.output_name)

  
  
