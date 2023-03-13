extends Node


var server := UDPServer.new()
var peers = []

# Called when the node enters the scene tree for the first time.
func _ready():
	server.listen(4242)

func _exit_tree():
	server.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var pos = Globals.active_vehicle.transform.origin
	print(pos)
#	server.poll() # Important!
#	if server.is_connection_available():
#		var peer : PacketPeerUDP = server.take_connection()
#		var packet = peer.get_packet()
#		print("Accepted peer: %s:%s" % [peer.get_packet_ip(), peer.get_packet_port()])
#		print("Received data: %s" % [packet.get_string_from_utf8()])
#		# Reply so it knows we received the message.
#		peer.put_packet(packet)
#		# Keep a reference so we can keep contacting the remote peer.
#		peers.append(peer)
#
#	for i in range(0, peers.size()):
#		var pos = Globals.active_vehicle.transform.origin
#		var camera = Globals.active_vehicle.find_node("cameraTarget", true, false)
#		var message = "pos: %s %s %s" % [pos.x,pos.y,pos.z]
#		peers[i].put_packet(message.to_utf8())
#		var image = camera.get_viewport().get_texture().get_data()
#		image.convert(4)
#		image.flip_y()
#		#print(image.get_size())
#		image.crop(145,145)
#		var data = image.data["data"];
#		print(data.size())
#
#		#print(image.size())
#		peers[i].put_packet(data)
	
