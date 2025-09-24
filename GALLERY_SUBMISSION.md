# GTM Template Gallery Submission Guide

## 📋 Pre-Submission Checklist

### Repository Structure ✅
- [x] `template.tpl` - Main template file
- [x] `metadata.yaml` - Template metadata
- [x] `README.md` - Comprehensive documentation
- [x] `LICENSE` - Apache 2.0 license (required)
- [x] `CONTRIBUTING.md` - Contribution guidelines

### Template Requirements ✅
- [x] Valid GTM template syntax
- [x] Proper permissions configuration
- [x] No custom HTML/JavaScript (sandboxed only)
- [x] Comprehensive field descriptions
- [x] Error handling implemented

### Documentation Requirements ✅
- [x] Clear installation instructions
- [x] Usage examples
- [x] Troubleshooting section
- [x] Privacy/compliance information
- [x] Version history

## 🚀 Submission Process

### Step 1: Prepare Your GitHub Repository

1. **Ensure your repository is public**
   ```bash
   # Your repo should be accessible at:
   https://github.com/peterjaffray/just-meta
   ```

2. **Verify all files are committed**
   ```bash
   git status
   git push origin feat/2025-meta-update
   ```

3. **Create a release tag**
   ```bash
   git tag -a v2.1.0 -m "Production-ready Meta Pixel template with GTM 2025 compliance"
   git push origin v2.1.0
   ```

### Step 2: Submit to Google

1. **Go to the GTM Template Gallery Submission Form**
   - URL: https://docs.google.com/forms/d/e/1FAIpQLSf0l3wkG0hKJCdJPT0pE1sobKsRZ1UwXzKZHyqiMRLqJoWXOg/viewform
   - Or search: "Submit a template to the Community Template Gallery"

2. **Fill out the submission form with:**

   **Template Name:** Just Meta - Modern Meta Pixel

   **Template Description:**
   ```
   A comprehensive Meta Pixel implementation for GTM with advanced features including:
   - All Meta standard events support
   - Advanced matching with automatic SHA-256 hashing
   - GTM consent mode with Meta consent API integration
   - CAPI readiness with proper event deduplication
   - Automatic _fbp/_fbc cookie handling
   - E.164 phone number formatting
   - Test event code support
   - 2025 GTM compatibility
   ```

   **GitHub Repository URL:**
   ```
   https://github.com/peterjaffray/just-meta
   ```

   **Categories:** (Select all that apply)
   - Advertising
   - Remarketing
   - Conversions
   - Analytics

   **Template Type:** Tag Template

   **Supported Platforms:** Web

   **Author Name:** [Your Name]

   **Author Email:** [Your Email]

   **Company/Organization:** Choice OMG

3. **Additional Information:**
   ```
   This template provides enterprise-grade Meta Pixel tracking with full CAPI support
   and GTM 2025 compliance. It includes critical fixes for proper event deduplication,
   consent mode integration, and comprehensive debugging capabilities.

   Key Features:
   - Production-tested with v2.1.0
   - Supports all 18 Meta standard events
   - Smart phone number formatting to E.164
   - Prevents duplicate pixel initialization
   - Ready for April 2025 GTM changes
   ```

### Step 3: After Submission

1. **Google Review Process** (typically 2-4 weeks)
   - Google will review your template for:
     - Security compliance
     - Code quality
     - Documentation completeness
     - Template functionality

2. **Respond to Feedback**
   - Google may request changes or clarifications
   - Monitor your submission email for updates

3. **Once Approved**
   - Your template appears in the GTM Template Gallery
   - Users can search and install directly from GTM interface
   - You'll maintain the GitHub repository for updates

## 📝 Alternative: Direct Installation (Before Gallery Approval)

Users can install your template immediately by:

1. **Manual Import in GTM:**
   ```
   1. Go to Templates → Tag Templates in GTM
   2. Click "New" → Import
   3. Enter URL: https://raw.githubusercontent.com/peterjaffray/just-meta/main/template.tpl
   4. Save and use the template
   ```

2. **Share Installation Link:**
   ```markdown
   ## Quick Installation

   ### Option 1: Import from URL
   - Template URL: https://raw.githubusercontent.com/peterjaffray/just-meta/main/template.tpl

   ### Option 2: Download and Import
   1. Download [template.tpl](https://github.com/peterjaffray/just-meta/blob/main/template.tpl)
   2. In GTM: Templates → Tag Templates → New → Import
   3. Upload the downloaded file
   ```

## 🔄 Maintenance & Updates

### Version Updates
When updating your template:

1. **Update version in metadata.yaml**
   ```yaml
   versions:
     - sha: [new-commit-sha]
       changeNotes: "v2.2.0 - [Description of changes]"
   ```

2. **Create new release on GitHub**
   ```bash
   git tag -a v2.2.0 -m "Version 2.2.0 release notes"
   git push origin v2.2.0
   ```

3. **Gallery Auto-Updates**
   - Once in gallery, Google periodically syncs with your GitHub
   - Major updates may require re-review

## 📊 Success Metrics

After gallery publication, monitor:
- Installation count (shown in gallery)
- GitHub stars and issues
- User feedback and feature requests
- Template performance in production

## 🆘 Support Resources

- **GTM Templates Documentation:** https://developers.google.com/tag-platform/tag-manager/templates
- **Gallery Submission Guide:** https://developers.google.com/tag-platform/tag-manager/templates/gallery
- **Template APIs Reference:** https://developers.google.com/tag-platform/tag-manager/templates/api
- **Community Forum:** https://www.googletagmanager.com/community/

## 📧 Contact

For issues or questions about this template:
- GitHub Issues: https://github.com/peterjaffray/just-meta/issues
- Documentation: https://github.com/peterjaffray/just-meta/blob/main/README.md