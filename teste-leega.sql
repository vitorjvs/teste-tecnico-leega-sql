CREATE TABLE Pessoa(
	PessoaID INT PRIMARY KEY,
    PessoaNome VARCHAR(30)
    );
    
    INSERT INTO Pessoa
    VALUES
    (1, 'Vitor'),
    (2, 'José');
    
CREATE TABLE Endereco(
	EnderecoID INT PRIMARY KEY,
    PessoaID INT NOT NULL,
    FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID),
    EnderecoDescricao VARCHAR(100)
    );
    
    INSERT INTO Endereco
    VALUES
    (120, 1, 'Loteamento Massangana'),
    (256, 2, 'Rua Dona Ines Correia');
    
   
    
CREATE TABLE Telefone(
	TelefoneID INT PRIMARY KEY,
	PessoaID INT NOT NULL,
    FOREIGN KEY (PessoaID) REFERENCES Pessoa(PessoaID),
    TelefoneNumero VARCHAR(30)
    );
    
    INSERT INTO Telefone
    VALUES
    (81, 1, '0000-0000'),
    (82, 2, '1111-1111');
    
    
    
SELECT Pessoa.PessoaID, Pessoa.PessoaNome, Endereco.EnderecoDescricao, Telefone.TelefoneNumero
FROM Pessoa 
INNER JOIN Endereco
ON Pessoa.PessoaID = Endereco.PessoaID
INNER JOIN Telefone
ON Pessoa.PessoaID = Telefone.PessoaID