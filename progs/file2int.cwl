#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: ExpressionTool

requirements: { InlineJavascriptRequirement: {} }

inputs:
  input:
    type: File
    inputBinding:
      loadContents: true

expression: |
  ${ return { "value": parseInt(inputs.input.contents) }; }

outputs:
  value: int
