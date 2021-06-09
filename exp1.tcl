set ns [new Simulator]

set f [open exp4.tr w]

$ns trace-all $f

set nf [open exp4.nam w]

$ns namtrace-all $nf

 

proc finish {} {

global ns nf f

$ns flush-trace

close $nf

close $f

exec nam 1506002-exp4.nam &

exit 0

}



#Create three nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]

$ns at 0.0 "$n0 color blue"
$n0 color blue
$n0 label "Source"
$n0 shape square
$n0 label-color red


$ns at 0.0 "$n0 label \"Source\""
$ns at 0.0 "$n1 label \"Destination\""

#$n1 label "Destination"
#Create links between the nodes
$ns duplex-link $n0 $n2 2Mb 10ms DropTail
$ns duplex-link $n1 $n2 2Mb 10ms DropTail



#Setup a TCP connection between nodes n0 and n1
set tcp [new Agent/TCP]
$tcp set segmentSize- 1000
$tcp set class_ 2
$ns attach-agent $n0 $tcp
set sink [new Agent/TCPSink]
$ns attach-agent $n1 $sink
$ns connect $tcp $sink
$tcp set fid_ 1




#Setup a FTP over TCP connection
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ftp set type_ FTP

#schedule events for the ftp  agents
$ns at 1.0 "$ftp start"
$ns at 4.0 "$ftp stop"

#Call the finish procedure after 5 seconds of simulation time
$ns at 10.0 "finish"


#Run the simulation
$ns run

































