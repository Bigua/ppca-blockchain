# ppca-blockchain

Implementação de blockchain para controle de emprestimos de coleções -- Ademar Peixoto
instruções:
* suba a vm EVA01

no log de inicialização ela irá retornar o IP de conexão:
	
    default: Looking for genesis block...
	default: Genesis block found
   	default: Other nodes can connect to this node using:
	default: multichaind colecao@10.0.2.15:6665
	default: Node started

* suba a vm EVA02

		conecte nela usando o vagrant ssh
		com os dados de conexão do EVA01 solicite a conexão ao blockchain
		copie os dados da carteira gerada no EVA02

* Voltando ao EVA01

		de permissão de conexão ao EVA02
		multichain-cli colecao grant ENDERECO_CARTEIRA_EVA02 connect,send,receive


* voltando ao EVA02

		tente conectar novamente:
		multichaind colecao -daemon
                
 * Inserção e recuperação de dados:

		Os dados são inseridos via streams a partir do comando 'liststreams' seguido do JSON contendo o item a ser inserido.
        Os dados são lidos a partir do comando 'liststreams'
        O formato do JSON é livre para o colecionador escolher.
