---
layout: page
title: Curriculum Vitae (Refactored)
permalink: /cv2/
---

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Hero Section -->
<div class="hero-section">
  <div class="hero-content">
    <div class="profile-avatar">
      <i class="fas fa-robot"></i>
    </div>
    <h1 class="hero-title">Dong Hyeon Kim</h1>
    <p class="hero-subtitle">Robotics Engineer & AI Researcher</p>
    <div class="hero-contact">
      <a href="mailto:ehdgus2210@gmail.com" class="contact-btn">
        <i class="fas fa-envelope"></i> ehdgus2210@gmail.com
      </a>
      <a href="https://github.com/donghyeon99" class="contact-btn">
        <i class="fab fa-github"></i> donghyeon99
      </a>
    </div>
  </div>
</div>

<!-- Navigation -->
<nav class="cv-nav">
  <div class="nav-container">
    <a href="#experience" class="nav-item">
      <i class="fas fa-briefcase"></i>
      <span>Experience</span>
    </a>
    <a href="#education" class="nav-item">
      <i class="fas fa-graduation-cap"></i>
      <span>Education</span>
    </a>
    <a href="#skills" class="nav-item">
      <i class="fas fa-tools"></i>
      <span>Skills</span>
    </a>
    <a href="#publications" class="nav-item">
      <i class="fas fa-book-open"></i>
      <span>Publications</span>
    </a>
    <a href="#awards" class="nav-item">
      <i class="fas fa-award"></i>
      <span>Awards</span>
    </a>
    <a href="#projects" class="nav-item">
      <i class="fas fa-code"></i>
      <span>Projects</span>
    </a>
  </div>
</nav>

