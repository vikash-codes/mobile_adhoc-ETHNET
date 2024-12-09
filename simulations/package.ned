package ethnet.simulations;

import inet.networklayer.configurator.ipv4.Ipv4FlatNetworkConfigurator;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import ned.IdealChannel;


@license(LGPL);
//
// TODO documentation
//
network EthNet
{
    @display("bgb=1030.925,549.0275");
    submodules:
        server: StandardHost {
            @display("p=128.26625,246.9425;is=l");
        }
        client2: StandardHost {
            @display("p=725.2438,246.9425;is=l");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=485.49374,41.95625;is=l");
        }
        client1: StandardHost {
            @display("p=725.2438,86.31");
        }
        client3: StandardHost {
            @display("p=713.2562,420.76126");
        }
        client4: StandardHost {
            @display("p=162.855,436.865");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client1.ethg++;
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
}
