use strict;
use warnings;
use IO::Socket::INET;
use OPCUA::Open62541 'STATUSCODE_GOOD';

use Test::More tests => 11;
use Test::NoWarnings;
use Test::LeakTrace;

# preallocate integer variables for test result
my ($sok, $cok, $dok) = (0, 0, 0);
# show how memory for client and its config are expected to be allocated
no_leaks_ok {
    # keep global client config longer than the client
    my $config_global;
    {
	# create client object
	my $client = OPCUA::Open62541::Client->new();
	$sok = 1 if $client;

	# the config object directly uses data from the client
	# creating a config increases the client reference count
	my $config = $client->getConfig();
	$cok = 1 if $config;
	# copy of the config has no effect on the UA data structues
	$config_global = $config;
	# the client goes out of scope, but it is reference by the config
    }
    # both config and its client have valid memory
    my $sc = $config_global->setDefault();
    $dok = 1 if $sc eq STATUSCODE_GOOD;
    # config goes out of scope, it derefeneces the client
    # the client is destroyed
    # the config is destroyed
} "leak client config";
# Test::More inside Test::LeakTrace would create false positives
ok($sok, "client new");
ok($cok, "config get");
ok($dok, "default set");

my $server = IO::Socket::INET->new(
    LocalAddr       => "localhost",
    Proto           => "tcp",
    Listen          => 1,
);
ok($server, "server") or diag "server new and listen failed: $!";
my $port = $server->sockport();

SKIP: {
    skip "No UA_Client_disconnect_async in open62541", 5
	unless OPCUA::Open62541::Client->can('connect_async');
($sok, $cok, $dok, my $aok) = (0, 0, 0, 0);
no_leaks_ok {
    my $client = OPCUA::Open62541::Client->new();
    $sok = 1 if $client;
    my $config = $client->getConfig();
    $cok = 1 if $config;
    my $sc = $config->setDefault();
    $dok = 1 if $sc eq STATUSCODE_GOOD;
    $sc = $client->connect_async(
	"opc.tcp://localhost:$port",
	sub {
	    my ($c, $d, $i, $r) = @_;
	},
	undef,
    );
    $aok = 1 if $sc eq STATUSCODE_GOOD;
} "leak client async";
ok($sok, "client async new");
ok($cok, "config async get");
ok($dok, "default async set");
ok($aok, "client async connect");
}  # SKIP