<div class="cv-container">

  <!-- Experience Section -->
  <section id="experience" class="cv-section">
    <h2><i class="fas fa-briefcase"></i> Professional Experience</h2>
    
    <!-- Current Position -->
    <div class="experience-group">
      <div class="company-header">
        <h3>Luxrobo</h3>
        <a href="https://luxrobo.com/" class="company-link" target="_blank">
          <i class="fas fa-external-link-alt"></i>
        </a>
        <span class="position-title">Robotics Engineer</span>
      </div>
      
      <!-- Current Project -->
      <div class="project-card current">
        <div class="project-header">
          <h4>Autonomous Golf Cart Project</h4>
          <span class="project-period">Mar. 2025 - Present</span>
        </div>
        <div class="project-description">
          <p>Developing RTK GPS Autonomous Driving System with advanced control algorithms</p>
        </div>
        <div class="project-focus">
          <strong>Focus Areas:</strong>
          <ul>
            <li>Firmware development and system integration</li>
            <li>Extended Kalman Filter implementation</li>
            <li>PID control systems optimization</li>
            <li>Bicycle model dynamics</li>
          </ul>
        </div>
        <div class="tech-stack">
          <span class="tech-tag">C</span>
          <span class="tech-tag">RTK GPS</span>
          <span class="tech-tag">Extended Kalman Filter</span>
          <span class="tech-tag">PID Control</span>
          <span class="tech-tag">Bicycle Model</span>
        </div>
      </div>
      
      <!-- Previous Project -->
      <div class="project-card">
        <div class="project-header">
          <h4>Smart Parking System Project</h4>
          <span class="project-period">May. 2024 - Mar. 2025</span>
        </div>
        <div class="project-description">
          <p>Developed comprehensive smart parking solution with computer vision and real-time processing</p>
        </div>
        <div class="project-focus">
          <strong>Key Achievements:</strong>
          <ul>
            <li>Image Processing Server architecture design</li>
            <li>Light control server implementation</li>
            <li>Real-time data processing optimization</li>
          </ul>
        </div>
        <div class="tech-stack">
          <span class="tech-tag">Redis</span>
          <span class="tech-tag">MySQL</span>
          <span class="tech-tag">C++</span>
          <span class="tech-tag">Go</span>
          <span class="tech-tag">OpenCV</span>
          <span class="tech-tag">CUDA</span>
        </div>
      </div>
    </div>

    <!-- Research Position -->
    <div class="experience-group">
      <div class="company-header">
        <h3>Advanced Control Systems Laboratory</h3>
        <a href="https://control.korea.ac.kr/" class="company-link" target="_blank">
          <i class="fas fa-external-link-alt"></i>
        </a>
        <span class="position-title">Research Student</span>
        <span class="company-name">Korea University</span>
      </div>
      
      <div class="project-card">
        <div class="project-header">
          <h4>Multi-Agent Systems Research</h4>
          <span class="project-period">Feb. 2022 - Feb. 2024</span>
        </div>
        <div class="project-description">
          <p>Advanced research in cooperative robotics and distributed systems</p>
        </div>
        <div class="project-focus">
          <strong>Research Areas:</strong>
          <ul>
            <li>Multi-agent systems coordination</li>
            <li>Control theory applications</li>
            <li>State estimation algorithms</li>
          </ul>
        </div>
        
        <!-- Special Project Highlight -->
        <div class="special-project">
          <h5><i class="fas fa-star"></i> AI-based Cooperative Autonomous Swarm Anti-Drone System</h5>
          <p>Development of AI-based cooperative autonomous swarm system for neutralizing illegal drones</p>
        </div>
      </div>
    </div>

    <!-- Other Positions -->
    <div class="experience-grid">
      <div class="experience-item">
        <div class="experience-header">
          <h4>Research Intern</h4>
          <span class="experience-period">Jan. 2021 - Feb. 2021</span>
        </div>
        <div class="experience-company">
          <strong>Robot Vision Lab, KIST</strong>
          <a href="https://kistrobot.vision/" target="_blank"><i class="fas fa-external-link-alt"></i></a>
        </div>
        <p>Computer vision and robotics research experience at Korea Institute of Science and Technology</p>
      </div>

      <div class="experience-item">
        <div class="experience-header">
          <h4>Team Leader</h4>
          <span class="experience-period">Jan. 2019 - Feb. 2022</span>
        </div>
        <div class="experience-company">
          <strong>ROBIT - Robot Sports Game Team</strong>
          <a href="https://robit.tistory.com" target="_blank"><i class="fas fa-external-link-alt"></i></a>
        </div>
        <p>Led competitive robotics team specializing in humanoid robot development, achieving multiple international awards</p>
        <div class="tech-stack">
          <span class="tech-tag">Image Processing</span>
          <span class="tech-tag">Localization</span>
          <span class="tech-tag">Firmware</span>
          <span class="tech-tag">Circuit Design</span>
        </div>
      </div>
    </div>
  </section>

  <!-- Education Section -->
  <section id="education" class="cv-section">
    <h2><i class="fas fa-graduation-cap"></i> Education</h2>
    
    <div class="education-grid">
      <div class="education-card">
        <div class="degree-icon masters">
          <i class="fas fa-user-graduate"></i>
        </div>
        <div class="education-content">
          <h3>Master of Science in Electrical Engineering</h3>
          <div class="university">
            <strong>Korea University</strong>
            <a href="https://www.korea.edu/" target="_blank"><i class="fas fa-external-link-alt"></i></a>
          </div>
          <div class="education-period">Mar. 2022 - Feb. 2024</div>
          <div class="thesis">
            <strong>Thesis:</strong> "Fusion of Neural Networks and Finite Memory Estimation for Distributed Localization of Multiple Humanoid Robots"
          </div>
        </div>
      </div>

      <div class="education-card">
        <div class="degree-icon bachelors">
          <i class="fas fa-robot"></i>
        </div>
        <div class="education-content">
          <h3>Bachelor of Science in Robotics</h3>
          <div class="university">
            <strong>Kwangwoon University</strong>
            <a href="https://www.kw.ac.kr/ko/" target="_blank"><i class="fas fa-external-link-alt"></i></a>
          </div>
          <div class="education-period">Mar. 2018 - Feb. 2022</div>
          <div class="program">
            <strong>Program:</strong> Division of Robotics
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Skills Section -->
  <section id="skills" class="cv-section">
    <h2><i class="fas fa-tools"></i> Technical Expertise</h2>
    
    <div class="skills-grid">
      <div class="skill-category">
        <div class="skill-icon programming">
          <i class="fas fa-code"></i>
        </div>
        <h3>Programming Languages</h3>
        <div class="skill-items">
          <span class="skill-item expert">C++</span>
          <span class="skill-item expert">Python</span>
          <span class="skill-item advanced">C</span>
          <span class="skill-item advanced">MATLAB</span>
          <span class="skill-item intermediate">Go</span>
        </div>
      </div>

      <div class="skill-category">
        <div class="skill-icon robotics">
          <i class="fas fa-robot"></i>
        </div>
        <h3>Robotics & Control</h3>
        <div class="skill-items">
          <span class="skill-item expert">ROS/ROS2</span>
          <span class="skill-item expert">MAVROS</span>
          <span class="skill-item advanced">Kalman Filters</span>
          <span class="skill-item advanced">PID Control</span>
          <span class="skill-item intermediate">Gazebo</span>
        </div>
      </div>

      <div class="skill-category">
        <div class="skill-icon ai">
          <i class="fas fa-brain"></i>
        </div>
        <h3>AI & Computer Vision</h3>
        <div class="skill-items">
          <span class="skill-item expert">OpenCV</span>
          <span class="skill-item advanced">Neural Networks</span>
          <span class="skill-item advanced">CUDA</span>
          <span class="skill-item intermediate">PyTorch</span>
        </div>
      </div>

      <div class="skill-category">
        <div class="skill-icon database">
          <i class="fas fa-database"></i>
        </div>
        <h3>Databases & Tools</h3>
        <div class="skill-items">
          <span class="skill-item advanced">MySQL</span>
          <span class="skill-item advanced">Redis</span>
          <span class="skill-item expert">Git</span>
          <span class="skill-item advanced">Docker</span>
          <span class="skill-item expert">Linux</span>
        </div>
      </div>

      <div class="skill-category">
        <div class="skill-icon hardware">
          <i class="fas fa-microchip"></i>
        </div>
        <h3>Hardware & Embedded</h3>
        <div class="skill-items">
          <span class="skill-item advanced">RTK GPS</span>
          <span class="skill-item advanced">STM32</span>
          <span class="skill-item intermediate">Arduino</span>
          <span class="skill-item intermediate">Pixhawk</span>
        </div>
      </div>

      <div class="skill-category">
        <div class="skill-icon specialized">
          <i class="fas fa-satellite"></i>
        </div>
        <h3>Specialized Areas</h3>
        <div class="skill-items">
          <span class="skill-item expert">Multi-Agent Systems</span>
          <span class="skill-item advanced">SLAM</span>
          <span class="skill-item advanced">UAV Control</span>
          <span class="skill-item intermediate">Swarm Robotics</span>
        </div>
      </div>
    </div>
  </section>

  <!-- Publications Section -->
  <section id="publications" class="cv-section">
    <h2><i class="fas fa-book-open"></i> Publications</h2>
    
    <div class="publications-list">
      <div class="publication-item">
        <div class="publication-journal">IEEE Transactions on Industrial Electronics</div>
        <h4>Finite-Memory Cooperative Localization Based on Multi-Sensor Information Fusion Using Neural Networks for Multiple Humanoid Robots</h4>
        <div class="publication-authors">
          <strong>D. H. Kim</strong>, J. M. Pak*, P. Shi, and C. K. Ahn*
        </div>
        <div class="publication-details">
          <span class="publication-status">In press</span>
          <span class="publication-doi">DOI: 10.1109/TIE.2025.3600539</span>
        </div>
      </div>

      <div class="publication-item">
        <div class="publication-journal">IEEE Transactions on Industrial Electronics</div>
        <h4>Secure Event-Triggered Distributed Finite-Memory Localization for Multiple Mobile Robots Under Cyberattacks</h4>
        <div class="publication-authors">
          J. Y. Ko, J. M. Pak*, <strong>D. H. Kim</strong>, and C. K. Ahn*
        </div>
        <div class="publication-details">
          <span class="publication-volume">Vol. 71, No. 10, Oct. 2024, pp. 12931–12941</span>
        </div>
      </div>
    </div>
  </section>

  <!-- Awards Section -->
  <section id="awards" class="cv-section">
    <h2><i class="fas fa-award"></i> Awards & Achievements</h2>
    
    <div class="awards-timeline">
      <div class="award-item grand-prize">
        <div class="award-icon">
          <i class="fas fa-trophy"></i>
        </div>
        <div class="award-content">
          <div class="award-rank">Grand Prize</div>
          <h4>Future Mobility Idea Competition</h4>
          <div class="award-organization">Korea Automotive Technology Institute</div>
          <div class="award-date">September 2023</div>
        </div>
      </div>

      <div class="award-item grand-prize">
        <div class="award-icon">
          <i class="fas fa-trophy"></i>
        </div>
        <div class="award-content">
          <div class="award-rank">Grand Prize</div>
          <h4>17th ICT Exhibition (KWIX)</h4>
          <div class="award-organization">Kwangwoon University President Award</div>
          <div class="award-date">September 2021</div>
        </div>
      </div>

      <div class="award-item grand-prize">
        <div class="award-icon">
          <i class="fas fa-trophy"></i>
        </div>
        <div class="award-content">
          <div class="award-rank">Grand Prize (Presidential Prize)</div>
          <h4>International Robot Contest 2020</h4>
          <div class="award-organization">Ministry of Trade, Industry and Energy</div>
          <div class="award-date">November 2020</div>
        </div>
      </div>

      <div class="award-item first-place">
        <div class="award-icon">
          <i class="fas fa-medal"></i>
        </div>
        <div class="award-content">
          <div class="award-rank">First Place</div>
          <h4>RoboCup 2020 KoreaOpen Humanoid S</h4>
          <div class="award-organization">KIRIA Award</div>
          <div class="award-date">August 2020</div>
        </div>
      </div>

      <div class="award-item second-place">
        <div class="award-icon">
          <i class="fas fa-medal"></i>
        </div>
        <div class="award-content">
          <div class="award-rank">Second Place</div>
          <h4>RoboCup 2019 Humanoid League TeenSize Drop-In Challenge</h4>
          <div class="award-organization">Australia</div>
          <div class="award-date">July 2019</div>
        </div>
      </div>

      <div class="award-item third-place">
        <div class="award-icon">
          <i class="fas fa-medal"></i>
        </div>
        <div class="award-content">
          <div class="award-rank">Third Place</div>
          <h4>RoboCup 2019 Humanoid League TeenSize Technical Challenge</h4>
          <div class="award-organization">Australia</div>
          <div class="award-date">July 2019</div>
        </div>
      </div>

      <div class="award-item first-place">
        <div class="award-icon">
          <i class="fas fa-medal"></i>
        </div>
        <div class="award-content">
          <div class="award-rank">First Place</div>
          <h4>RoboCup 2019 KoreaOpen Humanoid S</h4>
          <div class="award-organization">Gangwon-do Governor Award</div>
          <div class="award-date">February 2019</div>
        </div>
      </div>

      <div class="award-item third-place">
        <div class="award-icon">
          <i class="fas fa-medal"></i>
        </div>
        <div class="award-content">
          <div class="award-rank">Third Place</div>
          <h4>International Robot Contest 2020 Humanoid Robot Sports</h4>
          <div class="award-organization">1st competition</div>
          <div class="award-date">November 2020</div>
        </div>
      </div>
    </div>
  </section>

  <!-- Projects Section -->
  <section id="projects" class="cv-section">
    <h2><i class="fas fa-code"></i> Key Projects</h2>
    
    <div class="projects-grid">
      <div class="project-showcase">
        <div class="project-image">
          <i class="fas fa-robot"></i>
        </div>
        <div class="project-content">
          <h4>Distributed Humanoid Localization</h4>
          <div class="project-timeline">Jul. 2022 – Feb. 2024</div>
          <p>Designed a robust localization algorithm for humanoid robots using finite-memory estimation and ANN-based odometry fusion.</p>
          <div class="project-keywords">
            <span class="keyword">Cooperative Localization</span>
            <span class="keyword">Humanoid Robot</span>
            <span class="keyword">Neural Network</span>
            <span class="keyword">Finite-Memory Estimation</span>
          </div>
          <div class="project-links">
            <a href="https://www.youtube.com/watch?v=ueaxI5FNc_w" target="_blank" class="demo-link">
              <i class="fab fa-youtube"></i> Watch Demo
            </a>
          </div>
        </div>
      </div>

      <div class="project-showcase">
        <div class="project-image">
          <i class="fas fa-drone"></i>
        </div>
        <div class="project-content">
          <h4>UAV Formation Control</h4>
          <div class="project-timeline">Mar. 2022 – Feb. 2024</div>
          <p>Implemented leader–follower UAV formation using virtual leader and sliding mode control, deployed on 3 real UAVs.</p>
          <div class="project-keywords">
            <span class="keyword">UAV</span>
            <span class="keyword">Formation Control</span>
            <span class="keyword">Sliding Mode Control</span>
            <span class="keyword">ROS</span>
            <span class="keyword">MAVROS</span>
          </div>
          <div class="project-links">
            <a href="https://www.youtube.com/watch?v=K2Jqm8zCsDo" target="_blank" class="demo-link">
              <i class="fab fa-youtube"></i> Watch Demo
            </a>
          </div>
        </div>
      </div>

      <div class="project-showcase">
        <div class="project-image">
          <i class="fas fa-golf-ball"></i>
        </div>
        <div class="project-content">
          <h4>Smart Caddy Robot</h4>
          <div class="project-timeline">Jan. 2021 – Nov. 2021</div>
          <p>Developed obstacle avoidance system for mapless navigation using deep reinforcement learning and active filtering.</p>
          <div class="project-keywords">
            <span class="keyword">Mapless Navigation</span>
            <span class="keyword">Deep RL</span>
            <span class="keyword">Obstacle Avoidance</span>
            <span class="keyword">STM32</span>
          </div>
          <div class="project-links">
            <a href="https://youtu.be/uAqilEhrqzE" target="_blank" class="demo-link">
              <i class="fab fa-youtube"></i> Watch Demo
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

