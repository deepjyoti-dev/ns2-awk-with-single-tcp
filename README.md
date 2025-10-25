📡 NS-3 FTP over TCP Simulation (3 Nodes)

This NS-3 simulation models FTP traffic over TCP in a simple 3-node network with a source, router, and destination. It demonstrates traffic flow, trace generation, and visualization using NAM.

✅ Simulation Summary
Component	Details
Nodes	3 nodes: n0 (Source), n1 (Destination), n2 (Router)
Links	n0–n2 and n1–n2 each with 2 Mbps bandwidth and 10 ms delay
Traffic	FTP over TCP from n0 to n1
Simulation	FTP starts at 1.0 s and stops at 4.0 s
Trace Files	exp4.tr (text trace), exp4.nam (NAM animation)
Visualization	NAM used to display topology and packet flow
🔧 How to Run

Navigate to your NS-3 directory:

cd ~/ns-allinone-3.xx/ns-3.xx/


Save your simulation script as ftp_3nodes.cc or ftp_3nodes.py.

Build and run the simulation:

./waf --run "ftp_3nodes"


Open NAM visualization:

nam exp4.nam

📊 Output / Analysis

Trace File (exp4.tr) contains packet-level information:

Packets sent, received, and dropped

TCP acknowledgments and retransmissions

Timestamps and node details

NAM File (exp4.nam) shows:

Node positions and links

Packet flow visualization

FTP session start and stop timing

🧠 Notes

Bandwidth, delay, and TCP parameters can be modified for performance testing.

NAM provides an intuitive way to observe congestion, packet drops, and flow patterns.

Use FlowMonitor for more detailed throughput and latency statistics.

🏷️ Tags

#ns3 #TCP #FTP #simulation #network #nam #trace #3nodes #topology #packetflow
