---
layout: page
title: Curriculum Vitae2
permalink: /cv2/
---

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dong Hyeon Kim - Robotics Engineer</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        :root {
            --primary: #0A84FF;
            --primary-dark: #0066CC;
            --secondary: #5E5CE6;
            --accent: #FF9F0A;
            --text-primary: #1D1D1F;
            --text-secondary: #86868B;
            --bg-primary: #FFFFFF;
            --bg-secondary: #F5F5F7;
            --border: #E5E5E7;
            --shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 8px 40px rgba(0, 0, 0, 0.12);
            --gradient-primary: linear-gradient(135deg, #0A84FF 0%, #5E5CE6 100%);
            --gradient-accent: linear-gradient(135deg, #FF9F0A 0%, #FF6B35 100%);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            line-height: 1.6;
            color: var(--text-primary);
            background: var(--bg-secondary);
            overflow-x: hidden;
        }

        /* Header */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border);
            transition: all 0.3s ease;
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 70px;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            background: var(--gradient-primary);
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .nav-menu {
            display: flex;
            list-style: none;
            gap: 2rem;
        }

        .nav-link {
            text-decoration: none;
            color: var(--text-secondary);
            font-weight: 500;
            transition: all 0.3s ease;
            position: relative;
        }

        .nav-link:hover,
        .nav-link.active {
            color: var(--primary);
        }

        .nav-link::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--gradient-primary);
            transition: width 0.3s ease;
        }

        .nav-link:hover::after,
        .nav-link.active::after {
            width: 100%;
        }

        /* Main Container */
        .main-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 100px 2rem 2rem;
        }

        /* Hero Section */
        .hero {
            display: grid;
            grid-template-columns: 1fr 400px;
            gap: 4rem;
            align-items: center;
            min-height: 80vh;
            margin-bottom: 6rem;
        }

        .hero-content h1 {
            font-size: 3.5rem;
            font-weight: 700;
            line-height: 1.1;
            margin-bottom: 1rem;
            background: var(--gradient-primary);
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-content .subtitle {
            font-size: 1.5rem;
            color: var(--text-secondary);
            margin-bottom: 2rem;
            font-weight: 400;
        }

        .hero-content .description {
            font-size: 1.1rem;
            color: var(--text-secondary);
            margin-bottom: 3rem;
            line-height: 1.8;
        }

        .hero-cta {
            display: flex;
            gap: 1rem;
        }

        .btn {
            padding: 12px 24px;
            border-radius: 12px;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            border: none;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn-primary {
            background: var(--gradient-primary);
            color: white;
            box-shadow: var(--shadow);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-hover);
        }

        .btn-secondary {
            background: var(--bg-primary);
            color: var(--text-primary);
            border: 2px solid var(--border);
        }

        .btn-secondary:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        .hero-visual {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .avatar {
            width: 300px;
            height: 300px;
            border-radius: 50%;
            background: var(--gradient-primary);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 8rem;
            color: white;
            position: relative;
            box-shadow: var(--shadow-hover);
        }

        .floating-elements {
            position: absolute;
            width: 100%;
            height: 100%;
        }

        .floating-element {
            position: absolute;
            width: 60px;
            height: 60px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.5rem;
            animation: float 6s ease-in-out infinite;
        }

        .floating-element:nth-child(1) {
            top: 10%;
            left: 20%;
            background: var(--gradient-accent);
            animation-delay: 0s;
        }

        .floating-element:nth-child(2) {
            top: 70%;
            right: 10%;
            background: var(--secondary);
            animation-delay: 2s;
        }

        .floating-element:nth-child(3) {
            bottom: 20%;
            left: 10%;
            background: var(--primary);
            animation-delay: 4s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }

        /* Section Styles */
        .section {
            margin-bottom: 6rem;
        }

        .section-header {
            text-align: center;
            margin-bottom: 4rem;
        }

        .section-title {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .section-subtitle {
            font-size: 1.2rem;
            color: var(--text-secondary);
            max-width: 600px;
            margin: 0 auto;
        }

        /* Cards */
        .cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
        }

        .card {
            background: var(--bg-primary);
            border-radius: 20px;
            padding: 2rem;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            border: 1px solid var(--border);
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
        }

        .card-icon {
            width: 60px;
            height: 60px;
            border-radius: 15px;
            background: var(--gradient-primary);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .card-title {
            font-size: 1.3rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .card-subtitle {
            color: var(--text-secondary);
            margin-bottom: 1rem;
            font-size: 0.95rem;
        }

        .card-description {
            color: var(--text-secondary);
            line-height: 1.6;
        }

        /* Timeline */
        .timeline {
            position: relative;
            max-width: 800px;
            margin: 0 auto;
        }

        .timeline::before {
            content: '';
            position: absolute;
            left: 50%;
            top: 0;
            bottom: 0;
            width: 2px;
            background: var(--gradient-primary);
            transform: translateX(-50%);
        }

        .timeline-item {
            position: relative;
            margin-bottom: 3rem;
            display: flex;
            align-items: center;
        }

        .timeline-item:nth-child(odd) {
            flex-direction: row;
        }

        .timeline-item:nth-child(even) {
            flex-direction: row-reverse;
        }

        .timeline-content {
            width: calc(50% - 2rem);
            background: var(--bg-primary);
            padding: 2rem;
            border-radius: 20px;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
        }

        .timeline-content:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
        }

        .timeline-dot {
            width: 16px;
            height: 16px;
            background: var(--primary);
            border-radius: 50%;
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            border: 4px solid var(--bg-secondary);
        }

        .timeline-date {
            color: var(--primary);
            font-weight: 600;
            font-size: 0.9rem;
            margin-bottom: 0.5rem;
        }

        .timeline-title {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .timeline-company {
            color: var(--text-secondary);
            margin-bottom: 1rem;
        }

        /* Skills */
        .skills-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .skill-category {
            background: var(--bg-primary);
            padding: 2rem;
            border-radius: 20px;
            box-shadow: var(--shadow);
        }

        .skill-category h3 {
            margin-bottom: 1.5rem;
            font-size: 1.2rem;
        }

        .skill-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 0.8rem;
        }

        .skill-tag {
            padding: 8px 16px;
            background: var(--bg-secondary);
            border-radius: 25px;
            font-size: 0.9rem;
            font-weight: 500;
            transition: all 0.3s ease;
            border: 1px solid var(--border);
        }

        .skill-tag:hover {
            background: var(--primary);
            color: white;
            transform: translateY(-2px);
        }

        /* Publications */
        .publication-item {
            background: var(--bg-primary);
            padding: 2rem;
            border-radius: 20px;
            margin-bottom: 1.5rem;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            border-left: 4px solid var(--primary);
        }

        .publication-item:hover {
            transform: translateX(10px);
            box-shadow: var(--shadow-hover);
        }

        .publication-number {
            color: var(--primary);
            font-weight: 700;
            font-size: 1.1rem;
            margin-bottom: 0.5rem;
        }

        /* Awards */
        .awards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
        }

        .award-item {
            background: var(--bg-primary);
            padding: 1.5rem;
            border-radius: 15px;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .award-item::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: var(--gradient-accent);
        }

        .award-item:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
        }

        .award-rank {
            background: var(--gradient-accent);
            color: white;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
            display: inline-block;
            margin-bottom: 1rem;
        }

        /* Contact */
        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .contact-item {
            background: var(--bg-primary);
            padding: 2rem;
            border-radius: 20px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            text-decoration: none;
            color: inherit;
        }

        .contact-item:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
            color: var(--primary);
        }

        .contact-icon {
            width: 60px;
            height: 60px;
            border-radius: 15px;
            background: var(--gradient-primary);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.5rem;
            margin: 0 auto 1rem;
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            .nav-container {
                padding: 0 1rem;
            }

            .nav-menu {
                gap: 1rem;
            }

            .main-container {
                padding: 100px 1rem 2rem;
            }

            .hero {
                grid-template-columns: 1fr;
                gap: 3rem;
                text-align: center;
            }

            .hero-content h1 {
                font-size: 2.5rem;
            }

            .timeline::before {
                left: 2rem;
            }

            .timeline-item {
                flex-direction: row !important;
                padding-left: 4rem;
            }

            .timeline-content {
                width: 100%;
            }

            .timeline-dot {
                left: 2rem;
            }

            .cards-grid {
                grid-template-columns: 1fr;
            }
        }

        /* Smooth scroll */
        html {
            scroll-behavior: smooth;
        }

        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-track {
            background: var(--bg-secondary);
        }

        ::-webkit-scrollbar-thumb {
            background: var(--primary);
            border-radius: 4px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: var(--primary-dark);
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="nav-container">
            <div class="logo">DH Kim</div>
            <nav>
                <ul class="nav-menu">
                    <li><a href="#home" class="nav-link active">Home</a></li>
                    <li><a href="#experience" class="nav-link">Experience</a></li>
                    <li><a href="#education" class="nav-link">Education</a></li>
                    <li><a href="#skills" class="nav-link">Skills</a></li>
                    <li><a href="#publications" class="nav-link">Publications</a></li>
                    <li><a href="#awards" class="nav-link">Awards</a></li>
                    <li><a href="#contact" class="nav-link">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Main Container -->
    <div class="main-container">
        <!-- Hero Section -->
        <section id="home" class="hero">
            <div class="hero-content">
                <h1>Dong Hyeon Kim</h1>
                <p class="subtitle">Robotics Engineer & Researcher</p>
                <p class="description">
                    Passionate about advancing robotics through innovative control systems, multi-agent coordination, and neural network integration. Currently developing cutting-edge autonomous systems at Luxrobo.
                </p>
                <div class="hero-cta">
                    <a href="#contact" class="btn btn-primary">
                        <i class="fas fa-envelope"></i>
                        Get In Touch
                    </a>
                    <a href="#experience" class="btn btn-secondary">
                        View My Work
                    </a>
                </div>
            </div>
            <div class="hero-visual">
                <div class="avatar">
                    <i class="fas fa-robot"></i>
                </div>
                <div class="floating-elements">
                    <div class="floating-element">
                        <i class="fas fa-cogs"></i>
                    </div>
                    <div class="floating-element">
                        <i class="fas fa-brain"></i>
                    </div>
                    <div class="floating-element">
                        <i class="fas fa-microchip"></i>
                    </div>
                </div>
            </div>
        </section>

        <!-- Experience Section -->
        <section id="experience" class="section">
            <div class="section-header">
                <h2 class="section-title">Professional Experience</h2>
                <p class="section-subtitle">
                    My journey through robotics engineering and research
                </p>
            </div>
            
            <div class="timeline">
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-date">Feb. 2024 - Present</div>
                        <h3 class="timeline-title">Robotics Engineer</h3>
                        <p class="timeline-company">Luxrobo</p>
                        <p class="card-description">
                            Developing autonomous systems and robotics solutions. Focus on advanced control algorithms and system integration for commercial robotics applications.
                        </p>
                    </div>
                    <div class="timeline-dot"></div>
                </div>

                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-date">Feb. 2022 - Feb. 2024</div>
                        <h3 class="timeline-title">Research Student</h3>
                        <p class="timeline-company">Advanced Control Systems Laboratory, Korea University</p>
                        <p class="card-description">
                            Conducted research on multi-agent systems, control theory, and estimation algorithms. Developed distributed localization systems for humanoid robots using neural networks.
                        </p>
                    </div>
                    <div class="timeline-dot"></div>
                </div>

                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-date">Jan. 2021 - Feb. 2021</div>
                        <h3 class="timeline-title">Research Intern</h3>
                        <p class="timeline-company">Robot Vision Lab, KIST</p>
                        <p class="card-description">
                            Worked on computer vision and robotics projects. Gained hands-on experience with robot perception systems and vision-based control algorithms.
                        </p>
                    </div>
                    <div class="timeline-dot"></div>
                </div>

                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-date">Jan. 2019 - Feb. 2022</div>
                        <h3 class="timeline-title">Team Member</h3>
                        <p class="timeline-company">ROBIT - Robot Sports Game Team, Kwangwoon University</p>
                        <p class="card-description">
                            Specialized in image processing, localization, firmware development, and circuit design. Achieved multiple awards in RoboCup competitions and robot contests.
                        </p>
                    </div>
                    <div class="timeline-dot"></div>
                </div>
            </div>
        </section>

        <!-- Education Section -->
        <section id="education" class="section">
            <div class="section-header">
                <h2 class="section-title">Education</h2>
                <p class="section-subtitle">
                    Academic foundation in robotics and electrical engineering
                </p>
            </div>
            
            <div class="cards-grid">
                <div class="card">
                    <div class="card-icon">
                        <i class="fas fa-graduation-cap"></i>
                    </div>
                    <h3 class="card-title">Master of Science</h3>
                    <p class="card-subtitle">Mar. 2022 - Feb. 2024</p>
                    <h4 style="margin-bottom: 0.5rem;">Korea University</h4>
                    <p style="margin-bottom: 1rem; color: var(--text-secondary);">Electrical Engineering</p>
                    <p class="card-description">
                        <strong>Thesis:</strong> "Fusion of Neural Networks and Finite Memory Estimation for Distributed Localization of Multiple Humanoid Robots"
                    </p>
                </div>

                <div class="card">
                    <div class="card-icon">
                        <i class="fas fa-robot"></i>
                    </div>
                    <h3 class="card-title">Bachelor of Science</h3>
                    <p class="card-subtitle">Mar. 2018 - Feb. 2022</p>
                    <h4 style="margin-bottom: 0.5rem;">Kwangwoon University</h4>
                    <p style="margin-bottom: 1rem; color: var(--text-secondary);">Division of Robotics</p>
                    <p class="card-description">
                        Comprehensive education in robotics fundamentals, including mechanical design, control systems, programming, and artificial intelligence applications.
                    </p>
                </div>
            </div>
        </section>

        <!-- Skills Section -->
        <section id="skills" class="section">
            <div class="section-header">
                <h2 class="section-title">Technical Skills</h2>
                <p class="section-subtitle">
                    Technologies and tools I work with
                </p>
            </div>
            
            <div class="skills-container">
                <div class="skill-category">
                    <h3><i class="fas fa-code" style="margin-right: 10px; color: var(--primary);"></i>Programming Languages</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">C++</span>
                        <span class="skill-tag">Python</span>
                        <span class="skill-tag">MATLAB</span>
                        <span class="skill-tag">Go</span>
                    </div>
                </div>

                <div class="skill-category">
                    <h3><i class="fas fa-tools" style="margin-right: 10px; color: var(--primary);"></i>Frameworks & Libraries</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">ROS</span>
                        <span class="skill-tag">OpenCV</span>
                        <span class="skill-tag">Qt</span>
                        <span class="skill-tag">TensorFlow</span>
                        <span class="skill-tag">PyTorch</span>
                    </div>
                </div>

                <div class="skill-category">
                    <h3><i class="fas fa-cog" style="margin-right: 10px; color: var(--primary);"></i>Tools & Systems</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">Git</span>
                        <span class="skill-tag">Docker</span>
                        <span class="skill-tag">Linux</span>
                        <span class="skill-tag">MAVROS</span>
                        <span class="skill-tag">Pixhawk</span>
                    </div>
                </div>

                <div class="skill-category">
                    <h3><i class="fas fa-brain" style="margin-right: 10px; color: var(--primary);"></i>Specializations</h3>
                    <div class="skill-tags">
                        <span class="skill-tag">Control Systems</span>
                        <span class="skill-tag">Multi-Agent Systems</span>
                        <span class="skill-tag">Neural Networks</span>
                        <span class="skill-tag">Computer Vision</span>
                        <span class="skill-tag">Localization</span>
                        <span class="skill-tag">SLAM</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- Publications Section -->
        <section id="publications" class="section">
            <div class="section-header">
                <h2 class="section-title">Publications</h2>
                <p class="section-subtitle">
                    Research contributions to the robotics community
                </p>
            </div>
            
            <div class="publication-item">
                <div class="publication-number">Publication #1</div>
                <p>D. H. Kim, J. M. Pak*, P. Shi, and C. K. Ahn*, "Finite-Memory Cooperative Localization Based on Multi-Sensor Information Fusion Using Neural Networks for Multiple Humanoid Robots," <em>IEEE Transactions on Industrial Electronics</em> (Under revision)</p>
            </div>

            <div class="publication-item">
                <div class="publication-number">Publication #2</div>
                <p>J. Y. Ko, J. M. Pak*, D. H. Kim, and C. K. Ahn*, "Secure Event-Triggered Distributed Finite-Memory Localization for Multiple Mobile Robots Under Cyberattacks," <em>IEEE Transactions on Industrial Electronics</em>, Vol. 71, No. 10, Oct. 2024, pp. 12931–12941.</p>
            </div>
        </section>

        <!-- Awards Section -->
        <section id="awards" class="section">
            <div class="section-header">
                <h2 class="section-title">Awards & Achievements</h2>
                <p class="section-subtitle">
                    Recognition for excellence in robotics and innovation
                </p>
            </div>
            
            <div class="awards-grid">
                <div class="award-item">
                    <div class="award-rank">Grand Prize</div>
                    <h4>Future Mobility Idea Competition</h4>
                    <p>Korea Automotive Technology Institute (Sep. 2023)</p>
                </div>

                <div class="award-item">
                    <div class="award-rank">Grand Prize</div>
                    <h4>17th ICT Exhibition (KWIX)</h4>
                    <p>Kwangwoon University President Award (Sep. 2021)</p>
                </div>

                <div class="award-item">
                    <div class="award-rank">Grand Prize</div>
                    <h4>International Robot Contest 2020</h4>
                    <p>Presidential Prize - Humanoid Robot Sports (Nov. 2020)</p>
                </div>

                <div class="award-item">
                    <div class="award-rank">1st Place</div>
                    <h4>RoboCup 2020 KoreaOpen</h4>
                    <p>KIRIA Award - Humanoid S (Aug. 2020)</p>
                </div>

                <div class="award-item">
                    <div class="award-rank">2nd Place</div>
                    <h4>RoboCup 2019 Australia</h4>
                    <p>Humanoid League TeenSize Drop-In Challenge (Jul. 2019)</p>
                </div>

                <div class="award-item">
                    <div class="award-rank">1st Place</div>
                    <h4>RoboCup 2019 KoreaOpen</h4>
                    <p>Gangwon-do Governor Award - Humanoid S (Feb. 2019)</p>
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="section">
            <div class="section-header">
                <h2 class="section-title">Contact</h2>
                <p class="section-subtitle">Get in touch with me</p>
            </div>
            <div class="contact-grid">
                <div class="contact-item">
                    <i class="contact-icon fas fa-envelope"></i>
                    <h4>Email</h4>
                    <p>ehdgus2210@gmail.com</p>
                </div>
                <div class="contact-item">
                    <i class="contact-icon fab fa-github"></i>
                    <h4>GitHub</h4>
                    <p>github.com/donghyeon99</p>
                </div>
            </div>
        </section>
