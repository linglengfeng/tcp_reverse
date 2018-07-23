defmodule TcpReverseApp do
    use Application

    def start(_Type, _Args) do
        {:ok, _} = :ranch.start_listener(:tcp_reverse, :ranch_tcp, 
        [{:port, 5555}], TcpReverseProtocol, [])
        TcpReverseSup.start_link()
    end

    def stop(_State) do
        :ok
    end

end