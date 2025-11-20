#!/bin/bash

echo "🚀 QUICK DEPLOYMENT SCRIPT FOR VERCEL"
echo "======================================"

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Installing..."
    npm install -g vercel
fi

# Login to Vercel
echo "🔐 Please login to Vercel..."
vercel login

# Deploy to Vercel
echo "🚀 Deploying to Vercel..."
vercel --prod

echo "✅ Deployment complete!"
echo ""
echo "📝 NEXT STEPS:"
echo "1. Set up environment variables in Vercel dashboard:"
echo "   - DATABASE_URL=file:./dev.db"
echo "   - NEXTAUTH_SECRET=your-secret-here"
echo "   - NEXTAUTH_URL=https://your-app.vercel.app"
echo "   - NEXT_PUBLIC_APP_URL=https://your-app.vercel.app"
echo ""
echo "2. Visit your app and initialize database:"
echo "   https://your-app.vercel.app/api/seed-demo"
echo ""
echo "3. Test your booking system!"
echo ""
echo "🎉 Your app is now live!"