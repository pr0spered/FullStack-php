USE box_office;

-- Insert data into 'users' table
INSERT INTO users (user_id, email, password, name) VALUES
(1, 'rahul@gmail.com', 'ceb6c970658f31504a901b89dcd3e461', 'Rahul'),
(2, 'priya@gmail.com', 'ceb6c970658f31504a901b89dcd3e461', 'Priya'),
(3, 'arjun@gmail.com', 'ceb6c970658f31504a901b89dcd3e461', 'Arjun'),
(4, 'rohit@gmail.com', 'ceb6c970658f31504a901b89dcd3e461', 'Rohit'),
(5, 'kumar@gmail.com', 'ceb6c970658f31504a901b89dcd3e461', 'Kumar');

-- Insert data into 'movies' table
INSERT INTO movies (name, poster) VALUES
('The Dark Knight', 'posters/dark_knight.jpg'),
('Inception', 'posters/inception.jpg'),
('Avengers: Endgame', 'posters/avengers_endgame.jpg'),
('Titanic', 'posters/titanic.jpg'),
('The Matrix', 'posters/matrix.jpg');

-- Insert data into 'theatres' table
INSERT INTO theatres (name, address) VALUES
('Cinema Paradise', 'Chennai'),
('Galaxy Theatre', 'Bangalore'),
('Majestic Cinemas', 'Hyderabad'),
('Royal Cinemas', 'Kolkata'),
('Silver Screen Theatre', 'Mumbai');

