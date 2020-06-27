#Set variables
var temp_workspace=C:\Users\lalla\.jenkins\workspace

#
# Set variable values according to your configuration
#
var ltc-data-root = C:\CONTINUOUS_LOAD_TEST
#this will be the name of the folder inside of the location you specified Load Test Continuum to use 
#(default is “C:\CONTINUOUS_LOAD_TEST”)
var project-name = myFirst
var project-home = ${ltc-data-root}/${project-name}
#this category can be whatever you want it to be it is simply the name of the folder structure the report will be kept in
var category = BackComp.myFirst.Consistency
# scenario should be the name of the scenario in your load test file you want to run it with
var scenario = "Steady Load"
#base should be the folder location of the load test file you will be running
#var base =  C:\Users\lalla\.jenkins\workspace\LTPOC\LoadTestDevOps\loadTest

var base =  ${temp_workspace}\LTPOC\LoadTestDevOps\loadTest

#test-name should be the name of the load test file in the “base” folder above you want to run
var test-name = myFirst
# how long you want the load test to run for 
#(this doesn’t need to be set and if you don’t want it then remove “-minutes ${minutes}” from the loadtest command section below)
var minutes = 1
open ${base}/${test-name}.lt
loadtest -minutes ${minutes} -allReports ${project-home}/%d/${category}/${test-name} ${scenario}


 

