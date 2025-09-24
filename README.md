# Just Meta - Modern Meta Pixel GTM Template

A comprehensive Google Tag Manager (GTM) template for implementing Meta Pixel tracking with advanced features for 2025 and beyond.

## Features

### ✨ Core Functionality
- **Complete Meta Pixel Implementation** - Support for all standard Meta events
- **Advanced Matching** - Automatic SHA-256 hashing of user data for improved match rates
- **Consent Mode Integration** - Full GTM consent mode support for GDPR/CCPA compliance
- **CAPI Readiness** - Built-in support for Conversions API event deduplication
- **Cookie Handling** - Automatic _fbp and _fbc cookie management

### 📊 Supported Events
- **PageView** - Track page views
- **ViewContent** - Track content views with product data
- **AddToCart** - Track items added to cart
- **AddToWishlist** - Track wishlist additions
- **InitiateCheckout** - Track checkout initiation
- **AddPaymentInfo** - Track payment information addition
- **Purchase** - Track completed purchases with transaction data
- **Lead** - Track lead generation events
- **CompleteRegistration** - Track account registrations
- **Search** - Track site searches
- **Contact** - Track contact form submissions
- **CustomEvent** - Support for custom events

### 🔒 Privacy & Compliance
- **GTM Consent Mode** - Respects user consent preferences
- **Advanced Matching Controls** - Toggleable PII hashing
- **Regional Compliance** - Built for GDPR, CCPA, and DMA requirements
- **Test Mode Support** - Meta Events Manager integration for testing

### 🛠️ Development Features
- **Debug Support** - Test Event Code integration
- **Parameter Validation** - Built-in field validation
- **Error Handling** - Comprehensive error logging
- **Documentation** - Extensive inline documentation

## Installation

1. **Download** the template file (`template.tpl`)
2. **Import** into Google Tag Manager:
   - Go to Templates → Tag Templates
   - Click "New" → "Import"
   - Select the template file
   - Save and publish

## Configuration

### Basic Setup

#### Required Fields
- **Pixel ID** - Your Meta Pixel ID (e.g., "123456789012345")
- **Event Name** - Select from standard events or enter custom event

#### Event Parameters
Configure event-specific parameters:
- **Event ID** - Unique identifier for CAPI deduplication
- **Value** - Transaction value (for purchase events)
- **Currency** - ISO currency code (e.g., "USD")
- **Content IDs** - Product/content identifiers
- **Content Type** - Product category or content type
- **Num Items** - Number of items in the event

### Advanced Matching

Enable advanced matching to improve attribution:

#### User Data Fields (Auto-hashed with SHA-256)
- **Email** - User's email address
- **Phone** - Phone number in E.164 format
- **First Name** - User's first name
- **Last Name** - User's last name
- **City** - User's city
- **State** - User's state/province
- **ZIP Code** - User's postal code
- **Country** - User's country (ISO code)
- **External ID** - Your internal user identifier

All PII data is automatically hashed with SHA-256 before transmission.

### Cookie & Attribution

#### Automatic Parameters
- **FBP Cookie** - First-party cookie (_fbp) automatically included
- **FBC Cookie** - Click ID cookie (_fbc) automatically generated from fbclid
- **User Agent** - Client user agent for better matching

#### Manual Override
- **Custom FBP** - Override automatic _fbp value
- **Custom FBC** - Override automatic _fbc value

### Consent Mode

#### GTM Consent Integration
- **Ad Storage Consent** - Respects `ad_storage` consent state
- **Analytics Storage Consent** - Respects `analytics_storage` consent state
- **Consent Listener** - Automatically updates on consent changes

#### Consent Behavior
- **Granted** - Full pixel functionality with all parameters
- **Denied** - Minimal pixel functionality (configurable)
- **Unspecified** - Configurable default behavior

### CAPI Integration

Prepare events for Conversions API coordination:

#### Server-Side Parameters
- **Event Source URL** - Page URL for server events
- **Action Source** - Always set to "website"
- **Event ID** - Shared with browser events for deduplication
- **Server Event Time** - Unix timestamp for server events

