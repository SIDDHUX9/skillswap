# 🚀 Vercel Deployment Checklist

## ✅ **Pre-Deployment Checks**

### **1. GitHub Repository**
- [ ] All code pushed to GitHub
- [ ] `.gitignore` includes `.env.local` ✅
- [ ] No sensitive data in repository ✅ (Security fix applied)
- [ ] Use `.env.example` as reference for required variables

### **2. Supabase Setup**
- [ ] Database schema created (`supabase-schema.sql`)
- [ ] Tables exist: users, skills, bookings, reviews, etc.
- [ ] RLS policies enabled
- [ ] Test connection works: `http://localhost:3000/api/test-supabase`

## 🔧 **Vercel Environment Variables**

### **Required Variables**
Add these in Vercel Dashboard → Settings → Environment Variables:

Get these values from your Supabase project settings:
- Go to https://supabase.com/dashboard/project/objodaaunfznwdrhkuub/settings/api
- Copy the Project URL and keys

```
SUPABASE_URL=your_supabase_project_url
SUPABASE_ANON_KEY=your_supabase_anon_key
SUPABASE_SERVICE_KEY=your_supabase_service_role_key
```

### **Optional Variables**
```
NEXTAUTH_SECRET=your-secret-key-here
NEXTAUTH_URL=https://your-domain.vercel.app
```

## 🚀 **Deployment Steps**

### **1. Import to Vercel**
1. Go to https://vercel.com/dashboard
2. Click "Add New" → "Project"
3. Import your GitHub repository
4. Click "Deploy"

### **2. Configure Environment Variables**
1. Go to Project Settings → Environment Variables
2. Add the 3 required variables above
3. Select "Production" environment
4. Click "Save"

### **3. Redeploy**
1. Go to Deployments tab
2. Click "Redeploy" or push new commit
3. Wait for deployment to complete

## 🧪 **Post-Deployment Tests**

### **Test Your Live App**
- [ ] Visit your Vercel URL
- [ ] Test user registration
- [ ] Test skill creation
- [ ] Test booking functionality
- [ ] Check Supabase dashboard for new data

### **Test API Endpoints**
- [ ] `https://your-domain.vercel.app/api/test-supabase`
- [ ] `https://your-domain.vercel.app/api/skills`
- [ ] `https://your-domain.vercel.app/api/view-users`

## 🎯 **Expected Results**

### **Successful Deployment**
- ✅ App loads without errors
- ✅ User registration works
- ✅ Booking system functions
- ✅ Data saves to Supabase
- ✅ No "supabaseKey is required" errors

### **Common Issues & Solutions**
- **Error: supabaseKey is required** → Check environment variables
- **Error: Database not found** → Run schema in Supabase
- **Error: CORS issues** → Check Supabase settings

## 📞 **Support**

If you encounter issues:
1. Check Vercel deployment logs
2. Verify environment variables
3. Test Supabase connection
4. Check browser console for errors

---

**Your app should work perfectly after following these steps!** 🎉