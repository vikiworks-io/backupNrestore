PREFIX="t.com"
function decrement_current_date()
{
    N_DAYS="$1"
    DATE=`date --date "-${N_DAYS} days" +'%Y %m %d' 2> /dev/null`
    if [ $? -ne 0 ]; then
        DATE=`date -v-${N_DAYS}d  +'%Y %m %d'`
        if [ $? -ne 0 ]; then
            echo "error: unable to decrement date"
            exit 1
        fi
    fi

    YEAR=`echo $DATE | awk '{ print $1 }' `
    MONNTH=`echo $DATE | awk '{ print $2 }' `
    DAY=`echo $DATE | awk '{ print $3 }' `
    
    #echo "$DAY $MONNTH $YEAR"
}

function generate_test_files(){
    
    for ((i=0;i<30;i++))
    do
        decrement_current_date $i
        echo "creating file with old date ( ${YEAR} ${MONNTH} ${DAY} ) -> ( ${PREFIX}.$i.tar.gz )"
        touch -a -m -t "${YEAR}${MONNTH}${DAY}0130.09" "${PREFIX}.$i.tar.gz"
    done

    for ((i=0;i<30;i++))
    do
        decrement_current_date $i
        echo "creating file with old date ( ${YEAR} ${MONNTH} ${DAY} ) -> ( ${PREFIX}.$i.dummy.gz )"
        touch -a -m -t "${YEAR}${MONNTH}${DAY}0130.09" "${PREFIX}.$i.dummy.gz"
    done

}

function create_sandbox()
{
    cp ../delete_backups_older_than_x_days .
    BACKUP_DIR=`pwd`
    echo "DOMAIN='t.com'" > config.sh
    echo "BACKUP_DIR='$BACKUP_DIR'" >> config.sh
    
}

function verify_delete()
{

    for ((i=0;i<30;i++))
    do
        if [ ! -f "${PREFIX}.$i.dummy.gz" ]; then
            echo "verification_failure: dummy files are deleted, it should not be deleted"
            exit 1
        fi
    done

    for ((i=11;i<30;i++))
    do
        if [ -f "${PREFIX}.$i.tar.gz" ]; then
            echo "verification_failure: few files older than 10 days are not deleted"
            exit 1
        fi
    done

    for ((i=0;i<=10;i++))
    do
        if [ ! -f "${PREFIX}.$i.tar.gz" ]; then
            echo "verification_failure: few files not older than 10 days are deleted"
            exit 1
        fi
    done

    echo "verification success"
    echo "unit test is successful"


}

create_sandbox
generate_test_files
./delete_backups_older_than_x_days 10
verify_delete
./ut_clean.sh
