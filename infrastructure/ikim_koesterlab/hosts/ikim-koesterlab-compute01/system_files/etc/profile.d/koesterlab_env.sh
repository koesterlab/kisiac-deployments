if groups | grep koesterlab > /dev/null
then
    export TMPDIR=/mnt/tmp
    export SNAKEMAKE_PROFILE=default
    export SNAKEMAKE_OUTPUT_CACHE=/mnt/workspace/snakemake_cache
fi
