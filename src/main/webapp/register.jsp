<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Student - Online Examination System</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <script src="https://cdn.tailwindcss.com"></script>

    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Poppins', 'sans-serif'],
                    },
                    colors: {
                        brandDark: '#1e3c72',
                        brandBlue: '#2a5298',
                        accentBlue: '#4facfe',
                        accentCyan: '#00f2fe',
                        customYellow: '#ffc107',
                        customYellowHover: '#ffca2c'
                    }
                }
            }
        }
    </script>

    <style>
        /* Custom Animation for floating shapes */
        @keyframes float {
            0%, 100% { transform: translateY(0) scale(1); }
            50% { transform: translateY(-20px) scale(1.05); }
        }
        .animate-float {
            animation: float 7s ease-in-out infinite;
        }
        .animation-delay-2000 {
            animation-delay: 2s;
        }
        /* Styling the select options for dark mode */
        select option {
            background-color: #1e3c72;
            color: white;
        }
    </style>
</head>

<body class="bg-gradient-to-br from-brandDark to-brandBlue min-h-screen flex items-center justify-center relative overflow-hidden text-white font-sans">

    <div class="absolute top-[-10%] left-[-10%] w-96 h-96 bg-accentBlue rounded-full mix-blend-screen filter blur-[60px] opacity-50 animate-float"></div>
    <div class="absolute bottom-[-10%] right-[-5%] w-[500px] h-[500px] bg-accentCyan rounded-full mix-blend-screen filter blur-[60px] opacity-50 animate-float animation-delay-2000"></div>

    <div class="relative z-10 w-full max-w-md mx-4 p-8 bg-white/10 backdrop-blur-xl border border-white/20 rounded-3xl shadow-2xl mt-8 mb-8">

        <div class="text-center mb-8">
            <div class="w-16 h-16 bg-white/10 flex items-center justify-center rounded-full mx-auto mb-4 border border-white/20">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-accentCyan" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z" />
                </svg>
            </div>
            <h2 class="text-2xl font-bold tracking-wide">Student Registration</h2>
            <p class="text-sm text-gray-300 mt-2">Create your account to start taking exams</p>
        </div>

        <form action="registerStudent" method="post" class="space-y-5">

            <div>
                <label for="full_name" class="block text-sm font-medium text-gray-200 mb-2">Full Name</label>
                <div class="relative">
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <svg class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                        </svg>
                    </div>
                    <input type="text" name="full_name" id="full_name" required
                        class="w-full pl-10 pr-4 py-3 bg-white/5 border border-white/10 rounded-xl focus:outline-none focus:ring-2 focus:ring-accentBlue focus:border-transparent text-white placeholder-gray-400 transition-all"
                        placeholder="e.g. John Doe">
                </div>
            </div>

            <div>
                <label for="email" class="block text-sm font-medium text-gray-200 mb-2">Email Address</label>
                <div class="relative">
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <svg class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                        </svg>
                    </div>
                    <input type="email" name="email" id="email" required
                        class="w-full pl-10 pr-4 py-3 bg-white/5 border border-white/10 rounded-xl focus:outline-none focus:ring-2 focus:ring-accentBlue focus:border-transparent text-white placeholder-gray-400 transition-all"
                        placeholder="student@example.com">
                </div>
            </div>

            <div>
                <label for="program" class="block text-sm font-medium text-gray-200 mb-2">Enrolled Program</label>
                <div class="relative">
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <svg class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
                        </svg>
                    </div>
                    <select name="program" id="program" required
                        class="w-full pl-10 pr-4 py-3 bg-white/5 border border-white/10 rounded-xl focus:outline-none focus:ring-2 focus:ring-accentBlue focus:border-transparent text-white appearance-none transition-all cursor-pointer">
                        <option value="" disabled selected class="text-gray-400">Select your program...</option>
                        <option value="IT">Information Technology (IT)</option>
                        <option value="BM">Business Management (BM)</option>
                    </select>
                    <div class="absolute inset-y-0 right-0 flex items-center px-4 pointer-events-none">
                        <svg class="h-4 w-4 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                        </svg>
                    </div>
                </div>
            </div>

            <button type="submit"
                class="w-full py-3 mt-6 bg-customYellow hover:bg-customYellowHover text-gray-900 font-bold rounded-full transition-transform duration-300 hover:scale-[1.02] shadow-lg">
                Register
            </button>
        </form>

        <div class="mt-6 text-center text-sm text-gray-300 space-y-2">
            <p>Already have an account? <a href="login.jsp" class="text-accentCyan hover:text-white transition-colors font-medium hover:underline">Login here</a></p>
            <p><a href="index.jsp" class="text-gray-400 hover:text-white transition-colors">&larr; Back to Home</a></p>
        </div>

    </div>

</body>
</html>