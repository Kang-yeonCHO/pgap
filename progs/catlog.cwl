#!/usr/bin/env cwl-runner
cwlVersion: v1.2
baseCommand: cat
class: CommandLineTool
doc: concatenates input File[] to screen

inputs:
    input:
        type: File[]
        inputBinding: 
            position: 1
outputs: []