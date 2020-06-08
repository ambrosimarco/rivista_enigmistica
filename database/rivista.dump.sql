USE rivista;

INSERT INTO tematica (id, nome) VALUES (1, 'Geografia');
INSERT INTO tematica (id, nome) VALUES (2, 'Storia');
INSERT INTO tematica (id, nome) VALUES (3, 'Letteratura');
INSERT INTO tematica (id, nome) VALUES (4, 'Cinema');

INSERT INTO gioco (id, nome, id_tematica) VALUES (1, 'Capitali del mondo', 1);
INSERT INTO gioco (id, nome, id_tematica) VALUES (2, 'Prima guerra mondiale', 2);
INSERT INTO gioco (id, nome, id_tematica) VALUES (3, 'Autori contemporanei', 3);
INSERT INTO gioco (id, nome, id_tematica) VALUES (4, 'Film classici', 4);

-- Quesiti

-- Capitali del mondo
INSERT INTO quesito (id, testo, id_gioco) VALUES (1, 'Qual è la capitale del Messico?', 1);
INSERT INTO quesito (id, testo, id_gioco) VALUES (2, 'Qual è la capitale della Finlandia?', 1);
INSERT INTO quesito (id, testo, id_gioco) VALUES (3, 'Qual è la capitale della Spagna?', 1);
INSERT INTO quesito (id, testo, id_gioco) VALUES (4, 'Qual è la capitale del Brasile?', 1);
-- Prima guerra mondiale
INSERT INTO quesito (id, testo, id_gioco) VALUES (5, 'Come è stata chiamata la tecnica di guerra utilizzata nel primo conflitto mondiale?', 2);
INSERT INTO quesito (id, testo, id_gioco) VALUES (6, 'Quando fu combattuta la prima guerra mondiale?', 2);
INSERT INTO quesito (id, testo, id_gioco) VALUES (7, 'Chi fu una figura di rilevante importanza, nel panorama italiano, durante la prima guerra mondiale?', 2);
-- Autori contemporanei
INSERT INTO quesito (id, testo, id_gioco) VALUES (8, 'Quale libro è stato scritto da Umberto Eco?', 3);
INSERT INTO quesito (id, testo, id_gioco) VALUES (9, 'Quale serie TV è ispirata ad un celebre personaggio di Andrea Camilleri?', 3);
INSERT INTO quesito (id, testo, id_gioco) VALUES (10, 'Con quale personaggio J.K. Rowling ha raggiunto il successo internazionale?', 3);
INSERT INTO quesito (id, testo, id_gioco) VALUES (11, 'Quale libro è stato il primo beststeller di Dan Brown?', 3);
-- Film classici
INSERT INTO quesito (id, testo, id_gioco) VALUES (12, 'In che anno uscì al cinema il film Shining?', 4);
INSERT INTO quesito (id, testo, id_gioco) VALUES (13, 'Quale frase è tratta dal film Forrest Gump?', 4);
INSERT INTO quesito (id, testo, id_gioco) VALUES (14, 'Quale frase conclude il film The Truman Show?', 4);

-- Risposte

-- Capitali del mondo
INSERT INTO risposta (id, testo) VALUES (1, 'Acapulco');
INSERT INTO risposta (id, testo) VALUES (2, 'Città del Messico');
INSERT INTO risposta (id, testo) VALUES (3, 'San Francisco');
INSERT INTO risposta (id, testo) VALUES (4, 'Miami');

INSERT INTO risposta (id, testo) VALUES (5, 'Palanga');
INSERT INTO risposta (id, testo) VALUES (6, 'Kiel');
INSERT INTO risposta (id, testo) VALUES (7, 'Helsinki');
INSERT INTO risposta (id, testo) VALUES (8, 'Washington');

INSERT INTO risposta (id, testo) VALUES (9, 'Londra');
INSERT INTO risposta (id, testo) VALUES (10, 'Barcellona');
INSERT INTO risposta (id, testo) VALUES (11, 'Parigi');
INSERT INTO risposta (id, testo) VALUES (12, 'Madrid');

INSERT INTO risposta (id, testo) VALUES (13, 'Rio de Janeiro');
INSERT INTO risposta (id, testo) VALUES (14, 'Brasilia');
INSERT INTO risposta (id, testo) VALUES (15, 'Roma');
INSERT INTO risposta (id, testo) VALUES (16, 'Lisbona');

-- Prima guerra mondiale
INSERT INTO risposta (id, testo) VALUES (17, 'Guerra di logoramento');
INSERT INTO risposta (id, testo) VALUES (18, 'Guerra di supporto');
INSERT INTO risposta (id, testo) VALUES (19, 'Guerra lampo');
INSERT INTO risposta (id, testo) VALUES (20, 'Guerra di riposizionamento');

