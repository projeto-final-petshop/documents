-- Tabela para Banho e Tosa
CREATE TABLE petconnet.bath_and_grooming (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    pet_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
    FOREIGN KEY (user_id) REFERENCES petconnet.users(id),
    FOREIGN KEY (pet_id) REFERENCES petconnet.pets(id)
);