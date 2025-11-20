# 🚀 Vercel Deployment Guide

## **Easiest Setup for Your Next.js App with Prisma**

### **Step 1: Install Vercel CLI**
```bash
npm i -g vercel
```

### **Step 2: Login to Vercel**
```bash
vercel login
```

### **Step 3: Set Up Database**
Since you're using SQLite, we'll use Vercel's file system for the database:

1. **Create a Vercel project:**
```bash
vercel
```

2. **Set up environment variables in Vercel dashboard:**
   - Go to your Vercel project dashboard
   - Settings → Environment Variables
   - Add these variables:

```
DATABASE_URL=file:./dev.db
NEXTAUTH_SECRET=your-secret-key-here
NEXTAUTH_URL=https://your-app.vercel.app
NEXT_PUBLIC_APP_URL=https://your-app.vercel.app
```

### **Step 4: Deploy to Vercel**
```bash
# Deploy to preview
vercel

# Deploy to production
vercel --prod
```

### **Step 5: Initialize Database**
After deployment, visit your app and trigger the database initialization:
- Visit: `https://your-app.vercel.app/api/seed-demo`
- This will create the database and seed demo data

## **Alternative: Netlify Deployment**

If you prefer Netlify, here's the setup:

### **Step 1: Install Netlify CLI**
```bash
npm i -g netlify-cli
```

### **Step 2: Update netlify.toml**
```toml
[build]
  command = "npm run build"
  publish = ".next"

[build.environment]
  NODE_VERSION = "18"

[[redirects]]
  from = "/api/*"
  to = "/.netlify/functions/:splat"
  status = 200

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200
```

### **Step 3: Create Netlify Functions**
Create `netlify/functions/api/` directory and move your API routes there.

### **Step 4: Deploy**
```bash
netlify deploy --prod
```

## **Why Vercel is Recommended:**

✅ **Native Next.js Support** - Built by the creators of Next.js
✅ **Zero Config Needed** - Works out of the box
✅ **Automatic SSL** - HTTPS included
✅ **Global CDN** - Fast loading worldwide
✅ **Serverless Functions** - Your API routes work automatically
✅ **Environment Variables** - Easy management
✅ **Preview Deployments** - Test changes before going live
✅ **SQLite Support** - File system database works on Vercel

## **Post-Deployment Checklist:**

1. **Test your booking system** - Click "Book Session" buttons
2. **Verify API endpoints** - Check `/api/skills`, `/api/bookings`
3. **Test user authentication** - Sign up/login flow
4. **Check database operations** - Create bookings, manage credits
5. **Verify responsive design** - Test on mobile devices

## **Environment Variables Needed:**

```bash
# Required
DATABASE_URL=file:./dev.db
NEXTAUTH_SECRET=your-random-secret-here
NEXTAUTH_URL=https://your-domain.vercel.app
NEXT_PUBLIC_APP_URL=https://your-domain.vercel.app

# Optional (for development)
NODE_ENV=production
```

## **Troubleshooting:**

### **Database Issues:**
- Visit `/api/seed-demo` to initialize database
- Check Vercel function logs for errors

### **Build Errors:**
- Run `npm run build` locally first
- Check that all dependencies are installed

### **API Issues:**
- Verify environment variables are set correctly
- Check Vercel function logs

## **Next Steps:**

1. **Deploy to Vercel** (recommended)
2. **Set up custom domain** (optional)
3. **Configure analytics** (optional)
4. **Set up monitoring** (optional)

Your app will be live and working with full backend functionality! 🎉