INSERT INTO risposta (id, testo) VALUES (21, '1914-1919');
INSERT INTO risposta (id, testo) VALUES (22, '1915-1919');
INSERT INTO risposta (id, testo) VALUES (23, '1915-1918');
INSERT INTO risposta (id, testo) VALUES (24, '1914-1918');

INSERT INTO risposta (id, testo) VALUES (25, 'Adolf Hitler');
INSERT INTO risposta (id, testo) VALUES (26, 'Napoleone III');
INSERT INTO risposta (id, testo) VALUES (27, 'Armando Diaz');
INSERT INTO risposta (id, testo) VALUES (28, 'Winston Churchill');

-- Autori contemporanei
INSERT INTO risposta (id, testo) VALUES (29, 'Il nome della rosa');
INSERT INTO risposta (id, testo) VALUES (30, 'Io non ho paura');
INSERT INTO risposta (id, testo) VALUES (31, 'Il barone rampante');
INSERT INTO risposta (id, testo) VALUES (32, 'Cuore');

INSERT INTO risposta (id, testo) VALUES (33, 'Il commissario Montalbano');
INSERT INTO risposta (id, testo) VALUES (34, 'Gomorra');
INSERT INTO risposta (id, testo) VALUES (35, 'Il trono di spade');
INSERT INTO risposta (id, testo) VALUES (36, 'Black Mirror');

INSERT INTO risposta (id, testo) VALUES (37, 'Gandalf');
INSERT INTO risposta (id, testo) VALUES (38, 'Gulliver');
INSERT INTO risposta (id, testo) VALUES (39, 'Robinson Crusoe');
INSERT INTO risposta (id, testo) VALUES (40, 'Harry Potter');

INSERT INTO risposta (id, testo) VALUES (41, 'Angeli e demoni');
INSERT INTO risposta (id, testo) VALUES (42, 'Il codice Da Vinci');
INSERT INTO risposta (id, testo) VALUES (43, 'I pilastri della Terra');
INSERT INTO risposta (id, testo) VALUES (44, 'Inferno');

-- Film classici
INSERT INTO risposta (id, testo) VALUES (45, '1996');
INSERT INTO risposta (id, testo) VALUES (46, '1974');
INSERT INTO risposta (id, testo) VALUES (47, '1999');
INSERT INTO risposta (id, testo) VALUES (48, '1980');

INSERT INTO risposta (id, testo) VALUES (49, "'Grande Giove...'");
INSERT INTO risposta (id, testo) VALUES (50, "'Francamente me ne infischio.'");
INSERT INTO risposta (id, testo) VALUES (51, "'Mamma diceva sempre: la vita è come una scatola di cioccolatini, non sai mai quello che ti capita.'");
INSERT INTO risposta (id, testo) VALUES (52, "'Gli farò un'offerta che non potrà rifiutare.'");

INSERT INTO risposta (id, testo) VALUES (53, "'Penso che ancora non siete pronti per questa musica. Ma ai vostri figli piacerà.'");
INSERT INTO risposta (id, testo) VALUES (54, "'Quello che succede nel miglio, rimane nel miglio. Da sempre.'");
INSERT INTO risposta (id, testo) VALUES (55, "'Come definire la realtà? Ciò che tu senti, vedi, degusti o respiri non sono che impulsi elettrici interpretati dal tuo cervello.'");
INSERT INTO risposta (id, testo) VALUES (56, "'Caso mai non vi rivedessi, buon pomeriggio, buonasera e buonanotte!'");

-- Risposte_quesiti

-- Capitali del mondo
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (1, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (1, 2, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (1, 3);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (1, 4);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (2, 5);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (2, 6);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (2, 7, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (2, 8);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (3, 9);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (3, 10);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (3, 11);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (3, 12, 1);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (4, 13);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (4, 14, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (4, 15);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (4, 16);

-- Prima guerra mondiale
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (5, 17, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (5, 18);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (5, 19);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (5, 20);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (6, 21);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (6, 22);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (6, 23);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (6, 24, 1);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (7, 25);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (7, 26);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (7, 27, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (7, 28);

-- Autori contemporanei
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (8, 29, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (8, 30);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (8, 31);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (8, 32);

INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (9, 33, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (9, 34);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (9, 35);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (9, 36);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (10, 37);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (10, 38);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (10, 39);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (10, 40, 1);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (11, 41);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (11, 42, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (11, 43);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (11, 44);

-- Film classici
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (12, 45);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (12, 46);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (12, 47);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (12, 48, 1);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (13, 49);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (13, 50);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (13, 51, 1);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (13, 52);

INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (14, 53);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (14, 54);
INSERT INTO risposte_quesiti (id_quesito, id_risposta) VALUES (14, 55);
INSERT INTO risposte_quesiti (id_quesito, id_risposta, risposta_corretta) VALUES (14, 56, 1);
