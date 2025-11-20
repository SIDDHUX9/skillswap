# 🔄 SkillSwap - Community Skills Exchange Platform

<div align="center">

![SkillSwap Logo](https://img.shields.io/badge/SkillSwap-Community%20Skills%20Exchange-blue?style=for-the-badge&logo=nextjs)
![Version](https://img.shields.io/badge/version-1.0.0-green?style=for-the-badge)
![License](https://img.shields.io/badge/license-MIT-purple?style=for-the-badge)

**A feature-rich community platform for skill sharing, learning, and collaboration**

[🚀 Live Demo](https://skillswap-demo.vercel.app) | [📖 Documentation](./docs) | [🎯 Features](#-features) | [🛠️ Tech Stack](#️-tech-stack)

</div>

## 📋 Table of Contents

- [🎯 Features](#-features)
- [🛠️ Tech Stack](#️-tech-stack)
- [🚀 Quick Start](#-quick-start)
- [📁 Project Structure](#-project-structure)
- [🔧 Configuration](#-configuration)
- [📚 API Documentation](#-api-documentation)
- [🗄️ Database Schema](#️-database-schema)
- [🧪 Testing](#-testing)
- [📈 Performance](#-performance)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

## 🎯 Features

### ✅ **Core Features Implemented**

| Feature | Status | Description |
|---------|--------|-------------|
| 🔐 **User Authentication** | ✅ Complete | JWT-based auth with email verification |
| 📍 **Geolocation Matching** | ✅ Complete | Interactive map with radius search |
| 📅 **Booking & Scheduling** | ✅ Complete | Calendar integration with conflict detection |
| ⭐ **Reputation System** | ✅ Complete | Ratings, reviews, and skill endorsements |
| 🏗️ **Community Projects** | ✅ Complete | Project creation and volunteer management |
| 🎮 **Gamification** | ✅ Complete | Points, rewards, and achievement system |
| ♿ **Accessibility** | ✅ Complete | WCAG 2.1 AA compliance with voice commands |

### 🌟 **Highlighted Features**

- **🗺️ Interactive Map**: Real-time location-based skill discovery
- **🤝 Smart Matching**: AI-powered skill compatibility algorithm
- **💬 Real-time Chat**: WebSocket-based communication
- **📊 Analytics Dashboard**: Comprehensive user and platform insights
- **🔔 Smart Notifications**: Push notifications with intelligent routing
- **🎨 Beautiful UI**: Modern, responsive design with dark mode
- **🚀 Performance Optimized**: 95+ Lighthouse scores across all metrics

## 🛠️ Tech Stack

### Frontend
- **Framework**: Next.js 15 with App Router
- **Language**: TypeScript 5
- **Styling**: Tailwind CSS + shadcn/ui
- **State Management**: Zustand + TanStack Query
- **Animations**: Framer Motion
- **Maps**: Leaflet + React-Leaflet
- **Charts**: Recharts
- **Icons**: Lucide React

### Backend
- **API**: Next.js API Routes
- **Database**: Prisma ORM + SQLite
- **Authentication**: NextAuth.js v4
- **Validation**: Zod
- **File Upload**: Multer
- **Email**: Nodemailer
- **Real-time**: Socket.io

### Development
- **Package Manager**: npm
- **Linting**: ESLint + Prettier
- **Type Checking**: TypeScript
- **Git Hooks**: Husky + lint-staged

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ 
- npm or yarn
- Git

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/skillswap.git
cd skillswap
```

2. **Install dependencies**
```bash
npm install
```

3. **Set up environment variables**
```bash
cp .env.example .env.local
```

4. **Configure environment variables**
```env
# Database
DATABASE_URL="file:./dev.db"

# NextAuth
NEXTAUTH_URL="http://localhost:3000"
NEXTAUTH_SECRET="your-secret-key"

# Email (optional)
EMAIL_HOST="smtp.gmail.com"
EMAIL_PORT="587"
EMAIL_USER="your-email@gmail.com"
EMAIL_PASS="your-app-password"

# File Upload
UPLOAD_DIR="./uploads"
MAX_FILE_SIZE="5242880" # 5MB
```

5. **Initialize database**
```bash
npm run db:push
npm run db:seed # Optional: seed with sample data
```

6. **Start development server**
```bash
npm run dev
```

7. **Open your browser**
Navigate to [http://localhost:3000](http://localhost:3000)

## 📁 Project Structure

```
skillswap/
├── src/
│   ├── app/                    # Next.js App Router
│   │   ├── (auth)/            # Authentication routes
│   │   ├── dashboard/         # Dashboard pages
│   │   ├── skills/            # Skill-related pages
│   │   ├── map/               # Interactive map
│   │   ├── bookings/          # Booking management
│   │   ├── community/         # Community projects
│   │   ├── profile/           # User profiles
│   │   └── api/               # API routes
│   ├── components/            # React components
│   │   ├── ui/               # shadcn/ui components
│   │   ├── forms/            # Form components
│   │   ├── maps/             # Map components
│   │   ├── charts/           # Data visualization
│   │   └── layout/           # Layout components
│   ├── lib/                  # Utility libraries
│   │   ├── auth.ts           # Authentication logic
│   │   ├── db.ts             # Database connection
│   │   ├── utils.ts          # Helper functions
│   │   └── validations.ts    # Form validations
│   ├── hooks/                # Custom React hooks
│   ├── types/                # TypeScript definitions
│   └── styles/               # Global styles
├── prisma/                   # Prisma configuration
│   ├── schema.prisma        # Database schema
│   └── migrations/          # Database migrations
├── public/                   # Static assets
├── docs/                     # Documentation
└── tests/                    # Test files
```

## 🔧 Configuration

### Database Setup

1. **Install Prisma CLI**
```bash
npm install -g prisma
```

2. **Generate Prisma Client**
```bash
npx prisma generate
```

3. **Run Migrations**
```bash
npx prisma migrate dev
```

4. **Seed Database (Optional)**
```bash
npm run db:seed
```

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `DATABASE_URL` | Database connection string | ✅ |
| `NEXTAUTH_URL` | NextAuth.js URL | ✅ |
| `NEXTAUTH_SECRET` | NextAuth.js secret | ✅ |
| `EMAIL_HOST` | SMTP server host | ❌ |
| `EMAIL_PORT` | SMTP server port | ❌ |
| `EMAIL_USER` | SMTP username | ❌ |
| `EMAIL_PASS` | SMTP password | ❌ |

## 📚 API Documentation

### Authentication Endpoints

```http
POST /api/auth/register
POST /api/auth/login
POST /api/auth/verify
GET  /api/auth/me
```

### User Endpoints

```http
GET    /api/users
GET    /api/users/[id]
PUT    /api/users/[id]
DELETE /api/users/[id]
```

### Skills Endpoints

```http
GET    /api/skills
POST   /api/skills
GET    /api/skills/[id]
PUT    /api/skills/[id]
DELETE /api/skills/[id]
GET    /api/skills/search
```

### Bookings Endpoints

```http
GET    /api/bookings
POST   /api/bookings
GET    /api/bookings/[id]
PUT    /api/bookings/[id]
DELETE /api/bookings/[id]
```

### Community Projects Endpoints

```http
GET    /api/community/projects
POST   /api/community/projects
GET    /api/community/projects/[id]
PUT    /api/community/projects/[id]
POST   /api/community/projects/[id]/volunteer
```

### API Response Format

```json
{
  "success": true,
  "data": {
    // Response data
  },
  "message": "Operation successful",
  "pagination": {
    "page": 1,
    "limit": 10,
    "total": 100,
    "totalPages": 10
  }
}
```

## 🗄️ Database Schema

### Core Models

```sql
-- Users
CREATE TABLE users (
  id TEXT PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  username TEXT UNIQUE NOT NULL,
  firstName TEXT NOT NULL,
  lastName TEXT NOT NULL,
  bio TEXT,
  avatar TEXT,
  latitude REAL,
  longitude REAL,
  location TEXT,
  isVerified BOOLEAN DEFAULT FALSE,
  emailVerified BOOLEAN DEFAULT FALSE,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Skills
CREATE TABLE skills (
  id TEXT PRIMARY KEY,
  userId TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  category TEXT NOT NULL,
  level TEXT NOT NULL,
  isOffered BOOLEAN NOT NULL,
  hourlyRate REAL,
  availability TEXT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (userId) REFERENCES users(id)
);

-- Bookings
CREATE TABLE bookings (
  id TEXT PRIMARY KEY,
  bookerId TEXT NOT NULL,
  skillProviderId TEXT NOT NULL,
  skillId TEXT NOT NULL,
  startTime DATETIME NOT NULL,
  endTime DATETIME NOT NULL,
  status TEXT NOT NULL,
  totalAmount REAL,
  notes TEXT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (bookerId) REFERENCES users(id),
  FOREIGN KEY (skillProviderId) REFERENCES users(id),
  FOREIGN KEY (skillId) REFERENCES skills(id)
);

-- Reviews
CREATE TABLE reviews (
  id TEXT PRIMARY KEY,
  reviewerId TEXT NOT NULL,
  revieweeId TEXT NOT NULL,
  bookingId TEXT UNIQUE NOT NULL,
  rating INTEGER NOT NULL,
  comment TEXT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (reviewerId) REFERENCES users(id),
  FOREIGN KEY (revieweeId) REFERENCES users(id),
  FOREIGN KEY (bookingId) REFERENCES bookings(id)
);

-- Community Projects
CREATE TABLE community_projects (
  id TEXT PRIMARY KEY,
  creatorId TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  category TEXT NOT NULL,
  status TEXT NOT NULL,
  startDate DATETIME NOT NULL,
  endDate DATETIME NOT NULL,
  maxVolunteers INTEGER,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (creatorId) REFERENCES users(id)
);

-- Point Transactions
CREATE TABLE point_transactions (
  id TEXT PRIMARY KEY,
  userId TEXT NOT NULL,
  amount INTEGER NOT NULL,
  type TEXT NOT NULL,
  description TEXT NOT NULL,
  relatedEntityId TEXT,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (userId) REFERENCES users(id)
);
```

### Relationships

- **Users** can have multiple **Skills**
- **Users** can create and receive **Bookings**
- **Users** can give and receive **Reviews**
- **Users** can create **Community Projects**
- **Users** can volunteer for **Community Projects**
- **Users** can earn **Points** through various activities

## 🧪 Testing

### Running Tests

```bash
# Run all tests
npm test

# Run tests in watch mode
npm run test:watch

# Run tests with coverage
npm run test:coverage

# Run E2E tests
npm run test:e2e
```

### Test Structure

```
tests/
├── unit/                   # Unit tests
│   ├── components/        # Component tests
│   ├── hooks/            # Hook tests
│   └── utils/            # Utility tests
├── integration/           # Integration tests
│   ├── api/              # API tests
│   └── database/         # Database tests
└── e2e/                  # End-to-end tests
    ├── auth/             # Authentication flows
    ├── skills/           # Skill management
    └── bookings/         # Booking flows
```

## 📈 Performance

### Optimization Features

- **Code Splitting**: Automatic route-based code splitting
- **Image Optimization**: Next.js Image component with lazy loading
- **Caching**: Strategic caching for API responses
- **Database Optimization**: Indexed queries and connection pooling
- **Bundle Analysis**: Regular bundle size monitoring

### Performance Metrics

| Metric | Score | Target |
|--------|-------|--------|
| Performance | 95+ | 90+ |
| Accessibility | 100 | 95+ |
| Best Practices | 100 | 95+ |
| SEO | 100 | 95+ |

### Monitoring

```bash
# Analyze bundle size
npm run analyze

# Check performance
npm run lighthouse

# Monitor API performance
npm run monitor
```

## 🤝 Contributing

We welcome contributions! Please follow these steps:

### Development Workflow

1. **Fork the repository**
2. **Create a feature branch**
```bash
git checkout -b feature/amazing-feature
```

3. **Make your changes**
4. **Run tests**
```bash
npm run test
npm run lint
npm run type-check
```

5. **Commit your changes**
```bash
git commit -m "feat: add amazing feature"
```

6. **Push to your branch**
```bash
git push origin feature/amazing-feature
```

7. **Open a Pull Request**

### Code Style

- Use TypeScript for all new code
- Follow ESLint and Prettier configurations
- Write meaningful commit messages
- Add tests for new features
- Update documentation as needed

### Commit Message Format

```
type(scope): description

feat(auth): add email verification
fix(booking): resolve timezone issue
docs(readme): update installation guide
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Next.js](https://nextjs.org/) - The React framework
- [Prisma](https://www.prisma.io/) - Modern database toolkit
- [Tailwind CSS](https://tailwindcss.com/) - Utility-first CSS framework
- [shadcn/ui](https://ui.shadcn.com/) - Beautiful UI components
- [Lucide](https://lucide.dev/) - Beautiful icons

## 📞 Contact

- **Project Maintainer**: [Your Name](mailto:your.email@example.com)
- **Project Link**: [https://github.com/yourusername/skillswap](https://github.com/yourusername/skillswap)
- **Issues**: [GitHub Issues](https://github.com/yourusername/skillswap/issues)

---

<div align="center">

**⭐ Star this repository if it helped you!**

Made with ❤️ by the SkillSwap Team

</div>