</div>

<style>
/* Reset and Base */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

:root {
  --primary-blue: #2c3e50;
  --secondary-blue: #3498db;
  --accent-blue: #5dade2;
  --light-blue: #ebf3fd;
  --success-green: #27ae60;
  --warning-orange: #f39c12;
  --error-red: #e74c3c;
  --dark-text: #2c3e50;
  --medium-text: #5d6d7e;
  --light-text: #85929e;
  --border-light: #ecf0f1;
  --background: #ffffff;
  --section-bg: #fafbfc;
  --shadow-sm: 0 2px 4px rgba(0, 0, 0, 0.05);
  --shadow-md: 0 4px 6px rgba(0, 0, 0, 0.1);
  --shadow-lg: 0 10px 15px rgba(0, 0, 0, 0.1);
  --border-radius: 12px;
  --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

html {
  scroll-behavior: smooth;
  font-size: 16px;
}

body {
  font-family: 'Inter', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  line-height: 1.6;
  color: var(--dark-text);
  background-color: var(--section-bg);
}

/* Hero Section */
.hero-section {
  background: linear-gradient(135deg, var(--primary-blue) 0%, var(--secondary-blue) 100%);
  color: white;
  padding: 4rem 0;
  text-align: center;
  margin-bottom: 2rem;
}

.hero-content {
  max-width: 800px;
  margin: 0 auto;
  padding: 0 2rem;
}

.profile-avatar {
  width: 120px;
  height: 120px;
  background: rgba(255, 255, 255, 0.2);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 2rem;
  backdrop-filter: blur(10px);
  border: 3px solid rgba(255, 255, 255, 0.3);
}

.profile-avatar i {
  font-size: 3rem;
  color: white;
}

.hero-title {
  font-size: 3rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
  letter-spacing: -0.02em;
}

.hero-subtitle {
  font-size: 1.25rem;
  opacity: 0.9;
  margin-bottom: 2rem;
  font-weight: 300;
}

.hero-contact {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

.contact-btn {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1.5rem;
  background: rgba(255, 255, 255, 0.2);
  color: white;
  text-decoration: none;
  border-radius: 50px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.3);
  transition: var(--transition);
  font-weight: 500;
}

.contact-btn:hover {
  background: rgba(255, 255, 255, 0.3);
  transform: translateY(-2px);
  color: white;
}

/* Navigation */
.cv-nav {
  position: sticky;
  top: 0;
  background: var(--background);
  border-bottom: 1px solid var(--border-light);
  padding: 1rem 0;
  margin-bottom: 2rem;
  z-index: 100;
  box-shadow: var(--shadow-sm);
}

.nav-container {
  max-width: 800px;
  margin: 0 auto;
  display: flex;
  justify-content: center;
  gap: 0.5rem;
  flex-wrap: wrap;
  padding: 0 2rem;
}

.nav-item {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1rem;
  color: var(--medium-text);
  text-decoration: none;
  border-radius: var(--border-radius);
  transition: var(--transition);
  font-weight: 500;
  font-size: 0.9rem;
}

.nav-item:hover,
.nav-item.active {
  color: var(--secondary-blue);
  background: var(--light-blue);
}

/* Container */
.cv-container {
  max-width: 900px;
  margin: 0 auto;
  padding: 0 2rem;
}

/* Section Styles */
.cv-section {
  background: var(--background);
  padding: 3rem;
  margin-bottom: 2rem;
  border-radius: var(--border-radius);
  box-shadow: var(--shadow-sm);
}

.cv-section h2 {
  display: flex;
  align-items: center;
  gap: 1rem;
  font-size: 2rem;
  font-weight: 700;
  color: var(--primary-blue);
  margin-bottom: 2.5rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid var(--border-light);
}

.cv-section h2 i {
  color: var(--secondary-blue);
}

/* Experience Styles */
.experience-group {
  margin-bottom: 3rem;
}

.company-header {
  display: flex;
  align-items: center;
  gap: 1rem;
  margin-bottom: 2rem;
  padding: 1.5rem;
  background: var(--light-blue);
  border-radius: var(--border-radius);
  border-left: 4px solid var(--secondary-blue);
}

.company-header h3 {
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--primary-blue);
  margin: 0;
}

