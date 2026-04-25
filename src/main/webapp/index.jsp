<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Examination System</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
            overflow-x: hidden;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Glassmorphism Navbar */
        .glass-nav {
            background: rgba(33, 37, 41, 0.85) !important;
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            transition: all 0.3s ease-in-out;
            padding: 15px 0;
        }

        /* Navbar Cool Hover Effects */
        .custom-nav-links .nav-item {
            margin: 0 10px;
        }

        .custom-nav-links .nav-link {
            color: rgba(255, 255, 255, 0.8) !important;
            font-weight: 500;
            position: relative;
            padding-bottom: 5px;
            transition: color 0.3s ease;
        }

        .custom-nav-links .nav-link:hover,
        .custom-nav-links .nav-link.active {
            color: #ffffff !important;
        }

        /* The animated underline */
        .custom-nav-links .nav-link::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: 0;
            left: 50%;
            background-color: #4facfe;
            transition: all 0.3s ease;
            transform: translateX(-50%);
        }

        .custom-nav-links .nav-link:hover::after,
        .custom-nav-links .nav-link.active::after {
            width: 100%;
        }

        /* Hero Section with Animated Gradient Background */
        .hero {
            position: relative;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            overflow: hidden;
            color: white;
        }

        /* Floating Background Shapes */
        .shape {
            position: absolute;
            filter: blur(60px);
            z-index: 0;
            opacity: 0.5;
            animation: float 8s ease-in-out infinite;
        }
        .shape-1 {
            top: -10%; left: -10%; width: 400px; height: 400px;
            background: #4facfe; border-radius: 50%;
        }
        .shape-2 {
            bottom: -10%; right: -5%; width: 500px; height: 500px;
            background: #00f2fe; border-radius: 50%;
            animation-delay: -4s;
        }

        .hero-content {
            z-index: 1;
        }

        /* Animations */
        @keyframes float {
            0%, 100% { transform: translateY(0) scale(1); }
            50% { transform: translateY(-30px) scale(1.05); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .animate-up {
            animation: fadeInUp 1s ease-out forwards;
            opacity: 0;
        }

        .delay-1 { animation-delay: 0.2s; }
        .delay-2 { animation-delay: 0.4s; }
        .delay-3 { animation-delay: 0.6s; }

        /* Feature Cards */
        .features-section {
            position: relative;
            margin-top: -60px;
            z-index: 10;
        }

        .feature-card {
            background: #ffffff;
            border-radius: 20px;
            border: none;
            transition: all 0.4s ease;
            height: 100%;
        }

        .feature-card:hover {
            transform: translateY(-15px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        .icon-box {
            width: 70px;
            height: 70px;
            background: rgba(79, 172, 254, 0.1);
            color: #4facfe;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            margin: 0 auto 20px auto;
            transition: all 0.3s ease;
        }

        .feature-card:hover .icon-box {
            background: #4facfe;
            color: white;
            transform: rotateY(180deg);
        }

        /* Buttons */
        .btn-custom-outline {
            border: 2px solid rgba(255, 255, 255, 0.8);
            color: white;
            border-radius: 30px;
            padding: 8px 25px;
            transition: 0.3s;
        }
        .btn-custom-outline:hover {
            background: white;
            color: #1e3c72;
        }

        .btn-custom-solid {
            background: #ffc107;
            color: #000;
            border-radius: 30px;
            padding: 8px 25px;
            font-weight: 600;
            border: none;
            transition: 0.3s;
        }
        .btn-custom-solid:hover {
            background: #ffca2c;
            transform: scale(1.05);
        }

        /* Footer Custom Styles */
        .footer-link {
            text-decoration: none;
            color: #adb5bd;
            transition: color 0.3s ease, padding-left 0.3s ease;
        }
        .footer-link:hover {
            color: #4facfe;
            padding-left: 5px;
        }
        .social-icon {
            display: inline-block;
            transition: transform 0.3s ease, color 0.3s ease;
        }
        .social-icon:hover {
            transform: translateY(-5px);
            color: #4facfe !important;
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark fixed-top glass-nav">
        <div class="container">
            <a class="navbar-brand fw-bold fs-4" href="#">
                <i class="bi bi-laptop me-2 text-info"></i>ExamSystem
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="navbar-nav me-auto ms-lg-4 custom-nav-links">
                    <li class="nav-item">
                        <a class="nav-link active" href="#home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#courses">Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact Us</a>
                    </li>
                </ul>

                <ul class="navbar-nav ms-auto align-items-center mt-3 mt-lg-0">
                    <li class="nav-item me-lg-3 mb-2 mb-lg-0">
                        <a href="login.jsp" class="btn btn-custom-outline w-100">Login</a>
                    </li>
                    <li class="nav-item">
                        <a href="register.jsp" class="btn btn-custom-solid w-100">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="home" class="hero">
        <div class="shape shape-1"></div>
        <div class="shape shape-2"></div>

        <div class="container text-center hero-content">
            <h1 class="display-3 fw-bold animate-up">Online Examination System</h1>
            <p class="lead mt-4 mb-5 animate-up delay-1 mx-auto" style="max-width: 700px;">
                Experience a seamless, smart, and secure way to manage examinations, track student progress, and generate comprehensive results.
            </p>
            <div class="animate-up delay-2">
                <a href="login.jsp" class="btn btn-light btn-lg rounded-pill px-5 py-3 fw-bold shadow-sm">
                    Student Login <i class="bi bi-arrow-right ms-2"></i>
                </a>
            </div>
        </div>
    </div>

    <div id="about" class="container features-section mb-5 pb-5">
        <div class="row g-4 text-center animate-up delay-3">

            <div class="col-md-4">
                <div class="card p-5 shadow-sm feature-card">
                    <div class="icon-box">
                        <i class="bi bi-book"></i>
                    </div>
                    <h4 class="fw-bold">Course Management</h4>
                    <p class="text-muted mt-3">Easily configure subjects, create modules, and organize examination schedules with our intuitive dashboard.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card p-5 shadow-sm feature-card">
                    <div class="icon-box">
                        <i class="bi bi-pencil-square"></i>
                    </div>
                    <h4 class="fw-bold">Secure Online Exams</h4>
                    <p class="text-muted mt-3">Conduct paperless exams digitally. Features auto-grading, timer management, and real-time monitoring.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card p-5 shadow-sm feature-card">
                    <div class="icon-box">
                        <i class="bi bi-bar-chart-line"></i>
                    </div>
                    <h4 class="fw-bold">Instant Results</h4>
                    <p class="text-muted mt-3">Automatically calculate and publish grades. View analytics and analyze student performance instantly.</p>
                </div>
            </div>

        </div>
    </div>

    <footer id="contact" class="bg-dark text-white pt-5 pb-3 mt-auto">
        <div class="container">
            <div class="row mb-4">
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <h5 class="fw-bold mb-3">
                        <i class="bi bi-laptop text-info me-2"></i>ExamSystem
                    </h5>
                    <p class="text-muted small pe-lg-4">
                        Empowering educational institutions with a secure, seamless, and smart online assessment platform designed for modern student management.
                    </p>
                </div>

                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <h5 class="fw-bold mb-3">Quick Links</h5>
                    <ul class="list-unstyled">
                        <li class="mb-2"><a href="#home" class="footer-link"><i class="bi bi-chevron-right me-1 small"></i> Home</a></li>
                        <li class="mb-2"><a href="#about" class="footer-link"><i class="bi bi-chevron-right me-1 small"></i> About Us</a></li>
                        <li class="mb-2"><a href="#courses" class="footer-link"><i class="bi bi-chevron-right me-1 small"></i> Courses</a></li>
                        <li class="mb-2"><a href="#contact" class="footer-link"><i class="bi bi-chevron-right me-1 small"></i> Contact</a></li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-12">
                    <h5 class="fw-bold mb-3">Connect With Us</h5>
                    <p class="text-muted small mb-2"><i class="bi bi-envelope me-2"></i> support@examsystem.edu</p>
                    <p class="text-muted small mb-3"><i class="bi bi-telephone me-2"></i> +1 (555) 123-4567</p>

                    <div class="d-flex gap-3 mt-3">
                        <a href="#" class="text-white fs-4 social-icon"><i class="bi bi-facebook"></i></a>
                        <a href="#" class="text-white fs-4 social-icon"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="text-white fs-4 social-icon"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="text-white fs-4 social-icon"><i class="bi bi-github"></i></a>
                    </div>
                </div>
            </div>

            <div class="row pt-4 border-top border-secondary">
                <div class="col-12 text-center">
                    <p class="mb-0 text-muted small">© 2026 Online Examination System | Developed for Student Management</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        document.querySelectorAll('.custom-nav-links .nav-link').forEach(link => {
            link.addEventListener('click', function() {
                document.querySelectorAll('.custom-nav-links .nav-link').forEach(l => l.classList.remove('active'));
                this.classList.add('active');
            });
        });
    </script>
</body>
</html>