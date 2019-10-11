# Duke CBB520 Project: Calling SNPs in Yeast strain YJF153 Comparing to the strain S288c reference genome

This is the in class project (HW2) of the course Duke CBB520. All the scripts and codes are documented as Jupyter notebook inside the source folder. The notebooks can be executed by running Jupyter App or executed from command line, which uses the execute API of Jupyter:

`jupyter nbconvert --to notebook --execute mynotebook.ipynb`

The notebook has already been arranged in order and the purposes and connections of the scripts in those notebooks can be visualized in the flowchart below: 

![](./flowchart_call_snp.png)

The executed results and explanations of the results can be found inside each notebooks. The documentation is available by clicking the followed web links: https://duke-cbb520-project-snp.netlify.com/. The documentaiton can also be found in the docs folder (./docs/index.html).  

The end results will be the summary.pdf stored in the out folder. In the report, each type of SNPs are counted and plotted in the barplot. Note that the raw, trimmed and filtered reads are all aligned to the reference respectively in order to compare and observe how might the filtering threshold changes the resulted genome variants in this analysis. 

All the code has been executed in a docker image I set up, which the dockerfile can be downloaded from [Clintko/Duke_CBB520_HW2/dockerfile](https://github.com/clintko/Dockerfile/blob/master/Duke_CBB520_HW2/dockerfile). The dockerfile contains the steps of installing SRAtools, htslib tools, samtools, bcftools, and so on. The notebook `00_check_environment.ipynb` is not meant to be run but to help double check the tools a user needs to execute all other notebooks. Each cell check if the command exists or print out the version of the tools in the running environment.