.company-link {
  color: var(--secondary-blue);
  font-size: 1rem;
}

.position-title {
  background: var(--secondary-blue);
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 50px;
  font-size: 0.85rem;
  font-weight: 600;
}

.company-name {
  color: var(--medium-text);
  font-style: italic;
  margin-left: auto;
}

.project-card {
  background: var(--background);
  border: 1px solid var(--border-light);
  border-radius: var(--border-radius);
  padding: 2rem;
  margin-bottom: 1.5rem;
  transition: var(--transition);
}

.project-card:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

.project-card.current {
  border-left: 4px solid var(--success-green);
  background: linear-gradient(135deg, rgba(39, 174, 96, 0.05) 0%, rgba(39, 174, 96, 0.02) 100%);
}

.project-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 1rem;
  flex-wrap: wrap;
  gap: 1rem;
}

.project-header h4 {
  font-size: 1.25rem;
  font-weight: 600;
  color: var(--primary-blue);
  margin: 0;
}

.project-period {
  background: var(--border-light);
  color: var(--medium-text);
  padding: 0.5rem 1rem;
  border-radius: 50px;
  font-size: 0.85rem;
  font-weight: 500;
  white-space: nowrap;
}

.project-description {
  margin-bottom: 1.5rem;
}

.project-description p {
  color: var(--medium-text);
  font-size: 1rem;
  line-height: 1.6;
}

