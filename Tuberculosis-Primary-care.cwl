cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  tuberculosis---primary:
    run: tuberculosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  other-tuberculosis-primary-care---primary:
    run: other-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: tuberculosis---primary/output
  tuberculosis-primary-care-generalized---primary:
    run: tuberculosis-primary-care-generalized---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-respiratory---primary:
    run: tuberculosis-primary-care-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-generalized---primary/output
  tracheobronchial-tuberculosis-primary-care---primary:
    run: tracheobronchial-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-respiratory---primary/output
  tuberculosis-primary-care---primary:
    run: tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: tracheobronchial-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-miliary---primary:
    run: tuberculosis-primary-care-miliary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-mycobacterium---primary:
    run: tuberculosis-primary-care-mycobacterium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-miliary---primary/output
  tuberculosis-primary-care-ciprofloxacin---primary:
    run: tuberculosis-primary-care-ciprofloxacin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-mycobacterium---primary/output
  tuberculosis-primary-care-multidrug---primary:
    run: tuberculosis-primary-care-multidrug---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-ciprofloxacin---primary/output
  laryngeal-tuberculosis-primary-care---primary:
    run: laryngeal-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-multidrug---primary/output
  tuberculosis-primary-care-cavitation---primary:
    run: tuberculosis-primary-care-cavitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: laryngeal-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-trachea---primary:
    run: tuberculosis-primary-care-trachea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-cavitation---primary/output
  acute-tuberculosis-primary-care---primary:
    run: acute-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-trachea---primary/output
  isoniazid-tuberculosis-primary-care---primary:
    run: isoniazid-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: acute-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-sequelae---primary:
    run: tuberculosis-primary-care-sequelae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: isoniazid-tuberculosis-primary-care---primary/output
  infiltrative-tuberculosis-primary-care---primary:
    run: infiltrative-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-sequelae---primary/output
  single-tuberculosis-primary-care---primary:
    run: single-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: infiltrative-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-bronchu---primary:
    run: tuberculosis-primary-care-bronchu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: single-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-pleura---primary:
    run: tuberculosis-primary-care-pleura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-bronchu---primary/output
  tuberculosis-primary-care-examin---primary:
    run: tuberculosis-primary-care-examin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-pleura---primary/output
  tuberculosis-primary-care-streptomycin---primary:
    run: tuberculosis-primary-care-streptomycin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-examin---primary/output
  pulmonary-tuberculosis-primary-care---primary:
    run: pulmonary-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-streptomycin---primary/output
  tuberculosis-primary-care-effects---primary:
    run: tuberculosis-primary-care-effects---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: pulmonary-tuberculosis-primary-care---primary/output
  histy-tuberculosis-primary-care---primary:
    run: histy-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-effects---primary/output
  tuberculosis-primary-care-specified---primary:
    run: tuberculosis-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: histy-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-laryngitis---primary:
    run: tuberculosis-primary-care-laryngitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-specified---primary/output
  intrathoracic-tuberculosis-primary-care---primary:
    run: intrathoracic-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-laryngitis---primary/output
  nodular-tuberculosis-primary-care---primary:
    run: nodular-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: intrathoracic-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-ethionamide---primary:
    run: tuberculosis-primary-care-ethionamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: nodular-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-disseminated---primary:
    run: tuberculosis-primary-care-disseminated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-ethionamide---primary/output
  tuberculosis-primary-care-culture---primary:
    run: tuberculosis-primary-care-culture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-disseminated---primary/output
  tuberculosis-primary-care-pyrazinamide---primary:
    run: tuberculosis-primary-care-pyrazinamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-culture---primary/output
  tuberculosis-primary-care-histology---primary:
    run: tuberculosis-primary-care-histology---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-pyrazinamide---primary/output
  positive-tuberculosis-primary-care---primary:
    run: positive-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-histology---primary/output
  tuberculosis-primary-care-pleurisy---primary:
    run: tuberculosis-primary-care-pleurisy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: positive-tuberculosis-primary-care---primary/output
  progressive-tuberculosis-primary-care---primary:
    run: progressive-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-pleurisy---primary/output
  multiple-tuberculosis-primary-care---primary:
    run: multiple-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: progressive-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-associated---primary:
    run: tuberculosis-primary-care-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: multiple-tuberculosis-primary-care---primary/output
  tuberculosis-primary-care-nasopharynx---primary:
    run: tuberculosis-primary-care-nasopharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-associated---primary/output
  tuberculosis-primary-care-ethambutol---primary:
    run: tuberculosis-primary-care-ethambutol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-nasopharynx---primary/output
  tuberculosis-primary-care-means---primary:
    run: tuberculosis-primary-care-means---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-ethambutol---primary/output
  tuberculosis-primary-care-rifampicin---primary:
    run: tuberculosis-primary-care-rifampicin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-means---primary/output
  tuberculosis-primary-care-confirmed---primary:
    run: tuberculosis-primary-care-confirmed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-rifampicin---primary/output
  hilar-tuberculosis-primary-care---primary:
    run: hilar-tuberculosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: tuberculosis-primary-care-confirmed---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: hilar-tuberculosis-primary-care---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
