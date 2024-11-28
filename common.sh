function find_exec ()
{
    RET=0
    podman --version &> /dev/null && RET=1 || true

    if [ ${RET} -eq 1 ]
    then
        echo 'podman'
    else
        RET=0
        docker --version &> /dev/null && RET=1 || true

        if [ ${RET} -eq 1 ]
        then
            echo 'docker'
        else
            echo ''
        fi
    fi
}