.project-focus ul {
  list-style: none;
  padding-left: 0;
}

.project-focus li {
  position: relative;
  padding-left: 1.5rem;
  margin-bottom: 0.5rem;
  color: var(--medium-text);
}

.project-focus li::before {
  content: '→';
  position: absolute;
  left: 0;
  color: var(--secondary-blue);
  font-weight: bold;
}

.tech-stack {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-top: 1.5rem;
  padding-top: 1.5rem;
  border-top: 1px solid var(--border-light);
}

.tech-tag {
  background: linear-gradient(135deg, var(--secondary-blue), var(--accent-blue));
  color: white;
  padding: 0.4rem 0.8rem;
  border-radius: 20px;
  font-size: 0.8rem;
  font-weight: 500;
}

.special-project {
  background: linear-gradient(135deg, rgba(231, 76, 60, 0.05) 0%, rgba(231, 76, 60, 0.02) 100%);
  border: 1px solid rgba(231, 76, 60, 0.2);
  border-radius: var(--border-radius);
  padding: 1.5rem;
  margin-top: 1.5rem;
}

.special-project h5 {
  color: var(--error-red);
  margin-bottom: 0.5rem;
  font-weight: 600;
}

.special-project h5 i {
  margin-right: 0.5rem;
}

.experience-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-top: 2rem;
}