### Testing & Debugging

#### Meta Events Manager
- **Test Event Code** - Connect to Meta Events Manager for testing
- **Event Validation** - Real-time event validation
- **Parameter Debugging** - Detailed parameter inspection

#### Debug Features
- **Console Logging** - Detailed console logs in debug mode
- **Parameter Validation** - Field-level validation and warnings
- **Error Reporting** - Comprehensive error handling

## Event Implementation Examples

### Purchase Event
```javascript
// GTM Data Layer Push
dataLayer.push({
  'event': 'meta_purchase',
  'meta_event_id': 'purchase_' + Date.now(),
  'meta_value': 99.99,
  'meta_currency': 'USD',
  'meta_content_ids': ['SKU123', 'SKU456'],
  'meta_content_type': 'product',
  'meta_num_items': 2
});
```

### Lead Event
```javascript
// GTM Data Layer Push
dataLayer.push({
  'event': 'meta_lead',
  'meta_event_id': 'lead_' + Date.now(),
  'meta_email': 'user@example.com', // Will be SHA-256 hashed
  'meta_phone': '+1234567890'       // Will be SHA-256 hashed
});
```

## CAPI Coordination

For server-side implementation, ensure event deduplication:

### Client-Side (This Template)
```javascript
// Generate unique event ID
const eventId = 'event_' + Date.now() + '_' + Math.random();

// Send to Meta Pixel (this template handles)
dataLayer.push({
  'event': 'meta_purchase',
  'meta_event_id': eventId,
  // ... other parameters
});
```

### Server-Side (Your Implementation)
```javascript
// Use same event ID for deduplication
const serverEvent = {
  event_name: 'Purchase',
  event_id: eventId, // Same ID as client-side
  action_source: 'website',
  event_source_url: 'https://yoursite.com/checkout',
  // ... other server parameters
};
```

## Best Practices

### Event Naming
- Use standard Meta event names when possible
- Keep custom event names descriptive and consistent
- Avoid special characters in event names

### Parameter Values
- Always include `event_id` for CAPI coordination
- Use consistent `content_ids` format across events
- Include `value` and `currency` for commerce events

### Privacy Compliance
- Enable consent mode for EU traffic
- Configure appropriate consent behavior
- Document data collection in privacy policy

### Testing
- Use Test Event Code during development
- Validate events in Meta Events Manager
- Test consent mode behavior
- Verify CAPI deduplication

## Troubleshooting

### Common Issues

#### Events Not Firing
1. Check GTM triggers
2. Verify Pixel ID format
3. Review consent mode settings
4. Check browser console for errors

#### Advanced Matching Issues
1. Verify PII data format
2. Check SHA-256 hashing
3. Review user data availability

#### Consent Mode Issues
1. Verify consent mode setup in GTM
2. Check consent state values
3. Review consent listener configuration

#### CAPI Deduplication Issues
1. Ensure identical `event_id` values
2. Check server-side implementation
3. Verify timing between client/server events

### Debug Tools
- **Meta Pixel Helper** - Browser extension for pixel validation
- **Meta Events Manager** - Server-side event validation
- **GTM Debug Mode** - Tag firing validation
- **Browser Console** - Error and debug logging

## Migration from v1.x

### Breaking Changes
- Template structure completely rebuilt
- New field naming convention
- Enhanced consent mode integration
- Updated permission requirements

### Migration Steps
1. **Export** current tag configuration
2. **Install** new template version
3. **Recreate** tags using new template
4. **Update** triggers and variables as needed
5. **Test** thoroughly before publishing

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.

## Support

- **GitHub Issues** - Report bugs and feature requests
- **Documentation** - This README and inline template documentation
- **Meta Developer Docs** - [Official Meta Pixel Documentation](https://developers.facebook.com/docs/facebook-pixel)

---

**Just Meta** - Streamlined Meta Pixel tracking for the modern web.