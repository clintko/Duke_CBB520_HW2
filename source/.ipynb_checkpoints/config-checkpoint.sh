# Hack to handle broken pipes - IGNORE.
cleanup () {
    :
}
trap "cleanup" SIGPIPE

set -u

### Directories for Data
export DATA_BASE=$HOME/work/Data/SRR4841864
export RAW_FASTQS=$DATA_BASE/rawdata
export TRIMMED=$DATA_BASE/fastqs_trimmed
export FILTER=$DATA_BASE/fastqs_filter

### Genome
export FA_URL="ftp://ftp.ensembl.org/pub/release-98/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz"
export GTF_URL="ftp://ftp.ensembl.org/pub/release-98/gtf/saccharomyces_cerevisiae/Saccharomyces_cerevisiae.R64-1-1.98.gtf.gz"
export GTF=$(basename ${GTF_URL%.gz})
export FA=$(basename ${FA_URL%.gz})
export GENOME=$DATA_BASE/genome

### Alignment
export ALIGN_RAW=$DATA_BASE/align_raw
export ALIGN_TRIM=$DATA_BASE/align_trim
export ALIGN_FILTER=$DATA_BASE/align_filter

### Directories fo working directory
export CUROUT=$HOME/work/GitRepo/Duke_CBB520_HW2

### output directories
export OUT_RAW=$CUROUT/out_raw
export OUT_TRIM=$CUROUT/out_trim
export OUT_FILTER=$CUROUT/out_filter

### plotting directories
export FIG_RAW=$OUT_RAW/plot_stat
export FIG_TRIM=$OUT_TRIM/plot_stat
export FIG_FILTER=$OUT_FILTER/plot_stat

### FASTQC
export QC_RAW=$CUROUT/qc_output_raw
export QC_TRIM=$CUROUT/qc_output_trim
export QC_FILTER=$CUROUT/qc_output_filter

### ADAPTER
export MYINFO=$CUROUT/myinfo
export ADAPTERS=$MYINFO/TruSeq_adapter.fasta



alias vcfutils="/usr/bin/bcftools-1.9/misc/vcfutils.pl"
alias plot-vcfstats="/usr/bin/bcftools-1.9/misc/plot-vcfstats"