.experience-item {
  background: var(--background);
  border: 1px solid var(--border-light);
  border-radius: var(--border-radius);
  padding: 2rem;
  transition: var(--transition);
}

.experience-item:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

.experience-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1rem;
  flex-wrap: wrap;
  gap: 1rem;
}

.experience-header h4 {
  font-size: 1.1rem;
  font-weight: 600;
  color: var(--primary-blue);
  margin: 0;
}

.experience-period {
  background: var(--border-light);
  color: var(--medium-text);
  padding: 0.4rem 0.8rem;
  border-radius: 50px;
  font-size: 0.8rem;
  font-weight: 500;
}

.experience-company {
  margin-bottom: 1rem;
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.experience-company a {
  color: var(--secondary-blue);
}

/* Education Styles */
.education-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
}

.education-card {
  display: flex;
  gap: 1.5rem;
  background: var(--background);
  border: 1px solid var(--border-light);
  border-radius: var(--border-radius);
  padding: 2rem;
  transition: var(--transition);
}

.education-card:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

.degree-icon {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.degree-icon.masters {
  background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
}

.degree-icon.bachelors {
  background: linear-gradient(135deg, var(--warning-orange), #f8c471);
}

.degree-icon i {
  font-size: 2rem;
  color: white;
}

.education-content h3 {
  font-size: 1.25rem;
  font-weight: 600;
  color: var(--primary-blue);
  margin-bottom: 1rem;
}

.university {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  margin-bottom: 0.5rem;
}

.university a {
  color: var(--secondary-blue);
}

.education-period {
  color: var(--medium-text);
  font-size: 0.95rem;
  margin-bottom: 1rem;
}

.thesis, .program {
  color: var(--medium-text);
  font-size: 0.95rem;
  line-height: 1.5;
}

/* Skills Styles */
.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.skill-category {
  background: var(--background);
  border: 1px solid var(--border-light);
  border-radius: var(--border-radius);
  padding: 2rem;
  text-align: center;
  transition: var(--transition);
}

.skill-category:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-5px);
}