-- Insert data into 'screens' table
INSERT INTO screens (name, capacity, theatre_id, seat_map) VALUES
('Screen 1', 142, 1, '<div class="section-title">₹450 RECLINER</div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="seat available" id="J1" data-class="Recliner" data-price="450" onclick="clicked(''J1'')">J1</div>
                        <div class="seat available" id="J2" data-class="Recliner" data-price="450" onclick="clicked(''J2'')">J2</div>
                        <div class="seat available" id="J3" data-class="Recliner" data-price="450" onclick="clicked(''J3'')">J3</div>
                        <div class="seat available" id="J4" data-class="Recliner" data-price="450" onclick="clicked(''J4'')">J4</div>
                        <div class="seat available" id="J5" data-class="Recliner" data-price="450" onclick="clicked(''J5'')">J5</div>
                        <div class="seat available" id="J6" data-class="Recliner" data-price="450" onclick="clicked(''J6'')">J6</div>
                        <div class="seat available" id="J7" data-class="Recliner" data-price="450" onclick="clicked(''J7'')">J7</div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                    </div>

                    <div class="section-title">₹230 PRIME</div>

                    <div class="row">
                        <div class="seat available" id="H1" data-class="Prime" data-price="230" onclick="clicked(''H1'')">H1</div>
                        <div class="seat available" id="H2" data-class="Prime" data-price="230" onclick="clicked(''H2'')">H2</div>
                        <div class="seat available" id="H3" data-class="Prime" data-price="230" onclick="clicked(''H3'')">H3</div>
                        <div class="space"></div>
                        <div class="seat available" id="H4" data-class="Prime" data-price="230" onclick="clicked(''H4'')">H4</div>
                        <div class="seat available" id="H5" data-class="Prime" data-price="230" onclick="clicked(''H5'')">H5</div>
                        <div class="seat available" id="H6" data-class="Prime" data-price="230" onclick="clicked(''H6'')">H6</div>
                        <div class="seat available" id="H7" data-class="Prime" data-price="230" onclick="clicked(''H7'')">H7</div>
                        <div class="seat available" id="H8" data-class="Prime" data-price="230" onclick="clicked(''H8'')">H8</div>
                        <div class="seat available" id="H9" data-class="Prime" data-price="230" onclick="clicked(''H9'')">H9</div>
                        <div class="seat available" id="H10" data-class="Prime" data-price="230" onclick="clicked(''H10'')">H10</div>
                        <div class="seat available" id="H11" data-class="Prime" data-price="230" onclick="clicked(''H11'')">H11</div>
                        <div class="seat available" id="H12" data-class="Prime" data-price="230" onclick="clicked(''H12'')">H12</div>
                        <div class="seat available" id="H13" data-class="Prime" data-price="230" onclick="clicked(''H13'')">H13</div>
                        <div class="seat available" id="H14" data-class="Prime" data-price="230" onclick="clicked(''H14'')">H14</div>
                        <div class="space"></div>
                        <div class="seat available" id="H15" data-class="Prime" data-price="230" onclick="clicked(''H15'')">H15</div>
                        <div class="seat available" id="H16" data-class="Prime" data-price="230" onclick="clicked(''H16'')">H16</div>
                        <div class="seat available" id="H17" data-class="Prime" data-price="230" onclick="clicked(''H17'')">H17</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="G1" data-class="Prime" data-price="230" onclick="clicked(''G1'')">G1</div>
                        <div class="seat available" id="G2" data-class="Prime" data-price="230" onclick="clicked(''G2'')">G2</div>
                        <div class="seat available" id="G3" data-class="Prime" data-price="230" onclick="clicked(''G3'')">G3</div>
                        <div class="space"></div>
                        <div class="seat available" id="G4" data-class="Prime" data-price="230" onclick="clicked(''G4'')">G4</div>
                        <div class="seat available" id="G5" data-class="Prime" data-price="230" onclick="clicked(''G5'')">G5</div>
                        <div class="seat available" id="G6" data-class="Prime" data-price="230" onclick="clicked(''G6'')">G6</div>
                        <div class="seat available" id="G7" data-class="Prime" data-price="230" onclick="clicked(''G7'')">G7</div>
                        <div class="seat available" id="G8" data-class="Prime" data-price="230" onclick="clicked(''G8'')">G8</div>
                        <div class="seat available" id="G9" data-class="Prime" data-price="230" onclick="clicked(''G9'')">G9</div>
                        <div class="seat available" id="G10" data-class="Prime" data-price="230" onclick="clicked(''G10'')">G10</div>
                        <div class="seat available" id="G11" data-class="Prime" data-price="230" onclick="clicked(''G11'')">G11</div>
                        <div class="seat available" id="G12" data-class="Prime" data-price="230" onclick="clicked(''G12'')">G12</div>
                        <div class="seat available" id="G13" data-class="Prime" data-price="230" onclick="clicked(''G13'')">G13</div>
                        <div class="seat available" id="G14" data-class="Prime" data-price="230" onclick="clicked(''G14'')">G14</div>
                        <div class="space"></div>
                        <div class="seat available" id="G15" data-class="Prime" data-price="230" onclick="clicked(''G15'')">G15</div>
                        <div class="seat available" id="G16" data-class="Prime" data-price="230" onclick="clicked(''G16'')">G16</div>
                        <div class="seat available" id="G17" data-class="Prime" data-price="230" onclick="clicked(''G17'')">G17</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="F1" data-class="Prime" data-price="230" onclick="clicked(''F1'')">F1</div>
                        <div class="seat available" id="F2" data-class="Prime" data-price="230" onclick="clicked(''F2'')">F2</div>
                        <div class="seat available" id="F3" data-class="Prime" data-price="230" onclick="clicked(''F3'')">F3</div>
                        <div class="space"></div>
                        <div class="seat available" id="F4" data-class="Prime" data-price="230" onclick="clicked(''F4'')">F4</div>
                        <div class="seat available" id="F5" data-class="Prime" data-price="230" onclick="clicked(''F5'')">F5</div>
                        <div class="seat available" id="F6" data-class="Prime" data-price="230" onclick="clicked(''F6'')">F6</div>
                        <div class="seat available" id="F7" data-class="Prime" data-price="230" onclick="clicked(''F7'')">F7</div>
                        <div class="seat available" id="F8" data-class="Prime" data-price="230" onclick="clicked(''F8'')">F8</div>
                        <div class="seat available" id="F9" data-class="Prime" data-price="230" onclick="clicked(''F9'')">F9</div>
                        <div class="seat available" id="F10" data-class="Prime" data-price="230" onclick="clicked(''F10'')">F10</div>
                        <div class="seat available" id="F11" data-class="Prime" data-price="230" onclick="clicked(''F11'')">F11</div>
                        <div class="seat available" id="F12" data-class="Prime" data-price="230" onclick="clicked(''F12'')">F12</div>
                        <div class="seat available" id="F13" data-class="Prime" data-price="230" onclick="clicked(''F13'')">F13</div>
                        <div class="seat available" id="F14" data-class="Prime" data-price="230" onclick="clicked(''F14'')">F14</div>
                        <div class="space"></div>
                        <div class="seat available" id="F15" data-class="Prime" data-price="230" onclick="clicked(''F15'')">F15</div>
                        <div class="seat available" id="F16" data-class="Prime" data-price="230" onclick="clicked(''F16'')">F16</div>
                        <div class="seat available" id="F17" data-class="Prime" data-price="230" onclick="clicked(''F17'')">F17</div>
                    </div>

                    <div class="section-title">₹210 CLASSIC</div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="seat available" id="E1" data-class="Classic" data-price="210" onclick="clicked(''E1'')">E1</div>
                        <div class="seat available" id="E2" data-class="Classic" data-price="210" onclick="clicked(''E2'')">E2</div>
                        <div class="seat available" id="E3" data-class="Classic" data-price="210" onclick="clicked(''E3'')">E3</div>
                        <div class="seat available" id="E4" data-class="Classic" data-price="210" onclick="clicked(''E4'')">E4</div>
                        <div class="seat available" id="E5" data-class="Classic" data-price="210" onclick="clicked(''E5'')">E5</div>
                        <div class="seat available" id="E6" data-class="Classic" data-price="210" onclick="clicked(''E6'')">E6</div>
                        <div class="seat available" id="E7" data-class="Classic" data-price="210" onclick="clicked(''E7'')">E7</div>
                        <div class="seat available" id="E8" data-class="Classic" data-price="210" onclick="clicked(''E8'')">E8</div>
                        <div class="seat available" id="E9" data-class="Classic" data-price="210" onclick="clicked(''E9'')">E9</div>
                        <div class="seat available" id="E10" data-class="Classic" data-price="210" onclick="clicked(''E10'')">E10</div>
                        <div class="seat available" id="E11" data-class="Classic" data-price="210" onclick="clicked(''E11'')">E11</div>
                        <div class="space"></div>
                        <div class="seat available" id="E12" data-class="Classic" data-price="210" onclick="clicked(''E12'')">E12</div>
                        <div class="seat available" id="E13" data-class="Classic" data-price="210" onclick="clicked(''E13'')">E13</div>
                        <div class="seat available" id="E14" data-class="Classic" data-price="210" onclick="clicked(''E14'')">E14</div>
                    </div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="seat available" id="D1" data-class="Classic" data-price="210" onclick="clicked(''D1'')">D1</div>
                        <div class="seat available" id="D2" data-class="Classic" data-price="210" onclick="clicked(''D2'')">D2</div>
                        <div class="seat available" id="D3" data-class="Classic" data-price="210" onclick="clicked(''D3'')">D3</div>
                        <div class="seat available" id="D4" data-class="Classic" data-price="210" onclick="clicked(''D4'')">D4</div>
                        <div class="seat available" id="D5" data-class="Classic" data-price="210" onclick="clicked(''D5'')">D5</div>
                        <div class="seat available" id="D6" data-class="Classic" data-price="210" onclick="clicked(''D6'')">D6</div>
                        <div class="seat available" id="D7" data-class="Classic" data-price="210" onclick="clicked(''D7'')">D7</div>
                        <div class="seat available" id="D8" data-class="Classic" data-price="210" onclick="clicked(''D8'')">D8</div>
                        <div class="seat available" id="D9" data-class="Classic" data-price="210" onclick="clicked(''D9'')">D9</div>
                        <div class="seat available" id="D10" data-class="Classic" data-price="210" onclick="clicked(''D10'')">D10</div>
                        <div class="seat available" id="D11" data-class="Classic" data-price="210" onclick="clicked(''D11'')">D11</div>
                        <div class="space"></div>
                        <div class="seat available" id="D12" data-class="Classic" data-price="210" onclick="clicked(''D12'')">D12</div>
                        <div class="seat available" id="D13" data-class="Classic" data-price="210" onclick="clicked(''D13'')">D13</div>
                        <div class="seat available" id="D14" data-class="Classic" data-price="210" onclick="clicked(''D14'')">D14</div>
                    </div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="seat available" id="C1" data-class="Classic" data-price="210" onclick="clicked(''C1'')">C1</div>
                        <div class="seat available" id="C2" data-class="Classic" data-price="210" onclick="clicked(''C2'')">C2</div>
                        <div class="seat available" id="C3" data-class="Classic" data-price="210" onclick="clicked(''C3'')">C3</div>
                        <div class="seat available" id="C4" data-class="Classic" data-price="210" onclick="clicked(''C4'')">C4</div>
                        <div class="seat available" id="C5" data-class="Classic" data-price="210" onclick="clicked(''C5'')">C5</div>
                        <div class="seat available" id="C6" data-class="Classic" data-price="210" onclick="clicked(''C6'')">C6</div>
                        <div class="seat available" id="C7" data-class="Classic" data-price="210" onclick="clicked(''C7'')">C7</div>
                        <div class="seat available" id="C8" data-class="Classic" data-price="210" onclick="clicked(''C8'')">C8</div>
                        <div class="seat available" id="C9" data-class="Classic" data-price="210" onclick="clicked(''C9'')">C9</div>
                        <div class="seat available" id="C10" data-class="Classic" data-price="210" onclick="clicked(''C10'')">C10</div>
                        <div class="seat available" id="C11" data-class="Classic" data-price="210" onclick="clicked(''C11'')">C11</div>
                        <div class="space"></div>
                        <div class="seat available" id="C12" data-class="Classic" data-price="210" onclick="clicked(''C12'')">C12</div>
                        <div class="seat available" id="C13" data-class="Classic" data-price="210" onclick="clicked(''C13'')">C13</div>
                        <div class="seat available" id="C14" data-class="Classic" data-price="210" onclick="clicked(''C14'')">C14</div>
                    </div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="seat available" id="B1" data-class="Classic" data-price="210" onclick="clicked(''B1'')">B1</div>
                        <div class="seat available" id="B2" data-class="Classic" data-price="210" onclick="clicked(''B2'')">B2</div>
                        <div class="seat available" id="B3" data-class="Classic" data-price="210" onclick="clicked(''B3'')">B3</div>
                        <div class="seat available" id="B4" data-class="Classic" data-price="210" onclick="clicked(''B4'')">B4</div>
                        <div class="seat available" id="B5" data-class="Classic" data-price="210" onclick="clicked(''B5'')">B5</div>
                        <div class="seat available" id="B6" data-class="Classic" data-price="210" onclick="clicked(''B6'')">B6</div>
                        <div class="seat available" id="B7" data-class="Classic" data-price="210" onclick="clicked(''B7'')">B7</div>
                        <div class="seat available" id="B8" data-class="Classic" data-price="210" onclick="clicked(''B8'')">B8</div>
                        <div class="seat available" id="B9" data-class="Classic" data-price="210" onclick="clicked(''B9'')">B9</div>
                        <div class="seat available" id="B10" data-class="Classic" data-price="210" onclick="clicked(''B10'')">B10</div>
                        <div class="seat available" id="B11" data-class="Classic" data-price="210" onclick="clicked(''B11'')">B11</div>
                        <div class="space"></div>
                        <div class="seat available" id="B12" data-class="Classic" data-price="210" onclick="clicked(''B12'')">B12</div>
                        <div class="seat available" id="B13" data-class="Classic" data-price="210" onclick="clicked(''B13'')">B13</div>
                        <div class="seat available" id="B14" data-class="Classic" data-price="210" onclick="clicked(''B14'')">B14</div>
                    </div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="seat available" id="A1" data-class="Classic" data-price="210" onclick="clicked(''A1'')">A1</div>
                        <div class="seat available" id="A2" data-class="Classic" data-price="210" onclick="clicked(''A2'')">A2</div>
                        <div class="seat available" id="A3" data-class="Classic" data-price="210" onclick="clicked(''A3'')">A3</div>
                        <div class="seat available" id="A4" data-class="Classic" data-price="210" onclick="clicked(''A4'')">A4</div>
                        <div class="seat available" id="A5" data-class="Classic" data-price="210" onclick="clicked(''A5'')">A5</div>
                        <div class="seat available" id="A6" data-class="Classic" data-price="210" onclick="clicked(''A6'')">A6</div>
                        <div class="seat available" id="A7" data-class="Classic" data-price="210" onclick="clicked(''A7'')">A7</div>
                        <div class="seat available" id="A8" data-class="Classic" data-price="210" onclick="clicked(''A8'')">A8</div>
                        <div class="seat available" id="A9" data-class="Classic" data-price="210" onclick="clicked(''A9'')">A9</div>
                        <div class="seat available" id="A10" data-class="Classic" data-price="210" onclick="clicked(''A10'')">A10</div>
                        <div class="seat available" id="A11" data-class="Classic" data-price="210" onclick="clicked(''A11'')">A11</div>
                        <div class="space"></div>
                        <div class="seat available" id="A12" data-class="Classic" data-price="210" onclick="clicked(''A12'')">A12</div>
                        <div class="seat available" id="A13" data-class="Classic" data-price="210" onclick="clicked(''A13'')">A13</div>
                        <div class="seat available" id="A14" data-class="Classic" data-price="210" onclick="clicked(''A14'')">A14</div>
                    </div>'),
('Screen 2', 46, 2, '<div class="section-title">₹500 RECLINER</div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="seat available" id="K1" data-class="Recliner" data-price="500" onclick="clicked(''K1'')">K1</div>
                        <div class="seat available" id="K2" data-class="Recliner" data-price="500" onclick="clicked(''K2'')">K2</div>
                        <div class="seat available" id="K3" data-class="Recliner" data-price="500" onclick="clicked(''K3'')">K3</div>
                        <div class="seat available" id="K4" data-class="Recliner" data-price="500" onclick="clicked(''K4'')">K4</div>
                        <div class="seat available" id="K5" data-class="Recliner" data-price="500" onclick="clicked(''K5'')">K5</div>
                        <div class="seat available" id="K6" data-class="Recliner" data-price="500" onclick="clicked(''K6'')">K6</div>
                        <div class="seat available" id="K7" data-class="Recliner" data-price="500" onclick="clicked(''K7'')">K7</div>
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="space"></div>
                    </div>

                    <div class="section-title">₹280 PRIME</div>

                    <div class="row">
                        <div class="seat available" id="J1" data-class="Prime" data-price="280" onclick="clicked(''J1'')">J1</div>
                        <div class="seat available" id="J2" data-class="Prime" data-price="280" onclick="clicked(''J2'')">J2</div>
                        <div class="seat available" id="J3" data-class="Prime" data-price="280" onclick="clicked(''J3'')">J3</div>
                        <div class="seat available" id="J4" data-class="Prime" data-price="280" onclick="clicked(''J4'')">J4</div>
                        <div class="seat available" id="J5" data-class="Prime" data-price="280" onclick="clicked(''J5'')">J5</div>
                        <div class="seat available" id="J6" data-class="Prime" data-price="280" onclick="clicked(''J6'')">J6</div>
                        <div class="space"></div>
                        <div class="seat available" id="J7" data-class="Prime" data-price="280" onclick="clicked(''J7'')">J7</div>
                        <div class="seat available" id="J8" data-class="Prime" data-price="280" onclick="clicked(''J8'')">J8</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="I1" data-class="Prime" data-price="280" onclick="clicked(''I1'')">I1</div>
                        <div class="seat available" id="I2" data-class="Prime" data-price="280" onclick="clicked(''I2'')">I2</div>
                        <div class="seat available" id="I3" data-class="Prime" data-price="280" onclick="clicked(''I3'')">I3</div>
                        <div class="space"></div>
                        <div class="seat available" id="I4" data-class="Prime" data-price="280" onclick="clicked(''I4'')">I4</div>
                        <div class="seat available" id="I5" data-class="Prime" data-price="280" onclick="clicked(''I5'')">I5</div>
                        <div class="seat available" id="I6" data-class="Prime" data-price="280" onclick="clicked(''I6'')">I6</div>
                    </div>

                    <div class="section-title">₹250 CLASSIC</div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="seat available" id="H1" data-class="Classic" data-price="250" onclick="clicked(''H1'')">H1</div>
                        <div class="seat available" id="H2" data-class="Classic" data-price="250" onclick="clicked(''H2'')">H2</div>
                        <div class="seat available" id="H3" data-class="Classic" data-price="250" onclick="clicked(''H3'')">H3</div>
                        <div class="seat available" id="H4" data-class="Classic" data-price="250" onclick="clicked(''H4'')">H4</div>
                        <div class="seat available" id="H5" data-class="Classic" data-price="250" onclick="clicked(''H5'')">H5</div>
                        <div class="seat available" id="H6" data-class="Classic" data-price="250" onclick="clicked(''H6'')">H6</div>
                        <div class="space"></div>
                        <div class="seat available" id="H7" data-class="Classic" data-price="250" onclick="clicked(''H7'')">H7</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="G1" data-class="Classic" data-price="250" onclick="clicked(''G1'')">G1</div>
                        <div class="seat available" id="G2" data-class="Classic" data-price="250" onclick="clicked(''G2'')">G2</div>
                        <div class="seat available" id="G3" data-class="Classic" data-price="250" onclick="clicked(''G3'')">G3</div>
                        <div class="space"></div>
                        <div class="seat available" id="G4" data-class="Classic" data-price="250" onclick="clicked(''G4'')">G4</div>
                        <div class="seat available" id="G5" data-class="Classic" data-price="250" onclick="clicked(''G5'')">G5</div>
                        <div class="seat available" id="G6" data-class="Classic" data-price="250" onclick="clicked(''G6'')">G6</div>
                    </div>

                    <div class="section-title">₹200 STANDARD</div>

                    <div class="row">
                        <div class="seat available" id="F1" data-class="Standard" data-price="200" onclick="clicked(''F1'')">F1</div>
                        <div class="seat available" id="F2" data-class="Standard" data-price="200" onclick="clicked(''F2'')">F2</div>
                        <div class="seat available" id="F3" data-class="Standard" data-price="200" onclick="clicked(''F3'')">F3</div>
                        <div class="space"></div>
                        <div class="seat available" id="F4" data-class="Standard" data-price="200" onclick="clicked(''F4'')">F4</div>
                        <div class="seat available" id="F5" data-class="Standard" data-price="200" onclick="clicked(''F5'')">F5</div>
                        <div class="seat available" id="F6" data-class="Standard" data-price="200" onclick="clicked(''F6'')">F6</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="E1" data-class="Standard" data-price="200" onclick="clicked(''E1'')">E1</div>
                        <div class="seat available" id="E2" data-class="Standard" data-price="200" onclick="clicked(''E2'')">E2</div>
                        <div class="seat available" id="E3" data-class="Standard" data-price="200" onclick="clicked(''E3'')">E3</div>
                        <div class="seat available" id="E4" data-class="Standard" data-price="200" onclick="clicked(''E4'')">E4</div>
                        <div class="seat available" id="E5" data-class="Standard" data-price="200" onclick="clicked(''E5'')">E5</div>
                        <div class="space"></div>
                        <div class="seat available" id="E6" data-class="Standard" data-price="200" onclick="clicked(''E6'')">E6</div>
                    </div>'),
('Screen 3', 250, 3, '<div class="section-title">₹550 RECLINER</div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="space"></div>
                        <div class="seat available" id="L1" data-class="Recliner" data-price="550" onclick="clicked(''L1'')">L1</div>
                        <div class="seat available" id="L2" data-class="Recliner" data-price="550" onclick="clicked(''L2'')">L2</div>
                        <div class="seat available" id="L3" data-class="Recliner" data-price="550" onclick="clicked(''L3'')">L3</div>
                        <div class="seat available" id="L4" data-class="Recliner" data-price="550" onclick="clicked(''L4'')">L4</div>
                        <div class="space"></div>
                    </div>

                    <div class="section-title">₹300 PREMIUM</div>

                    <div class="row">
                        <div class="seat available" id="K1" data-class="Premium" data-price="300" onclick="clicked(''K1'')">K1</div>
                        <div class="seat available" id="K2" data-class="Premium" data-price="300" onclick="clicked(''K2'')">K2</div>
                        <div class="seat available" id="K3" data-class="Premium" data-price="300" onclick="clicked(''K3'')">K3</div>
                        <div class="space"></div>
                        <div class="seat available" id="K4" data-class="Premium" data-price="300" onclick="clicked(''K4'')">K4</div>
                        <div class="seat available" id="K5" data-class="Premium" data-price="300" onclick="clicked(''K5'')">K5</div>
                        <div class="seat available" id="K6" data-class="Premium" data-price="300" onclick="clicked(''K6'')">K6</div>
                        <div class="seat available" id="K7" data-class="Premium" data-price="300" onclick="clicked(''K7'')">K7</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="J1" data-class="Premium" data-price="300" onclick="clicked(''J1'')">J1</div>
                        <div class="seat available" id="J2" data-class="Premium" data-price="300" onclick="clicked(''J2'')">J2</div>
                        <div class="seat available" id="J3" data-class="Premium" data-price="300" onclick="clicked(''J3'')">J3</div>
                        <div class="seat available" id="J4" data-class="Premium" data-price="300" onclick="clicked(''J4'')">J4</div>
                        <div class="space"></div>
                    </div>

                    <div class="section-title">₹270 CLASSIC</div>

                    <div class="row">
                        <div class="seat available" id="I1" data-class="Classic" data-price="270" onclick="clicked(''I1'')">I1</div>
                        <div class="seat available" id="I2" data-class="Classic" data-price="270" onclick="clicked(''I2'')">I2</div>
                        <div class="seat available" id="I3" data-class="Classic" data-price="270" onclick="clicked(''I3'')">I3</div>
                        <div class="seat available" id="I4" data-class="Classic" data-price="270" onclick="clicked(''I4'')">I4</div>
                        <div class="space"></div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="H1" data-class="Classic" data-price="270" onclick="clicked(''H1'')">H1</div>
                        <div class="seat available" id="H2" data-class="Classic" data-price="270" onclick="clicked(''H2'')">H2</div>
                        <div class="seat available" id="H3" data-class="Classic" data-price="270" onclick="clicked(''H3'')">H3</div>
                        <div class="seat available" id="H4" data-class="Classic" data-price="270" onclick="clicked(''H4'')">H4</div>
                        <div class="seat available" id="H5" data-class="Classic" data-price="270" onclick="clicked(''H5'')">H5</div>
                        <div class="space"></div>
                    </div>

                    <div class="section-title">₹220 STANDARD</div>

                    <div class="row">
                        <div class="seat available" id="G1" data-class="Standard" data-price="220" onclick="clicked(''G1'')">G1</div>
                        <div class="seat available" id="G2" data-class="Standard" data-price="220" onclick="clicked(''G2'')">G2</div>
                        <div class="seat available" id="G3" data-class="Standard" data-price="220" onclick="clicked(''G3'')">G3</div>
                        <div class="seat available" id="G4" data-class="Standard" data-price="220" onclick="clicked(''G4'')">G4</div>
                        <div class="space"></div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="F1" data-class="Standard" data-price="220" onclick="clicked(''F1'')">F1</div>
                        <div class="seat available" id="F2" data-class="Standard" data-price="220" onclick="clicked(''F2'')">F2</div>
                        <div class="seat available" id="F3" data-class="Standard" data-price="220" onclick="clicked(''F3'')">F3</div>
                        <div class="seat available" id="F4" data-class="Standard" data-price="220" onclick="clicked(''F4'')">F4</div>
                        <div class="seat available" id="F5" data-class="Standard" data-price="220" onclick="clicked(''F5'')">F5</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="E1" data-class="Standard" data-price="220" onclick="clicked(''E1'')">E1</div>
                        <div class="seat available" id="E2" data-class="Standard" data-price="220" onclick="clicked(''E2'')">E2</div>
                        <div class="seat available" id="E3" data-class="Standard" data-price="220" onclick="clicked(''E3'')">E3</div>
                        <div class="space"></div>
                    </div>'),
('Screen 4', 36, 4, '<div class="section-title">₹600 RECLINER</div>

                    <div class="row">
                        <div class="space"></div>
                        <div class="seat available" id="M1" data-class="Recliner" data-price="600" onclick="clicked(''M1'')">M1</div>
                        <div class="seat available" id="M2" data-class="Recliner" data-price="600" onclick="clicked(''M2'')">M2</div>
                        <div class="seat available" id="M3" data-class="Recliner" data-price="600" onclick="clicked(''M3'')">M3</div>
                        <div class="seat available" id="M4" data-class="Recliner" data-price="600" onclick="clicked(''M4'')">M4</div>
                        <div class="seat available" id="M5" data-class="Recliner" data-price="600" onclick="clicked(''M5'')">M5</div>
                        <div class="seat available" id="M6" data-class="Recliner" data-price="600" onclick="clicked(''M6'')">M6</div>
                        <div class="seat available" id="M7" data-class="Recliner" data-price="600" onclick="clicked(''M7'')">M7</div>
                        <div class="seat available" id="M8" data-class="Recliner" data-price="600" onclick="clicked(''M8'')">M8</div>
                    </div>

                    <div class="section-title">₹350 PREMIUM</div>

                    <div class="row">
                        <div class="seat available" id="L1" data-class="Premium" data-price="350" onclick="clicked(''L1'')">L1</div>
                        <div class="seat available" id="L2" data-class="Premium" data-price="350" onclick="clicked(''L2'')">L2</div>
                        <div class="seat available" id="L3" data-class="Premium" data-price="350" onclick="clicked(''L3'')">L3</div>
                        <div class="seat available" id="L4" data-class="Premium" data-price="350" onclick="clicked(''L4'')">L4</div>
                        <div class="seat available" id="L5" data-class="Premium" data-price="350" onclick="clicked(''L5'')">L5</div>
                        <div class="seat available" id="L6" data-class="Premium" data-price="350" onclick="clicked(''L6'')">L6</div>
                        <div class="seat available" id="L7" data-class="Premium" data-price="350" onclick="clicked(''L7'')">L7</div>
                        <div class="seat available" id="L8" data-class="Premium" data-price="350" onclick="clicked(''L8'')">L8</div>
                        <div class="seat available" id="L9" data-class="Premium" data-price="350" onclick="clicked(''L9'')">L9</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="K1" data-class="Premium" data-price="350" onclick="clicked(''K1'')">K1</div>
                        <div class="seat available" id="K2" data-class="Premium" data-price="350" onclick="clicked(''K2'')">K2</div>
                        <div class="seat available" id="K3" data-class="Premium" data-price="350" onclick="clicked(''K3'')">K3</div>
                        <div class="seat available" id="K4" data-class="Premium" data-price="350" onclick="clicked(''K4'')">K4</div>
                        <div class="seat available" id="K5" data-class="Premium" data-price="350" onclick="clicked(''K5'')">K5</div>
                        <div class="seat available" id="K6" data-class="Premium" data-price="350" onclick="clicked(''K6'')">K6</div>
                        <div class="seat available" id="K7" data-class="Premium" data-price="350" onclick="clicked(''K7'')">K7</div>
                        <div class="seat available" id="K8" data-class="Premium" data-price="350" onclick="clicked(''K8'')">K8</div>
                        <div class="seat available" id="K9" data-class="Premium" data-price="350" onclick="clicked(''K9'')">K9</div>
                    </div>

                    <div class="section-title">₹280 CLASSIC</div>

                    <div class="row">
                        <div class="seat available" id="J1" data-class="Classic" data-price="280" onclick="clicked(''J1'')">J1</div>
                        <div class="seat available" id="J2" data-class="Classic" data-price="280" onclick="clicked(''J2'')">J2</div>
                        <div class="seat available" id="J3" data-class="Classic" data-price="280" onclick="clicked(''J3'')">J3</div>
                        <div class="seat available" id="J4" data-class="Classic" data-price="280" onclick="clicked(''J4'')">J4</div>
                        <div class="seat available" id="J5" data-class="Classic" data-price="280" onclick="clicked(''J5'')">J5</div>
                        <div class="seat available" id="J6" data-class="Classic" data-price="280" onclick="clicked(''J6'')">J6</div>
                        <div class="seat available" id="J7" data-class="Classic" data-price="280" onclick="clicked(''J7'')">J7</div>
                        <div class="seat available" id="J8" data-class="Classic" data-price="280" onclick="clicked(''J8'')">J8</div>
                        <div class="seat available" id="J9" data-class="Classic" data-price="280" onclick="clicked(''J9'')">J9</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="I1" data-class="Classic" data-price="280" onclick="clicked(''I1'')">I1</div>
                        <div class="seat available" id="I2" data-class="Classic" data-price="280" onclick="clicked(''I2'')">I2</div>
                        <div class="seat available" id="I3" data-class="Classic" data-price="280" onclick="clicked(''I3'')">I3</div>
                        <div class="seat available" id="I4" data-class="Classic" data-price="280" onclick="clicked(''I4'')">I4</div>
                        <div class="seat available" id="I5" data-class="Classic" data-price="280" onclick="clicked(''I5'')">I5</div>
                        <div class="seat available" id="I6" data-class="Classic" data-price="280" onclick="clicked(''I6'')">I6</div>
                        <div class="seat available" id="I7" data-class="Classic" data-price="280" onclick="clicked(''I7'')">I7</div>
                        <div class="seat available" id="I8" data-class="Classic" data-price="280" onclick="clicked(''I8'')">I8</div>
                    </div>

                    <div class="section-title">₹230 STANDARD</div>

                    <div class="row">
                        <div class="seat available" id="H1" data-class="Standard" data-price="230" onclick="clicked(''H1'')">H1</div>
                        <div class="seat available" id="H2" data-class="Standard" data-price="230" onclick="clicked(''H2'')">H2</div>
                        <div class="seat available" id="H3" data-class="Standard" data-price="230" onclick="clicked(''H3'')">H3</div>
                        <div class="seat available" id="H4" data-class="Standard" data-price="230" onclick="clicked(''H4'')">H4</div>
                        <div class="seat available" id="H5" data-class="Standard" data-price="230" onclick="clicked(''H5'')">H5</div>
                        <div class="seat available" id="H6" data-class="Standard" data-price="230" onclick="clicked(''H6'')">H6</div>
                        <div class="seat available" id="H7" data-class="Standard" data-price="230" onclick="clicked(''H7'')">H7</div>
                        <div class="seat available" id="H8" data-class="Standard" data-price="230" onclick="clicked(''H8'')">H8</div>
                        <div class="seat available" id="H9" data-class="Standard" data-price="230" onclick="clicked(''H9'')">H9</div>
                    </div>

                    <div class="row">
                        <div class="seat available" id="G1" data-class="Standard" data-price="230" onclick="clicked(''G1'')">G1</div>
                        <div class="seat available" id="G2" data-class="Standard" data-price="230" onclick="clicked(''G2'')">G2</div>
                        <div class="seat available" id="G3" data-class="Standard" data-price="230" onclick="clicked(''G3'')">G3</div>
                        <div class="seat available" id="G4" data-class="Standard" data-price="230" onclick="clicked(''G4'')">G4</div>
                        <div class="seat available" id="G5" data-class="Standard" data-price="230" onclick="clicked(''G5'')">G5</div>
                        <div class="seat available" id="G6" data-class="Standard" data-price="230" onclick="clicked(''G6'')">G6</div>
                        <div class="seat available" id="G7" data-class="Standard" data-price="230" onclick="clicked(''G7'')">G7</div>
                    </div>'),
('Screen 5', 59, 5, '<div class="section-title">₹700 RECLINER</div>

                    <div class="row">
                        <div class="seat available" id="N1" data-class="Recliner" data-price="700" onclick="clicked(''N1'')">N1</div>
                        <div class="seat available" id="N2" data-class="Recliner" data-price="700" onclick="clicked(''N2'')">N2</div>
                        <div class="seat available" id="N3" data-class="Recliner" data-price="700" onclick="clicked(''N3'')">N3</div>
                        <div class="seat available" id="N4" data-class="Recliner" data-price="700" onclick="clicked(''N4'')">N4</div>
                        <div class="seat available" id="N5" data-class="Recliner" data-price="700" onclick="clicked(''N5'')">N5</div>
                        <div class="seat available" id="N6" data-class="Recliner" data-price="700" onclick="clicked(''N6'')">N6</div>
                        <div class="seat available" id="N7" data-class="Recliner" data-price="700" onclick="clicked(''N7'')">N7</div>
                        <div class="seat available" id="N8" data-class="Recliner" data-price="700" onclick="clicked(''N8'')">N8</div>
                        <div class="seat available" id="N9" data-class="Recliner" data-price="700" onclick="clicked(''N9'')">N9</div>
                        <div class="seat available" id="N10" data-class="Recliner" data-price="700" onclick="clicked(''N10'')">N10</div>
                        <div class="seat available" id="N11" data-class="Recliner" data-price="700" onclick="clicked(''N11'')">N11</div>
                        <div class="seat available" id="N12" data-class="Recliner" data-price="700" onclick="clicked(''N12'')">N12</div>
                    </div>

                    <div class="section-title">₹400 PREMIUM</div>

                    <div class="row">
                        <div class="seat available" id="M1" data-class="Premium" data-price="400" onclick="clicked(''M1'')">M1</div>
                        <div class="seat available" id="M2" data-class="Premium" data-price="400" onclick="clicked(''M2'')">M2</div>
                        <div class="seat available" id="M3" data-class="Premium" data-price="400" onclick="clicked(''M3'')">M3</div>
                        <div class="seat available" id="M4" data-class="Premium" data-price="400" onclick="clicked(''M4'')">M4</div>
                        <div class="seat available" id="M5" data-class="Premium" data-price="400" onclick="clicked(''M5'')">M5</div>
                        <div class="seat available" id="M6" data-class="Premium" data-price="400" onclick="clicked(''M6'')">M6</div>
                        <div class="seat available" id="M7" data-class="Premium" data-price="400" onclick="clicked(''M7'')">M7</div>
                        <div class="seat available" id="M8" data-class="Premium" data-price="400" onclick="clicked(''M8'')">M8</div>
                        <div class="seat available" id="M9" data-class="Premium" data-price="400" onclick="clicked(''M9'')">M9</div>
                        <div class="seat available" id="M10" data-class="Premium" data-price="400" onclick="clicked(''M10'')">M10</div>
                        <div class="seat available" id="M11" data-class="Premium" data-price="400" onclick="clicked(''M11'')">M11</div>
                        <div class="seat available" id="M12" data-class="Premium" data-price="400" onclick="clicked(''M12'')">M12</div>
                    </div>

                    <div class="section-title">₹300 CLASSIC</div>

                    <div class="row">
                        <div class="seat available" id="L1" data-class="Classic" data-price="300" onclick="clicked(''L1'')">L1</div>
                        <div class="seat available" id="L2" data-class="Classic" data-price="300" onclick="clicked(''L2'')">L2</div>
                        <div class="seat available" id="L3" data-class="Classic" data-price="300" onclick="clicked(''L3'')">L3</div>
                        <div class="seat available" id="L4" data-class="Classic" data-price="300" onclick="clicked(''L4'')">L4</div>
                        <div class="seat available" id="L5" data-class="Classic" data-price="300" onclick="clicked(''L5'')">L5</div>
                        <div class="seat available" id="L6" data-class="Classic" data-price="300" onclick="clicked(''L6'')">L6</div>
                        <div class="seat available" id="L7" data-class="Classic" data-price="300" onclick="clicked(''L7'')">L7</div>
                        <div class="seat available" id="L8" data-class="Classic" data-price="300" onclick="clicked(''L8'')">L8</div>
                        <div class="seat available" id="L9" data-class="Classic" data-price="300" onclick="clicked(''L9'')">L9</div>
                        <div class="seat available" id="L10" data-class="Classic" data-price="300" onclick="clicked(''L10'')">L10</div>
                        <div class="seat available" id="L11" data-class="Classic" data-price="300" onclick="clicked(''L11'')">L11</div>
                        <div class="seat available" id="L12" data-class="Classic" data-price="300" onclick="clicked(''L12'')">L12</div>
                    </div>

                    <div class="section-title">₹200 STANDARD</div>

                    <div class="row">
                        <div class="seat available" id="K1" data-class="Standard" data-price="200" onclick="clicked(''K1'')">K1</div>
                        <div class="seat available" id="K2" data-class="Standard" data-price="200" onclick="clicked(''K2'')">K2</div>
                        <div class="seat available" id="K3" data-class="Standard" data-price="200" onclick="clicked(''K3'')">K3</div>
                        <div class="seat available" id="K4" data-class="Standard" data-price="200" onclick="clicked(''K4'')">K4</div>
                        <div class="seat available" id="K5" data-class="Standard" data-price="200" onclick="clicked(''K5'')">K5</div>
                        <div class="seat available" id="K6" data-class="Standard" data-price="200" onclick="clicked(''K6'')">K6</div>
                        <div class="seat available" id="K7" data-class="Standard" data-price="200" onclick="clicked(''K7'')">K7</div>
                        <div class="seat available" id="K8" data-class="Standard" data-price="200" onclick="clicked(''K8'')">K8</div>
                        <div class="seat available" id="K9" data-class="Standard" data-price="200" onclick="clicked(''K9'')">K9</div>
                        <div class="seat available" id="K10" data-class="Standard" data-price="200" onclick="clicked(''K10'')">K10</div>
                        <div class="seat available" id="K11" data-class="Standard" data-price="200" onclick="clicked(''K11'')">K11</div>
                        <div class="seat available" id="K12" data-class="Standard" data-price="200" onclick="clicked(''K12'')">K12</div>
                    </div>

                    <div class="section-title">₹150 ECONOMY</div>

                    <div class="row">
                        <div class="seat available" id="J1" data-class="Economy" data-price="150" onclick="clicked(''J1'')">J1</div>
                        <div class="seat available" id="J2" data-class="Economy" data-price="150" onclick="clicked(''J2'')">J2</div>
                        <div class="seat available" id="J3" data-class="Economy" data-price="150" onclick="clicked(''J3'')">J3</div>
                        <div class="seat available" id="J4" data-class="Economy" data-price="150" onclick="clicked(''J4'')">J4</div>
                        <div class="seat available" id="J5" data-class="Economy" data-price="150" onclick="clicked(''J5'')">J5</div>
                        <div class="seat available" id="J6" data-class="Economy" data-price="150" onclick="clicked(''J6'')">J6</div>
                        <div class="seat available" id="J7" data-class="Economy" data-price="150" onclick="clicked(''J7'')">J7</div>
                        <div class="seat available" id="J8" data-class="Economy" data-price="150" onclick="clicked(''J8'')">J8</div>
                        <div class="seat available" id="J9" data-class="Economy" data-price="150" onclick="clicked(''J9'')">J9</div>
                        <div class="seat available" id="J10" data-class="Economy" data-price="150" onclick="clicked(''J10'')">J10</div>
                        <div class="seat available" id="J11" data-class="Economy" data-price="150" onclick="clicked(''J11'')">J11</div>
                    </div>');

-- Insert data into 'shows' table
INSERT INTO shows (date, time, movie_id, screen_id) VALUES
('2025-12-01', '14:00:00', 1, 1),
('2025-12-01', '17:00:00', 2, 2),
('2025-12-01', '20:00:00', 3, 3),
('2025-12-02', '14:00:00', 4, 4),
('2025-12-02', '17:00:00', 5, 5),
('2025-12-02', '20:00:00', 1, 2),
('2025-12-03', '14:00:00', 2, 3),
('2025-12-03', '17:00:00', 3, 4),
('2025-12-03', '20:00:00', 4, 5),
('2025-12-04', '14:00:00', 5, 1),
('2025-12-04', '17:00:00', 1, 3),
('2025-12-04', '20:00:00', 2, 4),
('2025-12-05', '14:00:00', 3, 5),
('2025-12-05', '17:00:00', 4, 1),
('2025-12-05', '20:00:00', 5, 2),
('2025-12-06', '14:00:00', 1, 4),
('2025-12-06', '17:00:00', 2, 5),
('2025-12-06', '20:00:00', 3, 1),
('2025-12-07', '14:00:00', 4, 2),
('2025-12-07', '17:00:00', 5, 3),
('2025-12-01', '11:00:00', 2, 1),
('2025-12-01', '13:30:00', 3, 2),
('2025-12-01', '16:00:00', 4, 3),
('2025-12-01', '18:30:00', 5, 4),
('2025-12-01', '21:00:00', 1, 5),
('2025-12-02', '11:00:00', 2, 4),
('2025-12-02', '13:30:00', 3, 5),
('2025-12-02', '16:00:00', 4, 1),
('2025-12-02', '18:30:00', 5, 2),
('2025-12-02', '21:00:00', 1, 3),
('2025-12-03', '11:00:00', 2, 5),
('2025-12-03', '13:30:00', 3, 1),
('2025-12-03', '16:00:00', 4, 2),
('2025-12-03', '18:30:00', 5, 3),
('2025-12-03', '21:00:00', 1, 4),
('2025-12-04', '11:00:00', 2, 3),
('2025-12-04', '13:30:00', 3, 4),
('2025-12-04', '16:00:00', 4, 5),
('2025-12-04', '18:30:00', 5, 1),
('2025-12-05', '11:00:00', 1, 2);

-- Insert data into 'ratings' table
INSERT INTO ratings (user_id, movie_id, rating) VALUES
(2, 2, 4),
(3, 3, 5),
(4, 4, 3),
(5, 5, 4),
(1, 2, 3),
(3, 4, 4),
(5, 1, 4),
(1, 3, 4),
(2, 4, 2),
(4, 1, 3),
(2, 5, 3),
(3, 1, 4),
(4, 2, 3),
(5, 3, 5),
(1, 5, 2),
(2, 1, 5),
(3, 2, 4),
(4, 3, 5),
(5, 4, 3);