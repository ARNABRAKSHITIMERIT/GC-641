	# TIMESTAMP_1=$(date "+%Y.%m.%d-%H.%M.%S")
# imerit organization create --name IMERIT_TEST_ORGANIZATION_NAME_$TIMESTAMP_1 > ADHOC_RESPONSE.txt
# # cat ADHOC_STORAGE.txt
# count_of_lines=0
# count_of_words=0
# while read line
# do
# content_of_lines[$count_of_lines]=$line
# echo "LINE INDEX - $count_of_lines" >> ADHOC_LINES_AND_WORDS.txt
# echo "${content_of_lines[$count_of_lines]}" >> ADHOC_LINES_AND_WORDS.txt
# # echo $line
# for word in $line 
# do 
# # # if [[  $word != *"+------------+--------------------------------------+"*  && $word != *"|"*   && $word != *"ORGANIZATION"*  && $word != *">"*   ]]
# # # then content[$count]=$word
# content_of_words[$count_of_words]=$word
# echo "INDEX OF WORD - $count_of_words" >> ADHOC_LINES_AND_WORDS.txt
# echo "VALUE OF WORD - ${content_of_words[$count_of_words]}" >> ADHOC_LINES_AND_WORDS.txt
# n="${#content_of_words[$count_of_words]}"
# echo "LENGTH OF WORD - $n" >> ADHOC_LINES_AND_WORDS.txt
# count_of_words=$((`expr $count_of_words + 1`))
# # # fi
# done 
# count_of_lines=$((`expr $count_of_lines + 1`))
# done < ADHOC_RESPONSE.txt

# if [[ "${content_of_lines[8]}" == *"role          client"* ]]
# then echo "True"
# fi

# n="${#content_of_words[18]}"
# echo $n 

# file_path="C:\\Users\\arnab.ra\\Desktop\\GC\\GROUNDCONTROL\\GITHUB\\imerit\\imerit-python\\ADHOC_STORAGE.txt"
# number_of_lines=`wc --lines < $file_path`
# number_of_words=`wc --word < $file_path`
# echo "Number of lines: $number_of_lines"
# echo "Number of words: $number_of_words"




# echo "The Membership Id is -------------------------------------------------------------------------------------------- ${content[8]}" >> ADHOC_REPORT.txt
# echo "The Organization Id is -------------------------------------------------------------------------------------------- ${content[12]}" >> ADHOC_REPORT.txt


# # if [[ ${content[0]} = "id" ]]
# # then echo "PASS"
# # fi

# imerit project create --organization-id 555a2d2e-cf1e-46a9-a45a-d2248a9fab08 --name IMERIT_TEST_PROJECT_NAME_$TIMESTAMP_3 --description IMERIT_TEST_PROJECT_DESCRIPTION_$TIMESTAMP_3 > OUTPUT\\TEST_CASE-3.txt
# imerit membership import-csv --organization-id 346b1ecd-22b8-4f56-a920-0ed3a0123378 --project-id 99a46730-c204-417f-944e-ad64677bffdd  --filename C:\\Users\\arnab.ra\\Desktop\\GC\\GROUNDCONTROL\\GITHUB\\imerit\\imerit-python\\OUTPUT\\BATCH_INVITE_PROJECT.csv > OUTPUT\\TEST_CASE-18.txt
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

cp  -R *CLI_DEMO_2023* ARCHIEVE
rm -r *CLI_DEMO_2023*
rm -r *AWS*

TIMESTAMP_1=$(date "+%Y.%m.%d-%H.%M.%S")
echo $TIMESTAMP_1 >> ORGANIZATION_REPORT.txt

imerit organization create --name IMERIT_TEST_ORGANIZATION_NAME_$TIMESTAMP_1 > ORGANIZATION_RESPONSE.txt

count_of_lines_organization=0
count_of_words_organization=0

while read line
do
content_of_lines_organization[$count_of_lines_organization]=$line
echo -e "\e[36m ${content_of_lines_organization[$count_of_lines_organization]} \e[0m "
for word in $line 
do 
content_of_words_organization[$count_of_words_organization]=$word
count_of_words_organization=$((`expr $count_of_words_organization + 1`))
done 
count_of_lines_organization=$((`expr $count_of_lines_organization + 1`))
done < ORGANIZATION_RESPONSE.txt

count_of_test_case=0
total_pass_case=0
total_fail_case=0
total_test_case=50

