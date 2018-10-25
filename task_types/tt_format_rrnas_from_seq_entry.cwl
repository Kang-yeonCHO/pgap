cwlVersion: v1.0
label: "format_rrnas_from_seq_entry"
class: Workflow # task type
hints:
inputs:
  entry: File
outputs:
  rna:
    type: File
    outputSource: format_rrnas/o
steps:
  format_rrnas:
    run: ../progs/format_rrnas.cwl
    in:
      ifmt: 
        default: seq-entry
      rrna_class: 
        default: 16S
      tmpinput: entry
    out: [o]
