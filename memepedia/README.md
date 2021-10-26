# MemePedia
    
- Rota memes
    - **GET** /memes
        - Ao acessar essa rota o cliente deve receber uma lista de memes e o status **200**
        - Caso não existe memes deve receber o status **204** com a mensagem 'No memes today!'
    - **POST** /memes
        - Ao acessar essa rota o cliente deverá enviar um objeto com url e category no **body** e no headers deverá enviar um **Bearer token**.
            
            ```json
            {
                "url": "https://memegenerator.net/img/instances/62899729.jpg",
                "category": 1
            }
            ```
            
        - Como o cliente já está enviando um Bearer token não é necessário enviar o id de usuário via body, cabe a rota identificar o id do usuário para realizar a inserção do meme na tabela.
        - Caso o cliente não envie o token a rota deve retornar status **403**
        - Caso o cliente envie o token não encontrado deve retornar status **401**
        - Caso o cliente não envie um dos campos necessários no body deve retornar status **403**
        - Quando a inserção for realizada deve retornar o status **201**
    - **Testes**
        - Para cada rota deve possuir seu próprio conjunto de testes (describe) e todas as saídas possíveis devem conter pelo menos um caso de teste.