test_case_name[0]="TC_01 -- Organization - Verify that the Symbol - > - is at Index - 1"
echo -e "\e[1;35m ${test_case_name[0]} \e[0m"
if [[  "${content_of_words_organization[1]}" == *">"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`))  - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`))  - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[1]="TC_02 -- Organization - Verify that the Word - ORGANIZATION - is at Index - 2"
echo -e "\e[1;35m ${test_case_name[1]} \e[0m"
if [[  "${content_of_words_organization[2]}" == *"ORGANIZATION"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[2]="TC_03 -- Organization - Verify that the Symbol - | - is at Index - 5 , 7 , 9 , 10 , 12 , 14 , 15 , 17 , 19 , 20 , 22 , 24"
echo -e "\e[1;35m ${test_case_name[2]} \e[0m"
if [[  "${content_of_words_organization[5]}" == *"|"*  &&  "${content_of_words_organization[7]}" == *"|"*  &&  "${content_of_words_organization[9]}" == *"|"*  &&  "${content_of_words_organization[10]}" == *"|"*  &&  "${content_of_words_organization[12]}" == *"|"*  &&  "${content_of_words_organization[14]}" == *"|"*  &&  "${content_of_words_organization[15]}" == *"|"*  &&  "${content_of_words_organization[17]}" == *"|"*  &&  "${content_of_words_organization[19]}" == *"|"*  &&  "${content_of_words_organization[20]}" == *"|"*  &&  "${content_of_words_organization[22]}" == *"|"*  &&  "${content_of_words_organization[24]}" == *"|"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[3]="TC_04 -- Organization - Verify that the Word - id - is at Index - 6"
echo -e "\e[1;35m ${test_case_name[3]} \e[0m"
if [[  "${content_of_words_organization[6]}" == *"id"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[4]="TC_05 -- Organization - Verify that the Word - name - is at Index - 11"
echo -e "\e[1;35m ${test_case_name[4]} \e[0m"
if [[  "${content_of_words_organization[11]}" == *"name"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[5]="TC_06 -- Organization - Verify that the Word - created_at - is at Index - 16"
echo -e "\e[1;35m ${test_case_name[5]} \e[0m"
if [[  "${content_of_words_organization[16]}" == *"created_at"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[6]="TC_07 -- Organization - Verify that the Word - updated_at - is at Index - 21"
echo -e "\e[1;35m ${test_case_name[6]} \e[0m"
if [[  "${content_of_words_organization[21]}" == *"updated_at"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[7]="TC_08 -- Organization - Verify that the Symbols + , - are at Index - 4 , 25"
echo -e "\e[1;35m ${test_case_name[7]} \e[0m"
if [[  "${content_of_words_organization[4]}" == *"+"*  &&  "${content_of_words_organization[4]}" == *"-"*   &&  "${content_of_words_organization[25]}" == *"+"*  &&  "${content_of_words_organization[25]}" == *"-"* ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[8]="TC_09 -- Organization - Verify that the Symbol - is and Symbols - : , _ , + , | , . are not at Index - 8"
echo -e "\e[1;35m ${test_case_name[8]} \e[0m"
if [[  "${content_of_words_organization[8]}" == *"-"*  &&  "${content_of_words_organization[8]}" != *":"*  &&  "${content_of_words_organization[8]}" != *"_"*  &&  "${content_of_words_organization[8]}" != *"+"*  &&  "${content_of_words_organization[8]}" != *"|"*  &&  "${content_of_words_organization[8]}" != *"."*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m  PASS = $total_pass_case                 \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[9]="TC_10 -- Organization - Verify that the Word - IMERIT_TEST_ORGANIZATION_NAME and Symbols - , . are at Index - 13"
echo -e "\e[1;35m ${test_case_name[9]} \e[0m"
if [[  "${content_of_words_organization[13]}" == *"IMERIT_TEST_ORGANIZATION_NAME_"*  &&  "${content_of_words_organization[13]}" == *"."*  &&  "${content_of_words_organization[13]}" == *"-"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[10]="TC_11 -- Organization - Verify that the Symbols - , : , T , Z are at Index - 18 , 23"
echo -e "\e[1;35m ${test_case_name[10]} \e[0m"
if [[  "${content_of_words_organization[18]}" == *"-"*  &&  "${content_of_words_organization[18]}" == *":"*  &&  "${content_of_words_organization[18]}" == *"T"*   &&  "${content_of_words_organization[18]}" == *"Z"*  &&  "${content_of_words_organization[23]}" == *"-"*  &&  "${content_of_words_organization[23]}" == *":"*  &&  "${content_of_words_organization[23]}" == *"T"*   &&  "${content_of_words_organization[23]}" == *"Z"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> ORGANIZATION_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> ORGANIZATION_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

TIMESTAMP_2=$(date "+%Y.%m.%d-%H.%M.%S")

echo 
echo 
echo -e "\e[35m Test Execution started at -->  $TIMESTAMP_1 \e[0m" 
echo -e "\e[35m Test Execution ended at  --->  $TIMESTAMP_2 \e[0m" 
echo >> ORGANIZATION_REPORT.txt
echo >> ORGANIZATION_REPORT.txt

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TIMESTAMP_3=$(date "+%Y.%m.%d-%H.%M.%S")
echo $TIMESTAMP_3 >> PROJECT_REPORT.txt

imerit project create --organization-id "${content_of_words_organization[8]}" --name IMERIT_TEST_PROJECT_NAME_$TIMESTAMP_3 --description IMERIT_TEST_PROJECT_DESCRIPTION_$TIMESTAMP_3 > PROJECT_RESPONSE.txt

count_of_lines_project=0
count_of_words_project=0

while read line
do
content_of_lines_project[$count_of_lines_project]=$line
echo -e "\e[36m ${content_of_lines_project[$count_of_lines_project]} \e[0m "
for word in $line 
do 
content_of_words_project[$count_of_words_project]=$word
count_of_words_project=$((`expr $count_of_words_project + 1`))
done 
count_of_lines_project=$((`expr $count_of_lines_project + 1`))
done < PROJECT_RESPONSE.txt

test_case_name[11]="TC_12 -- Project - Verify that the Symbol - > - is at Index - 1"
echo -e "\e[1;35m ${test_case_name[11]} \e[0m"
if [[  "${content_of_words_project[1]}" == *"<"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[12]="TC_13 -- Project - Verify that the Word - CREATED - is at Index - 2"
echo -e "\e[1;35m ${test_case_name[12]} \e[0m"
if [[  "${content_of_words_project[2]}" == *"CREATED"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[13]="TC_14 -- Project - Verify that the Word - PROJECT - is at Index - 3"
echo -e "\e[1;35m ${test_case_name[13]} \e[0m"
if [[  "${content_of_words_project[3]}" == *"PROJECT"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[14]="TC_15 -- Verify that the Symbol - | - is at Index - 6 , 8 , 10 , 11 , 13 , 15 , 16 , 18 , 20 , 21 , 23 , 24 , 25 , 27 , 29 , 30 , 32 , 34 , 35 , 37 , 39 , 40 , 42 , 44 , 45 , 47 , 49"
echo -e "\e[1;35m ${test_case_name[14]} \e[0m"
if [[  "${content_of_words_project[6]}" == *"|"*  &&  "${content_of_words_project[8]}" == *"|"*  &&  "${content_of_words_project[10]}" == *"|"*  &&  "${content_of_words_project[11]}" == *"|"*  &&  "${content_of_words_project[13]}" == *"|"*  &&  "${content_of_words_project[15]}" == *"|"*  &&  "${content_of_words_project[16]}" == *"|"*  &&  "${content_of_words_project[18]}" == *"|"*  &&  "${content_of_words_project[20]}" == *"|"*  &&  "${content_of_words_project[21]}" == *"|"*  &&  "${content_of_words_project[23]}" == *"|"*  &&  "${content_of_words_project[24]}" == *"|"*  &&  "${content_of_words_project[25]}" == *"|"*  &&  "${content_of_words_project[27]}" == *"|"*  &&  "${content_of_words_project[29]}" == *"|"*  &&  "${content_of_words_project[30]}" == *"|"*  &&  "${content_of_words_project[32]}" == *"|"*  &&  "${content_of_words_project[34]}" == *"|"*  &&  "${content_of_words_project[35]}" == *"|"*  &&  "${content_of_words_project[37]}" == *"|"*  &&  "${content_of_words_project[39]}" == *"|"*  &&  "${content_of_words_project[40]}" == *"|"*  &&  "${content_of_words_project[42]}" == *"|"*  &&  "${content_of_words_project[44]}" == *"|"*  &&  "${content_of_words_project[45]}" == *"|"*  &&  "${content_of_words_project[47]}" == *"|"*  &&  "${content_of_words_project[49]}" == *"|"*    ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[15]="TC_16 -- Verify that the Word - id - is at Index - 7"
echo -e "\e[1;35m ${test_case_name[15]} \e[0m"
if [[  "${content_of_words_project[7]}" == *"id"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[16]="TC_17 -- Verify that the Word - name - is at Index - 12"
echo -e "\e[1;35m ${test_case_name[16]} \e[0m"
if [[  "${content_of_words_project[12]}" == *"name"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[17]="TC_18 -- Verify that the Word - description - is at Index - 17"
echo -e "\e[1;35m ${test_case_name[17]} \e[0m"
if [[  "${content_of_words_project[17]}" == *"description"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[18]="TC_19 -- Verify that the Word - platform - is at Index - 22"
echo -e "\e[1;35m ${test_case_name[18]} \e[0m"
if [[  "${content_of_words_project[22]}" == *"platform"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[19]="TC_20 -- Verify that the Word - status - is at Index - 26"
echo -e "\e[1;35m ${test_case_name[19]} \e[0m"
if [[  "${content_of_words_project[26]}" == *"status"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[20]="TC_21 -- Verify that the Word - in progress - is at Index - 28"
echo -e "\e[1;35m ${test_case_name[20]} \e[0m"
if [[  "${content_of_words_project[28]}" == *"in-progress"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[21]="TC_22 -- Verify that the Word - item_count - is at Index - 31"
echo -e "\e[1;35m ${test_case_name[21]} \e[0m"
if [[  "${content_of_words_project[31]}" == *"item_count"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[22]="TC_23 -- Project - Verify that the Symbol - 0 - is at Index - 33 , 38"
echo -e "\e[1;35m ${test_case_name[22]} \e[0m"
if [[  "${content_of_words_project[33]}" == *"0"*  &&  "${content_of_words_project[38]}" == *"0"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[23]="TC_24 -- Project - Verify that the Word - progress - is at Index - 36"
echo -e "\e[1;35m ${test_case_name[23]} \e[0m"
if [[  "${content_of_words_project[36]}" == *"progress"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[24]="TC_25 -- Project - Verify that the Word - created_at - is at Index - 41"
echo -e "\e[1;35m ${test_case_name[24]} \e[0m"
if [[  "${content_of_words_project[41]}" == *"created_at"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[25]="TC_26 -- Project - Verify that the Word - updated_at - is at Index - 46"
echo -e "\e[1;35m ${test_case_name[25]} \e[0m"
if [[  "${content_of_words_project[46]}" == *"updated_at"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[26]="TC_27 -- Project - Verify that the Symbols + , - are at Index - 5 , 50"
echo -e "\e[1;35m ${test_case_name[26]} \e[0m"
if [[  "${content_of_words_project[5]}" == *"+"*  &&  "${content_of_words_project[5]}" == *"-"*   &&  "${content_of_words_project[50]}" == *"+"*  &&  "${content_of_words_project[50]}" == *"-"* ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[27]="TC_28 -- Project - Verify that the Symbol - is and Symbols - : , _ , + , | , . are not at Index - 9"
echo -e "\e[1;35m ${test_case_name[27]} \e[0m"
if [[  "${content_of_words_project[9]}" == *"-"*  &&  "${content_of_words_project[9]}" != *":"*  &&  "${content_of_words_project[9]}" != *"_"*  &&  "${content_of_words_project[9]}" != *"+"*  &&  "${content_of_words_project[9]}" != *"|"*  &&  "${content_of_words_project[9]}" != *"."*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[28]="TC_29 -- Project - Verify that the Word - IMERIT_TEST_PROJECT_NAME and Symbols - , . are at Index - 14"
echo -e "\e[1;35m ${test_case_name[28]} \e[0m"
if [[  "${content_of_words_project[14]}" == *"IMERIT_TEST_PROJECT_NAME_"*  &&  "${content_of_words_project[14]}" == *"."*  &&  "${content_of_words_project[14]}" == *"-"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[29]="TC_30 -- Project - Verify that the Word - IMERIT_TEST_PROJECT_DESCRIPTION and Symbols - , . are at Index - 19"
echo -e "\e[1;35m ${test_case_name[29]} \e[0m"
if [[  "${content_of_words_project[19]}" == *"IMERIT_TEST_PROJECT_DESCRIPTION_"*  &&  "${content_of_words_project[19]}" == *"."*  &&  "${content_of_words_project[19]}" == *"-"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[30]="TC_31 -- Project - Verify that the Symbols - , : , T , Z are at Index - 43 , 48"
echo -e "\e[1;35m ${test_case_name[30]} \e[0m"
if [[  "${content_of_words_project[43]}" == *"-"*  &&  "${content_of_words_project[43]}" == *":"*  &&  "${content_of_words_project[43]}" == *"T"*   &&  "${content_of_words_project[43]}" == *"Z"*  &&  "${content_of_words_project[48]}" == *"-"*  &&  "${content_of_words_project[48]}" == *":"*  &&  "${content_of_words_project[48]}" == *"T"*   &&  "${content_of_words_project[48]}" == *"Z"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> PROJECT_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> PROJECT_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

TIMESTAMP_4=$(date "+%Y.%m.%d-%H.%M.%S")

echo 
echo 
echo -e "\e[35m Test Execution started at -->  $TIMESTAMP_3 \e[0m" 
echo -e "\e[35m Test Execution ended at  --->  $TIMESTAMP_4 \e[0m" 
echo >> PROJECT_REPORT.txt
echo >> PROJECT_REPORT.txt

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TIMESTAMP_5=$(date "+%Y.%m.%d-%H.%M.%S")
echo $TIMESTAMP_5 >> MEMBERSHIP_REPORT.txt

imerit membership import-csv --organization-id "${content_of_words_organization[8]}" --project-id "${content_of_words_project[9]}"  --filename C:\\Users\\arnab.ra\\Desktop\\GC\\GROUNDCONTROL\\GITHUB\\imerit\\imerit-python\\OUTPUT\\BATCH_INVITE_PROJECT.csv > MEMBERSHIP_RESPONSE.txt

count_of_lines_membership=0
count_of_words_membership=0

while read line
do
content_of_lines_membership[$count_of_lines_membership]=$line
echo -e "\e[36m ${content_of_lines_membership[$count_of_lines_membership]} \e[0m "
for word in $line 
do 
content_of_words_membership[$count_of_words_membership]=$word
count_of_words_membership=$((`expr $count_of_words_membership + 1`))
done 
count_of_lines_membership=$((`expr $count_of_lines_membership + 1`))
done < MEMBERSHIP_RESPONSE.txt

test_case_name[31]="TC_32 -- Membership - Verify that the Symbol - > - is at Index - 1"
echo -e "\e[1;35m ${test_case_name[31]} \e[0m"
if [[  "${content_of_words_membership[1]}" == *"<"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[32]="TC_33 -- Membership - Verify that the Word - INVITED - is at Index - 2"
echo -e "\e[1;35m ${test_case_name[32]} \e[0m"
if [[  "${content_of_words_membership[2]}" == *"INVITED"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[33]="TC_34 -- Membership - Verify that the Word - MEMBERS - is at Index - 3"
echo -e "\e[1;35m ${test_case_name[33]} \e[0m"
if [[  "${content_of_words_membership[3]}" == *"MEMBERS"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[34]="TC_35 -- Membership - Verify that the Word - ID - is at Index - 5"
echo -e "\e[1;35m ${test_case_name[34]} \e[0m"
if [[  "${content_of_words_membership[5]}" == *"ID"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[35]="TC_36 -- Membership - Verify that the Word - EMAIL - is at Index - 6"
echo -e "\e[1;35m ${test_case_name[35]} \e[0m"
if [[  "${content_of_words_membership[6]}" == *"EMAIL"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[36]="TC_37 -- Membership - Verify that the Word - ORGANIZATION - is at Index - 7"
echo -e "\e[1;35m ${test_case_name[36]} \e[0m"
if [[  "${content_of_words_membership[7]}" == *"ORGANIZATION"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[37]="TC_38 -- Membership - Verify that the Word - PROJECT - is at Index - 8"
echo -e "\e[1;35m ${test_case_name[37]} \e[0m"
if [[  "${content_of_words_membership[8]}" == *"PROJECT"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[38]="TC_39 -- Membership - Verify that the Word - ROLE - is at Index - 9"
echo -e "\e[1;35m ${test_case_name[38]} \e[0m"
if [[  "${content_of_words_membership[9]}" == *"ROLE"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[39]="TC_40 -- Membership - Verify that the Word - CREATED_AT - is at Index - 10"
echo -e "\e[1;35m ${test_case_name[39]} \e[0m"
if [[  "${content_of_words_membership[10]}" == *"CREATED_AT"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[40]="TC_41 -- Membership - Verify that the Word - UPDATED_AT - is at Index - 11"
echo -e "\e[1;35m ${test_case_name[40]} \e[0m"
if [[  "${content_of_words_membership[11]}" == *"UPDATED_AT"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[41]="TC_42 -- Membership - Verify that the Symbols ----- are at Index - 12 , 13 , 14 , 15 , 16 , 17 , 18"
echo -e "\e[1;35m ${test_case_name[41]} \e[0m"
if [[  "${content_of_words_membership[12]}" == *"-----"*  &&  "${content_of_words_membership[13]}" == *"-----"*  &&  "${content_of_words_membership[14]}" == *"-----"*  &&  "${content_of_words_membership[15]}" == *"-----"*  &&  "${content_of_words_membership[16]}" == *"-----"*  &&  "${content_of_words_membership[17]}" == *"-----"*  &&  "${content_of_words_membership[18]}" == *"-----"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[42]="TC_43 -- Membership - Verify that the Symbol - is and Symbols - : , _ , + , | , . are not at Index - 19  , 21 , 22"
echo -e "\e[1;35m ${test_case_name[42]} \e[0m"
if [[  "${content_of_words_membership[19]}" == *"-"*  &&  "${content_of_words_membership[19]}" != *":"*  &&  "${content_of_words_membership[19]}" != *"_"*  &&  "${content_of_words_membership[19]}" != *"+"*  &&  "${content_of_words_membership[19]}" != *"|"*  &&  "${content_of_words_membership[19]}" != *"."*  &&  "${content_of_words_membership[21]}" == *"-"*  &&  "${content_of_words_membership[21]}" != *":"*  &&  "${content_of_words_membership[21]}" != *"_"*  &&  "${content_of_words_membership[21]}" != *"+"*  &&  "${content_of_words_membership[21]}" != *"|"*  &&  "${content_of_words_membership[21]}" != *"."*  &&  "${content_of_words_membership[22]}" == *"-"*  &&  "${content_of_words_membership[22]}" != *":"*  &&  "${content_of_words_membership[22]}" != *"_"*  &&  "${content_of_words_membership[22]}" != *"+"*  &&  "${content_of_words_membership[22]}" != *"|"*  &&  "${content_of_words_membership[22]}" != *"."*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[43]="TC_44 -- Membership - Verify that the Symbol - is and Symbols - : , _ , + , | , . are not at Index - 26 , 28 , 29"
echo -e "\e[1;35m ${test_case_name[43]} \e[0m"
if [[  "${content_of_words_membership[26]}" == *"-"*  &&  "${content_of_words_membership[26]}" != *":"*  &&  "${content_of_words_membership[26]}" != *"_"*  &&  "${content_of_words_membership[26]}" != *"+"*  &&  "${content_of_words_membership[26]}" != *"|"*  &&  "${content_of_words_membership[26]}" != *"."*  &&  "${content_of_words_membership[28]}" == *"-"*  &&  "${content_of_words_membership[28]}" != *":"*  &&  "${content_of_words_membership[28]}" != *"_"*  &&  "${content_of_words_membership[28]}" != *"+"*  &&  "${content_of_words_membership[28]}" != *"|"*  &&  "${content_of_words_membership[28]}" != *"."*  &&  "${content_of_words_membership[29]}" == *"-"*  &&  "${content_of_words_membership[29]}" != *":"*  &&  "${content_of_words_membership[29]}" != *"_"*  &&  "${content_of_words_membership[29]}" != *"+"*  &&  "${content_of_words_membership[29]}" != *"|"*  &&  "${content_of_words_membership[29]}" != *"."*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[44]="TC_45 -- Membership - Verify that the Words end with - "@imerit.net" at index - 20 , 27"
echo -e "\e[1;35m ${test_case_name[44]} \e[0m"
if [[  "${content_of_words_membership[20]}" == *"@imerit.net"*  &&  "${content_of_words_membership[27]}" == *"@imerit.net"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[45]="TC_46 -- Membership - Verify that the Word is either - team_lead or agent at index - 23"
echo -e "\e[1;35m ${test_case_name[45]} \e[0m"
if [[  "${content_of_words_membership[23]}" == *"team_lead"*  ||  "${content_of_words_membership[23]}" == *"agent"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[46]="TC_47 -- Membership - Verify that the Word is either - team_lead or agent at index - 30"
echo -e "\e[1;35m ${test_case_name[46]} \e[0m"
if [[  "${content_of_words_membership[30]}" == *"team_lead"*  ||  "${content_of_words_membership[30]}" == *"agent"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[47]="TC_48 -- Membership - Verify that the Symbols - , : , T , Z are at Index - 24 , 25 , 31 , 32"
echo -e "\e[1;35m ${test_case_name[47]} \e[0m"
if [[  "${content_of_words_membership[24]}" == *"-"*  &&  "${content_of_words_membership[24]}" == *":"*  &&  "${content_of_words_membership[24]}" == *"T"*   &&  "${content_of_words_membership[24]}" == *"Z"*  &&  "${content_of_words_membership[25]}" == *"-"*  &&  "${content_of_words_membership[25]}" == *":"*  &&  "${content_of_words_membership[25]}" == *"T"*   &&  "${content_of_words_membership[25]}" == *"Z"*  &&  "${content_of_words_membership[31]}" == *"-"*  &&  "${content_of_words_membership[31]}" == *":"*  &&  "${content_of_words_membership[31]}" == *"T"*   &&  "${content_of_words_membership[31]}" == *"Z"*  &&  "${content_of_words_membership[32]}" == *"-"*  &&  "${content_of_words_membership[32]}" == *":"*  &&  "${content_of_words_membership[32]}" == *"T"*   &&  "${content_of_words_membership[32]}" == *"Z"*  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> MEMBERSHIP_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> MEMBERSHIP_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

TIMESTAMP_6=$(date "+%Y.%m.%d-%H.%M.%S")

echo 
echo 
echo -e "\e[35m Test Execution started at -->  $TIMESTAMP_5 \e[0m" 
echo -e "\e[35m Test Execution ended at  --->  $TIMESTAMP_6 \e[0m" 
echo >> MEMBERSHIP_REPORT.txt
echo >> MEMBERSHIP_REPORT.txt

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TIMESTAMP_7=$(date "+%Y.%m.%d-%H.%M.%S")
echo $TIMESTAMP_7 >> SPECIAL_REPORT.txt

echo 
echo 
echo -e "\e[36m SPECIAL TEST CASES \e[0m "
echo 
echo

test_case_name[48]="TC_49 -- Special - Verify that the Organization_Id is same for both - Organizations and Memberships"
echo -e "\e[1;35m ${test_case_name[48]} \e[0m"
if [[  "${content_of_words_organization[8]}" == "${content_of_words_membership[21]}"  &&  "${content_of_words_organization[8]}" == "${content_of_words_membership[28]}"  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> SPECIAL_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> SPECIAL_REPORT.txt
fi
count_of_test_case=$((`expr $count_of_test_case + 1`))

test_case_name[49]="TC_50 -- Special - Verify that the Project_Id is same for both - Projects and Memberships"
echo -e "\e[1;35m ${test_case_name[49]} \e[0m"
if [[  "${content_of_words_project[9]}" == "${content_of_words_membership[22]}"  &&  "${content_of_words_project[9]}" == "${content_of_words_membership[29]}"  ]]
then 
test_case_status[$count_of_test_case]="PASS"
total_pass_case=$((`expr $total_pass_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case                \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - PASS" >> SPECIAL_REPORT.txt
else
test_case_status[$count_of_test_case]="FAIL"
total_fail_case=$((`expr $total_fail_case + 1`))
echo -e "\e[34m Test Case Executed = $((`expr $count_of_test_case + 1`))                  \e[32m PASS = $total_pass_case              \e[31m       FAIL = $total_fail_case                  \e[33m      PENDING = $((`expr $total_test_case - $count_of_test_case - 1`))  \e[0m "
echo "Status of Test Case $((`expr $count_of_test_case + 1`)) - FAIL" >> SPECIAL_REPORT.txt
fi
# count_of_test_case=$((`expr $count_of_test_case + 1`))

TIMESTAMP_8=$(date "+%Y.%m.%d-%H.%M.%S")

echo 
echo 
echo -e "\e[35m Test Execution started at -->  $TIMESTAMP_7 \e[0m" 
echo -e "\e[35m Test Execution ended at  --->  $TIMESTAMP_8 \e[0m" 
echo >> SPECIAL_REPORT.txt
echo >> SPECIAL_REPORT.txt

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TIMESTAMP_9=$(date "+%Y.%m.%d-%H.%M.%S")

echo 
echo
echo -e "\e[1;36m TEST SUITE - SUMMARY \e[0m "
echo -e "\e[90m 1. No. of Test Cases Executed = $((`expr $count_of_test_case + 1`)) \e[0m"
echo -e "\e[90m 2. No. of Test Cases Passed = $total_pass_case \e[0m"
echo -e "\e[90m 3. No. of Test Cases Failed = $total_fail_case \e[0m"
echo -e "\e[90m 4. No. of Test Cases Skipped = 0 \e[0m"
echo -e "\e[90m 5. Start Time = $TIMESTAMP_1 \e[0m"
echo -e "\e[90m 6. End Time = $TIMESTAMP_9 \e[0m"

count_of_fail=0
for ((i=0; i<$total_test_case; i++))
do
if  [[ "${test_case_status[$i]}" == "FAIL" ]]
then
count_of_fail=$((`expr $count_of_fail + 1`))
fi
done

if [[ $count_of_fail > 0 ]]
then 
echo 
echo 
echo -e "\e[36m Failed Test Case Details - \e[0m" 
for ((i=0; i<$total_test_case; i++))
do
if  [[ "${test_case_status[$i]}" == "FAIL" ]]
then
echo " ${test_case_name[i]}"
fi
done
fi

echo "TEST SUITE - SUMMARY" >> TEST_SUITE_DETAILS.txt
echo "1. No. of Test Cases Executed = $((`expr $count_of_test_case + 1`))"  >> TEST_SUITE_DETAILS.txt
echo "2. No. of Test Cases Passed = $total_pass_case"  >> TEST_SUITE_DETAILS.txt
echo "3. No. of Test Cases Failed = $total_fail_case"  >> TEST_SUITE_DETAILS.txt
echo "4. No. of Test Cases Skipped = 0"  >> TEST_SUITE_DETAILS.txt
echo "5. Start Time = $TIMESTAMP_1"  >> TEST_SUITE_DETAILS.txt
echo "6. End Time = $TIMESTAMP_9"  >> TEST_SUITE_DETAILS.txt

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TIMESTAMP_10=$(date "+%Y.%m.%d-%H.%M.%S")

mkdir CLI_DEMO_$TIMESTAMP_10
chmod 777 CLI_DEMO_$TIMESTAMP_10

cp ORGANIZATION_RESPONSE.txt CLI_DEMO_$TIMESTAMP_10\\1_ORGANIZATION_RESPONSE.txt
rm ORGANIZATION_RESPONSE.txt
cp ORGANIZATION_REPORT.txt CLI_DEMO_$TIMESTAMP_10\\2_ORGANIZATION_REPORT.txt
rm ORGANIZATION_REPORT.txt

cp PROJECT_RESPONSE.txt CLI_DEMO_$TIMESTAMP_10\\3_PROJECT_RESPONSE.txt
rm PROJECT_RESPONSE.txt
cp PROJECT_REPORT.txt CLI_DEMO_$TIMESTAMP_10\\4_PROJECT_REPORT.txt
rm PROJECT_REPORT.txt

cp MEMBERSHIP_RESPONSE.txt CLI_DEMO_$TIMESTAMP_10\\5_MEMBERSHIP_RESPONSE.txt
rm MEMBERSHIP_RESPONSE.txt
cp MEMBERSHIP_REPORT.txt CLI_DEMO_$TIMESTAMP_10\\6_MEMBERSHIP_REPORT.txt
rm MEMBERSHIP_REPORT.txt

cp SPECIAL_REPORT.txt CLI_DEMO_$TIMESTAMP_10\\7_SPECIAL_REPORT.txt
rm SPECIAL_REPORT.txt

cp TEST_SUITE_DETAILS.txt CLI_DEMO_$TIMESTAMP_10\\8_TEST_SUITE_DETAILS.txt
rm TEST_SUITE_DETAILS.txt

cat \CLI_DEMO_$TIMESTAMP_10\\1_ORGANIZATION_RESPONSE.txt | tr '=' ',' > \CLI_DEMO_$TIMESTAMP_10\\1_ORGANIZATION_RESPONSE.csv
cat \CLI_DEMO_$TIMESTAMP_10\\2_ORGANIZATION_REPORT.txt | tr '=' ',' > \CLI_DEMO_$TIMESTAMP_10\\2_ORGANIZATION_REPORT.csv
cat \CLI_DEMO_$TIMESTAMP_10\\3_PROJECT_RESPONSE.txt | tr '=' ',' > \CLI_DEMO_$TIMESTAMP_10\\3_PROJECT_RESPONSE.csv
cat \CLI_DEMO_$TIMESTAMP_10\\4_PROJECT_REPORT.txt | tr '=' ',' > \CLI_DEMO_$TIMESTAMP_10\\4_PROJECT_REPORT.csv
cat \CLI_DEMO_$TIMESTAMP_10\\5_MEMBERSHIP_RESPONSE.txt | tr '=' ',' > \CLI_DEMO_$TIMESTAMP_10\\5_MEMBERSHIP_RESPONSE.csv
cat \CLI_DEMO_$TIMESTAMP_10\\6_MEMBERSHIP_REPORT.txt | tr '=' ',' > \CLI_DEMO_$TIMESTAMP_10\\6_MEMBERSHIP_REPORT.csv
cat \CLI_DEMO_$TIMESTAMP_10\\7_SPECIAL_REPORT.txt | tr '=' ',' > \CLI_DEMO_$TIMESTAMP_10\\7_SPECIAL_REPORT.csv
cat \CLI_DEMO_$TIMESTAMP_10\\8_TEST_SUITE_DETAILS.txt | tr '=' ',' > \CLI_DEMO_$TIMESTAMP_10\\8_TEST_SUITE_DETAILS.csv

mkdir AWS
chmod 777 AWS 
cp  -R CLI_DEMO_$TIMESTAMP_10 AWS

aws s3 sync C:\\Users\\arnab.ra\\Desktop\\GC\\GROUNDCONTROL\\GITHUB\\imerit\\imerit-python\\AWS s3://imerit-engine-playground > AWS_STORAGE.txt
cp AWS_STORAGE.txt CLI_DEMO_$TIMESTAMP_10\\9_AWS_STORAGE.txt
rm AWS_STORAGE.txt

aws s3 sync C:\\Users\\arnab.ra\\Desktop\\GC\\GROUNDCONTROL\\GITHUB\\imerit\\imerit-python\\ARCHIEVE s3://imerit-engine-playground/ARCHIEVE > AWS_ARCHIEVE.txt
cp AWS_ARCHIEVE.txt CLI_DEMO_$TIMESTAMP_10\\10_AWS_ARCHIEVE.txt
rm AWS_ARCHIEVE.txt

echo
echo -e "\e[36m Location of Test Results in AWS - s3:\\imerit-engine-playground\\CLI_DEMO_$TIMESTAMP_10 \e[0m"
aws s3 ls s3://imerit-engine-playground/CLI_DEMO_$TIMESTAMP_10/
echo 
echo

echo "$((`expr $count_of_test_case + 1`)),$total_pass_case,$total_fail_case,0,$TIMESTAMP_9" >> REPORT\\REPORT_$TIMESTAMP_10.csv
aws s3 sync C:\\Users\\arnab.ra\\Desktop\\GC\\GROUNDCONTROL\\GITHUB\\imerit\\imerit-python\\REPORT s3://imerit-engine-playground/arnabtesting > AWS_REPORT.txt
cp AWS_REPORT.txt CLI_DEMO_$TIMESTAMP_10\\11_AWS_REPORT.txt
rm AWS_REPORT.txt

echo -e "\e[36m Location of Test Results - C:\Users\arnab.ra\Desktop\GC\GROUNDCONTROL\GITHUB\imerit\imerit-python\CLI_DEMO_$TIMESTAMP_10 \e[0m"
ls CLI_DEMO_$TIMESTAMP_10
echo 
echo 

aws athena start-query-execution --query-string "SELECT * FROM "AwsDataCatalog"."arnabtesting"."arnabtesting" order by timestamp desc limit 10;" > ATHENA_QUERY.txt

echo -e "\e[36m Last 10 Execution Details - \e[0m"

while read line
do
for word in $line 
do 
if [[ $word == *"-"* ]]
then 
#echo ${word:1:36}
aws s3 cp s3://imerit-athena-query-results/${word:1:36}.csv -
break
fi
done 
done < ATHENA_QUERY.txt

# aws s3 cp s3://imerit-athena-query-results/$execution_id.csv -

echo 
echo 

echo " Do you want to execute the Test Suite again - Y/N ? "
read answer
if [[ "$answer" == *"Y"*  ||  "$answer" == *"YES"*  || "$answer" == *"Yes"*  ||  "$answer" == *"y"*  ||  "$answer" == *"yes"* ]]
then
./ADHOC_TESTING_4.sh
else 
echo -e "\e[1;33m THANK YOU AND GOOD BYE ! \e[0m"
fi
echo 
echo
