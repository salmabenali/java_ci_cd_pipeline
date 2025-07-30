<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paradise Resort - Hôtel de Luxe</title>
    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Georgia', serif;
            line-height: 1.6;
            color: #333;
            overflow-x: hidden;
        }
        
        /* Header avec dégradé */
        .hero {
            height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            position: relative;
        }
        
        .hero-content {
            animation: fadeInUp 1.5s ease;
        }
        
        .hero h1 {
            font-size: 4rem;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
            font-weight: 300;
            letter-spacing: 3px;
        }
        
        .hero p {
            font-size: 1.5rem;
            margin-bottom: 2rem;
            font-style: italic;
        }
        
        .cta-button {
            display: inline-block;
            padding: 15px 40px;
            background: linear-gradient(45deg, #d4af37, #f4e04d);
            color: #333;
            text-decoration: none;
            border-radius: 50px;
            font-weight: bold;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            box-shadow: 0 10px 30px rgba(212, 175, 55, 0.3);
        }
        
        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(212, 175, 55, 0.4);
        }
        
        /* Navigation */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(0,0,0,0.9);
            backdrop-filter: blur(10px);
            z-index: 1000;
            padding: 1rem 5%;
            transition: all 0.3s ease;
        }
        
        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: #d4af37;
        }
        
        .nav-links {
            display: flex;
            list-style: none;
            gap: 2rem;
        }
        
        .nav-links a {
            color: white;
            text-decoration: none;
            transition: color 0.3s ease;
            font-weight: 500;
        }
        
        .nav-links a:hover {
            color: #d4af37;
        }
        
        /* Sections */
        .section {
            padding: 80px 5%;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .section-title {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 3rem;
            color: #2c3e50;
            position: relative;
        }
        
        .section-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: #d4af37;
        }
        
        /* Chambres */
        .rooms-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }
        
        .room-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            min-height: 300px;
            background: linear-gradient(45deg, #f8f9fa, #e9ecef);
        }
        
        .room-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 25px 50px rgba(0,0,0,0.15);
        }
        
        .room-header {
            height: 120px;
            background: linear-gradient(135deg, #d4af37, #f4e04d);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        
        .room-image {
            display: none;
        }
        
        .room-content {
            padding: 2rem;
        }
        
        .room-title {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: #2c3e50;
        }
        
        .room-price {
            position: absolute;
            top: 15px;
            right: 15px;
            background: #d4af37;
            color: white;
            padding: 10px 15px;
            border-radius: 25px;
            font-weight: bold;
        }
        
        .room-features {
            list-style: none;
            margin: 1rem 0;
        }
        
        .room-features li {
            padding: 5px 0;
            color: #666;
        }
        
        .room-features li::before {
            content: '✓';
            color: #d4af37;
            font-weight: bold;
            margin-right: 10px;
        }
        
        /* Services */
        .services {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }
        
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }
        
        .service-item {
            text-align: center;
            padding: 2rem;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        
        .service-item:hover {
            transform: translateY(-5px);
        }
        
        .service-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 1rem;
            border-radius: 50%;
            background: #d4af37;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            color: white;
        }
        
        /* Galerie */
        .gallery {
            background: #2c3e50;
            color: white;
        }
        
        .gallery .section-title {
            color: white;
        }
        
        .gallery .section-title::after {
            background: #d4af37;
        }
        
        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1rem;
            margin-top: 3rem;
        }
        
        .gallery-item {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            cursor: pointer;
            transition: transform 0.3s ease;
            height: 250px;
            background: linear-gradient(135deg, #667eea, #764ba2, #f093fb);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .gallery-item img {
            display: none;
        }
        
        .gallery-overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0,0,0,0.3);
            display: flex;
            align-items: center;
            justify-content: center;
            opacity: 1;
            transition: opacity 0.3s ease;
        }
        
        .gallery-text {
            text-align: center;
            color: white;
            font-size: 1.2rem;
            font-weight: bold;
        }
        
        /* Témoignages */
        .testimonials {
            background: #f8f9fa;
        }
        
        .testimonials-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }
        
        .testimonial {
            background: white;
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            position: relative;
        }
        
        .testimonial::before {
            content: '"';
            position: absolute;
            top: -10px;
            left: 20px;
            font-size: 4rem;
            color: #d4af37;
            line-height: 1;
        }
        
        .testimonial-text {
            font-style: italic;
            margin-bottom: 1rem;
            color: #666;
        }
        
        .testimonial-author {
            font-weight: bold;
            color: #2c3e50;
        }
        
        /* Footer */
        .footer {
            background: #2c3e50;
            color: white;
            padding: 3rem 5%;
            text-align: center;
        }
        
        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }
        
        .footer-section h3 {
            margin-bottom: 1rem;
            color: #d4af37;
        }
        
        .contact-info {
            list-style: none;
        }
        
        .contact-info li {
            margin-bottom: 0.5rem;
        }
        
        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .hero p {
                font-size: 1.2rem;
            }
            
            .nav-links {
                display: none;
            }
            
            .section {
                padding: 60px 5%;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="logo">Paradise Resort</div>
            <ul class="nav-links">
                <li><a href="#accueil">Accueil</a></li>
                <li><a href="#chambres">Chambres</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#galerie">Galerie</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="accueil" class="hero">
        <div class="hero-content">
            <h1>Paradise Resort</h1>
            <p>L'élégance rencontre le paradis tropical</p>
            <a href="#chambres" class="cta-button">Découvrir nos Suites</a>
        </div>
    </section>

    <!-- Chambres Section -->
    <section id="chambres" class="section">
        <h2 class="section-title">Nos Chambres d'Exception</h2>
        <div class="rooms-grid">
            <div class="room-card">
                <div class="room-price">€350/nuit</div>
                <div class="room-header">🏨</div>
                <div class="room-content">
                    <h3 class="room-title">Suite Océan</h3>
                    <p>Vue panoramique sur l'océan avec terrasse privée et jacuzzi extérieur.</p>
                    <ul class="room-features">
                        <li>80m² avec terrasse de 40m²</li>
                        <li>Jacuzzi privé avec vue mer</li>
                        <li>Service de majordome 24h/24</li>
                        <li>Mini-bar premium inclus</li>
                    </ul>
                </div>
            </div>
            
            <div class="room-card">
                <div class="room-price">€280/nuit</div>
                <div class="room-header">🏖️</div>
                <div class="room-content">
                    <h3 class="room-title">Villa Tropicale</h3>
                    <p>Villa indépendante au cœur du jardin tropical avec piscine privée.</p>
                    <ul class="room-features">
                        <li>120m² avec jardin privé</li>
                        <li>Piscine privée chauffée</li>
                        <li>Cuisine équipée</li>
                        <li>Service de chef sur demande</li>
                    </ul>
                </div>
            </div>
            
            <div class="room-card">
                <div class="room-price">€200/nuit</div>
                <div class="room-header">🌴</div>
                <div class="room-content">
                    <h3 class="room-title">Chambre Deluxe</h3>
                    <p>Chambre élégante avec balcon face à la mer et équipements haut de gamme.</p>
                    <ul class="room-features">
                        <li>45m² avec balcon vue mer</li>
                        <li>Salle de bain en marbre</li>
                        <li>Lit king-size premium</li>
                        <li>Accès spa inclus</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="section services">
        <h2 class="section-title">Services de Luxe</h2>
        <div class="services-grid">
            <div class="service-item">
                <div class="service-icon">🏊</div>
                <h3>Piscines Infinity</h3>
                <p>Trois piscines à débordement avec vue sur l'océan, dont une réservée aux adultes.</p>
            </div>
            
            <div class="service-item">
                <div class="service-icon">🌺</div>
                <h3>Spa & Wellness</h3>
                <p>Centre de bien-être avec traitements exclusifs et massages en bord de mer.</p>
            </div>
            
            <div class="service-item">
                <div class="service-icon">🍽️</div>
                <h3>Restaurants Gastronomiques</h3>
                <p>Quatre restaurants étoilés proposant une cuisine internationale et locale raffinée.</p>
            </div>
            
            <div class="service-item">
                <div class="service-icon">⛵</div>
                <h3>Activités Nautiques</h3>
                <p>Plongée, voile, jet-ski et excursions en yacht privé avec équipage.</p>
            </div>
            
            <div class="service-item">
                <div class="service-icon">🎾</div>
                <h3>Sports & Loisirs</h3>
                <p>Tennis, golf, fitness et centre équestre dans un cadre tropical exceptionnel.</p>
            </div>
            
            <div class="service-item">
                <div class="service-icon">✈️</div>
                <h3>Conciergerie VIP</h3>
                <p>Service personnalisé 24h/24 pour organiser tous vos désirs et excursions.</p>
            </div>
        </div>
    </section>

    <!-- Galerie Section -->
    <section id="galerie" class="section gallery">
        <h2 class="section-title">Galerie</h2>
        <div class="gallery-grid">
            <div class="gallery-item">
                <div class="gallery-overlay">
                    <div class="gallery-text">🏊 Piscine Infinity</div>
                </div>
            </div>
            
            <div class="gallery-item">
                <div class="gallery-overlay">
                    <div class="gallery-text">🍽️ Restaurant Gastronomique</div>
                </div>
            </div>
            
            <div class="gallery-item">
                <div class="gallery-overlay">
                    <div class="gallery-text">💆 Spa de Luxe</div>
                </div>
            </div>
            
            <div class="gallery-item">
                <div class="gallery-overlay">
                    <div class="gallery-text">🏖️ Plage Privée</div>
                </div>
            </div>
            
            <div class="gallery-item">
                <div class="gallery-overlay">
                    <div class="gallery-text">⛵ Activités Nautiques</div>
                </div>
            </div>
            
            <div class="gallery-item">
                <div class="gallery-overlay">
                    <div class="gallery-text">🌅 Couchers de Soleil</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Témoignages Section -->
    <section class="section testimonials">
        <h2 class="section-title">Témoignages de nos Clients</h2>
        <div class="testimonials-container">
            <div class="testimonial">
                <p class="testimonial-text">
                    Un séjour absolument magique ! Le service est irréprochable et les vues sont à couper le souffle. 
                    Nous reviendrons certainement pour notre prochain anniversaire de mariage.
                </p>
                <div class="testimonial-author">- Marie & Pierre Dubois</div>
            </div>
            
            <div class="testimonial">
                <p class="testimonial-text">
                    Le Paradise Resort a dépassé toutes nos attentes. L'attention aux détails, la qualité de la cuisine 
                    et la beauté du site en font un véritable paradis sur terre.
                </p>
                <div class="testimonial-author">- Sophie Martin</div>
            </div>
            
            <div class="testimonial">
                <p class="testimonial-text">
                    Une expérience inoubliable ! Le personnel est aux petits soins et les activités proposées 
                    permettent de découvrir la région sous tous ses aspects. Parfait pour une lune de miel !
                </p>
                <div class="testimonial-author">- Julie & Thomas Bernard</div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contact" class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h3>Paradise Resort</h3>
                <p>Votre destination de rêve pour un séjour d'exception dans un cadre tropical paradisiaque.</p>
            </div>
            
            <div class="footer-section">
                <h3>Contact</h3>
                <ul class="contact-info">
                    <li>📍 Île Paradise, Océan Indien</li>
                    <li>📞 +33 1 23 45 67 89</li>
                    <li>✉️ reservation@paradiseresort.com</li>
                    <li>🌐 www.paradiseresort.com</li>
                </ul>
            </div>
            
            <div class="footer-section">
                <h3>Réservations</h3>
                <p>Réservez dès maintenant votre séjour de rêve et bénéficiez de nos offres exclusives.</p>
                <a href="#" class="cta-button" style="margin-top: 1rem; display: inline-block;">Réserver Maintenant</a>
            </div>
        </div>
        
        <div style="text-align: center; margin-top: 2rem; padding-top: 2rem; border-top: 1px solid #555;">
            <p>&copy; 2025 Paradise Resort. Tous droits réservés.</p>
        </div>
    </footer>
</body>
</html>