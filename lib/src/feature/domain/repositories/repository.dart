abstract class INetworkManager {
  Future<bool> get isConnected;
}

class NetworkManager extends INetworkManager {}