.skill-icon {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 1.5rem;
}

.skill-icon.programming {
  background: linear-gradient(135deg, #667eea, #764ba2);
}

.skill-icon.robotics {
  background: linear-gradient(135deg, var(--secondary-blue), var(--accent-blue));
}

.skill-icon.ai {
  background: linear-gradient(135deg, #ff6b6b, #feca57);
}

.skill-icon.database {
  background: linear-gradient(135deg, var(--success-green), #58d68d);
}

.skill-icon.hardware {
  background: linear-gradient(135deg, var(--warning-orange), #f8c471);
}

.skill-icon.specialized {
  background: linear-gradient(135deg, #9b59b6, #bb6bd9);
}

.skill-icon i {
  font-size: 2rem;
  color: white;
}

.skill-category h3 {
  font-size: 1.2rem;
  font-weight: 600;
  color: var(--primary-blue);
  margin-bottom: 1.5rem;
}

.skill-items {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  justify-content: center;
}

.skill-item {
  padding: 0.5rem 1rem;
  border-radius: 20px;
  font-size: 0.85rem;
  font-weight: 500;
  border: 1px solid var(--border-light);
  background: var(--background);
  transition: var(--transition);
}

.skill-item.expert {
  background: linear-gradient(135deg, var(--success-green), #58d68d);
  color: white;
  border-color: var(--success-green);
}

.skill-item.advanced {
  background: linear-gradient(135deg, var(--secondary-blue), var(--accent-blue));
  color: white;
  border-color: var(--secondary-blue);
}

.skill-item.intermediate {
  background: var(--border-light);
  color: var(--medium-text);
}

/* Publications Styles */
.publications-list {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.publication-item {
  background: var(--background);
  border: 1px solid var(--border-light);
  border-left: 4px solid var(--secondary-blue);
  border-radius: var(--border-radius);
  padding: 2rem;
  transition: var(--transition);
}

.publication-item:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

.publication-journal {
  background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 20px;
  font-size: 0.85rem;
  font-weight: 600;
  display: inline-block;
  margin-bottom: 1rem;
}

.publication-item h4 {
  font-size: 1.2rem;
  font-weight: 600;
  color: var(--primary-blue);
  margin-bottom: 1rem;
  line-height: 1.4;
}

.publication-authors {
  color: var(--medium-text);
  margin-bottom: 1rem;
}

.publication-authors strong {
  color: var(--primary-blue);
}

.publication-details {
  display: flex;
  gap: 1rem;
  flex-wrap: wrap;
}

.publication-status,
.publication-doi,
.publication-volume {
  background: var(--border-light);
  color: var(--medium-text);
  padding: 0.4rem 0.8rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: 500;
}

/* Awards Styles */
.awards-timeline {
  position: relative;
}

.awards-timeline::before {
  content: '';
  position: absolute;
  left: 2rem;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(to bottom, var(--secondary-blue), var(--accent-blue));
}

.award-item {
  display: flex;
  gap: 2rem;
  margin-bottom: 2.5rem;
  position: relative;
}

.award-icon {
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  position: relative;
  z-index: 1;
}

.award-item.grand-prize .award-icon {
  background: linear-gradient(135deg, var(--warning-orange), #f8c471);
}

.award-item.first-place .award-icon {
  background: linear-gradient(135deg, #f1c40f, #f39c12);
}

.award-item.second-place .award-icon {
  background: linear-gradient(135deg, #bdc3c7, #95a5a6);
}

.award-item.third-place .award-icon {
  background: linear-gradient(135deg, #cd853f, #d2b48c);
}

.award-icon i {
  font-size: 1.5rem;
  color: white;
}

.award-content {
  background: var(--background);
  border: 1px solid var(--border-light);
  border-radius: var(--border-radius);
  padding: 1.5rem;
  flex: 1;
  transition: var(--transition);
}

.award-content:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

.award-rank {
  background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
  color: white;
  padding: 0.4rem 1rem;
  border-radius: 15px;
  font-size: 0.85rem;
  font-weight: 600;
  display: inline-block;
  margin-bottom: 0.5rem;
}

.award-content h4 {
  font-size: 1.1rem;
  font-weight: 600;
  color: var(--primary-blue);
  margin-bottom: 0.5rem;
}

.award-organization {
  color: var(--medium-text);
  font-size: 0.95rem;
  margin-bottom: 0.5rem;
}

.award-date {
  color: var(--light-text);
  font-size: 0.9rem;
  font-weight: 500;
}

/* Projects Styles */
.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
}

.project-showcase {
  background: var(--background);
  border: 1px solid var(--border-light);
  border-radius: var(--border-radius);
  overflow: hidden;
  transition: var(--transition);
}

.project-showcase:hover {
  box-shadow: var(--shadow-lg);
  transform: translateY(-5px);
}

.project-image {
  background: linear-gradient(135deg, var(--primary-blue), var(--secondary-blue));
  height: 120px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.project-image i {
  font-size: 3rem;
  color: white;
}

.project-content {
  padding: 2rem;
}

.project-content h4 {
  font-size: 1.3rem;
  font-weight: 600;
  color: var(--primary-blue);
  margin-bottom: 0.5rem;
}

.project-timeline {
  color: var(--medium-text);
  font-size: 0.9rem;
  margin-bottom: 1rem;
}

.project-content p {
  color: var(--medium-text);
  line-height: 1.6;
  margin-bottom: 1.5rem;
}

.project-keywords {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1.5rem;
}

.keyword {
  background: var(--light-blue);
  color: var(--secondary-blue);
  padding: 0.4rem 0.8rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: 500;
}

.project-links {
  padding-top: 1rem;
  border-top: 1px solid var(--border-light);
}

.demo-link {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  color: var(--error-red);
  text-decoration: none;
  font-weight: 500;
  transition: var(--transition);
}

.demo-link:hover {
  color: #c0392b;
}

/* Responsive Design */
@media (max-width: 768px) {
  .hero-title {
    font-size: 2rem;
  }
  
  .hero-subtitle {
    font-size: 1.1rem;
  }
  
  .cv-section {
    padding: 2rem 1.5rem;
  }
  
  .cv-container {
    padding: 0 1rem;
  }
  
  .nav-container {
    padding: 0 1rem;
  }
  
  .company-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 1rem;
  }
  
  .project-header {
    flex-direction: column;
    align-items: flex-start;
  }
  
  .experience-header {
    flex-direction: column;
    align-items: flex-start;
  }
  
  .award-item {
    flex-direction: column;
    gap: 1rem;
  }
  
  .awards-timeline::before {
    display: none;
  }
  
  .education-card {
    flex-direction: column;
    text-align: center;
  }
}

@media (max-width: 480px) {
  .hero-content {
    padding: 0 1rem;
  }
  
  .profile-avatar {
    width: 100px;
    height: 100px;
  }
  
  .profile-avatar i {
    font-size: 2.5rem;
  }
  
  .hero-contact {
    flex-direction: column;
  }
  
  .nav-container {
    gap: 0.25rem;
  }
  
  .nav-item {
    padding: 0.5rem 0.75rem;
    font-size: 0.85rem;
  }
  
  .nav-item span {
    display: none;
  }
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  // Smooth scrolling navigation
  const navLinks = document.querySelectorAll('.nav-item');
  const sections = document.querySelectorAll('.cv-section');

  // Navigation click handlers
  navLinks.forEach(link => {
    link.addEventListener('click', function(e) {
      e.preventDefault();
      const targetId = this.getAttribute('href').substring(1);
      const targetSection = document.getElementById(targetId);
      
      if (targetSection) {
        const offsetTop = targetSection.offsetTop - 100;
        window.scrollTo({
          top: offsetTop,
          behavior: 'smooth'
        });
      }
    });
  });

  // Active navigation highlighting
  function updateActiveNav() {
    const scrollPosition = window.scrollY + 150;
    
    sections.forEach((section, index) => {
      const sectionTop = section.offsetTop;
      const sectionBottom = sectionTop + section.offsetHeight;
      const sectionId = section.getAttribute('id');
      const correspondingNavLink = document.querySelector(`a[href="#${sectionId}"]`);
      
      if (scrollPosition >= sectionTop && scrollPosition < sectionBottom) {
        navLinks.forEach(link => link.classList.remove('active'));
        if (correspondingNavLink) {
          correspondingNavLink.classList.add('active');
        }
      }
    });
  }

  // Scroll event listener for active nav
  window.addEventListener('scroll', updateActiveNav);
  
  // Initial call
  updateActiveNav();

  // Intersection Observer for animations
  const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
  };

  const observer = new IntersectionObserver(function(entries) {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.style.opacity = '1';
        entry.target.style.transform = 'translateY(0)';
      }
    });
  }, observerOptions);

  // Observe all animated elements
  const animatedElements = document.querySelectorAll('.project-card, .education-card, .skill-category, .publication-item, .award-item, .project-showcase');
  animatedElements.forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(30px)';
    el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    observer.observe(el);
  });
});
</script>