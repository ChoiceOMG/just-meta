___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Just Meta - Modern Meta Pixel",
  "categories": ["ADVERTISING", "REMARKETING", "CONVERSIONS"],
  "brand": {
    "id": "just_meta",
    "displayName": "Just Meta",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYPhfDwAChwGA60e6kgAAAABJRU5ErkJggg=="
  },
  "description": "A comprehensive Meta Pixel implementation with advanced matching, consent mode integration, CAPI readiness, and full 2025 compliance features.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pixelId",
    "displayName": "Meta Pixel ID",
    "simpleValueType": true,
    "help": "Your Meta Pixel ID (e.g., 123456789012345)",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^[0-9]{15,16}$"
        ]
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "eventName",
    "displayName": "Event Name",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "PageView",
        "displayValue": "PageView"
      },
      {
        "value": "ViewContent",
        "displayValue": "ViewContent"
      },
      {
        "value": "Search",
        "displayValue": "Search"
      },
      {
        "value": "AddToCart",
        "displayValue": "AddToCart"
      },
      {
        "value": "AddToWishlist",
        "displayValue": "AddToWishlist"
      },
      {
        "value": "InitiateCheckout",
        "displayValue": "InitiateCheckout"
      },
      {
        "value": "AddPaymentInfo",
        "displayValue": "AddPaymentInfo"
      },
      {
        "value": "Purchase",
        "displayValue": "Purchase"
      },
      {
        "value": "Lead",
        "displayValue": "Lead"
      },
      {
        "value": "CompleteRegistration",
        "displayValue": "CompleteRegistration"
      },
      {
        "value": "Contact",
        "displayValue": "Contact"
      },
      {
        "value": "CustomEvent",
        "displayValue": "Custom Event"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "PageView",
    "help": "Select the Meta event to track"
  },
  {
    "type": "TEXT",
    "name": "customEventName",
    "displayName": "Custom Event Name",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "eventName",
        "paramValue": "CustomEvent",
        "type": "EQUALS"
      }
    ],
    "help": "Enter custom event name (only alphanumeric characters and underscores)"
  },
  {
    "type": "GROUP",
    "name": "eventParameters",
    "displayName": "Event Parameters",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "eventId",
        "displayName": "Event ID",
        "simpleValueType": true,
        "help": "Unique identifier for CAPI event deduplication. Recommended for all events."
      },
      {
        "type": "TEXT",
        "name": "value",
        "displayName": "Value",
        "simpleValueType": true,
        "help": "Monetary value of the event (required for Purchase events)"
      },
      {
        "type": "TEXT",
        "name": "currency",
        "displayName": "Currency",
        "simpleValueType": true,
        "help": "ISO currency code (e.g., USD, EUR, GBP)",
        "defaultValue": "USD"
      },
      {
        "type": "TEXT",
        "name": "contentIds",
        "displayName": "Content IDs",
        "simpleValueType": true,
        "help": "Product/content IDs as JSON array string (e.g., [\"SKU123\", \"SKU456\"])"
      },
      {
        "type": "TEXT",
        "name": "contentType",
        "displayName": "Content Type",
        "simpleValueType": true,
        "help": "Product category or content type (e.g., \"product\", \"product_group\")"
      },
      {
        "type": "TEXT",
        "name": "numItems",
        "displayName": "Number of Items",
        "simpleValueType": true,
        "help": "Number of items in the event (for cart/purchase events)"
      },
      {
        "type": "TEXT",
        "name": "searchString",
        "displayName": "Search String",
        "simpleValueType": true,
        "help": "Search query string (for Search events)"
      },
      {
        "type": "TEXT",
        "name": "status",
        "displayName": "Status",
        "simpleValueType": true,
        "help": "Event status (for CompleteRegistration events)"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advancedMatching",
    "displayName": "Advanced Matching",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "enableAdvancedMatching",
        "checkboxText": "Enable Advanced Matching",
        "simpleValueType": true,
        "help": "Improve match rates by sending hashed user data to Meta"
      },
      {
        "type": "TEXT",
        "name": "email",
        "displayName": "Email",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "User's email address (will be SHA-256 hashed)"
      },
      {
        "type": "TEXT",
        "name": "phone",
        "displayName": "Phone",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "User's phone number in E.164 format (will be SHA-256 hashed)"
      },
      {
        "type": "TEXT",
        "name": "firstName",
        "displayName": "First Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "User's first name (will be SHA-256 hashed)"
      },
      {
        "type": "TEXT",
        "name": "lastName",
        "displayName": "Last Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "User's last name (will be SHA-256 hashed)"
      },
      {
        "type": "TEXT",
        "name": "city",
        "displayName": "City",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "User's city (will be SHA-256 hashed)"
      },
      {
        "type": "TEXT",
        "name": "state",
        "displayName": "State/Province",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "User's state or province (will be SHA-256 hashed)"
      },
      {
        "type": "TEXT",
        "name": "zipCode",
        "displayName": "ZIP/Postal Code",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "User's ZIP or postal code (will be SHA-256 hashed)"
      },
      {
        "type": "TEXT",
        "name": "country",
        "displayName": "Country",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "User's country (ISO code, will be SHA-256 hashed)"
      },
      {
        "type": "TEXT",
        "name": "externalId",
        "displayName": "External ID",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableAdvancedMatching",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "Your internal user identifier (will be SHA-256 hashed)"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "cookieSettings",
    "displayName": "Cookie & Attribution Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "autoFbp",
        "checkboxText": "Auto-include FBP cookie",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Automatically read and include _fbp cookie for better attribution"
      },
      {
        "type": "CHECKBOX",
        "name": "autoFbc",
        "checkboxText": "Auto-generate FBC from fbclid",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Automatically generate _fbc parameter from fbclid URL parameter"
      },
      {
        "type": "TEXT",
        "name": "customFbp",
        "displayName": "Custom FBP Value",
        "simpleValueType": true,
        "help": "Override automatic FBP with custom value"
      },
      {
        "type": "TEXT",
        "name": "customFbc",
        "displayName": "Custom FBC Value",
        "simpleValueType": true,
        "help": "Override automatic FBC with custom value"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "consentSettings",
    "displayName": "Consent Mode Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "enableConsentMode",
        "checkboxText": "Enable GTM Consent Mode Integration",
        "simpleValueType": true,
        "help": "Respect user consent preferences through GTM consent mode"
      },
      {
        "type": "CHECKBOX",
        "name": "requireAdStorageConsent",
        "checkboxText": "Require ad_storage consent",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "enableConsentMode",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "defaultValue": true,
        "help": "Only fire pixel when ad_storage consent is granted"
      },
      {
        "type": "SELECT",
        "name": "consentBehavior",
        "displayName": "Behavior when consent denied",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "no_tracking",
            "displayValue": "No tracking"
          },
          {
            "value": "minimal_tracking",
            "displayValue": "Minimal tracking (basic events only)"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "no_tracking",
        "enablingConditions": [
          {
            "paramName": "enableConsentMode",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "How to behave when user consent is denied"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "capiSettings",
    "displayName": "Conversions API (CAPI) Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "enableCapi",
        "checkboxText": "Prepare for CAPI coordination",
        "simpleValueType": true,
        "help": "Include additional parameters for server-side event coordination"
      },
      {
        "type": "TEXT",
        "name": "actionSource",
        "displayName": "Action Source",
        "simpleValueType": true,
        "defaultValue": "website",
        "enablingConditions": [
          {
            "paramName": "enableCapi",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "Source of the action (always 'website' for web events)"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "debugSettings",
    "displayName": "Testing & Debug Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "testEventCode",
        "displayName": "Test Event Code",
        "simpleValueType": true,
        "help": "Test event code from Meta Events Manager for testing"
      },
      {
        "type": "CHECKBOX",
        "name": "enableDebugMode",
        "checkboxText": "Enable debug logging",
        "simpleValueType": true,
        "help": "Log detailed information to browser console for debugging"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const sendPixel = require('sendPixel');
const injectScript = require('injectScript');
const getCookieValues = require('getCookieValues');
const getUrl = require('getUrl');
const parseUrl = require('parseUrl');
const isConsentGranted = require('isConsentGranted');
const addConsentListener = require('addConsentListener');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const callInWindow = require('callInWindow');
const createQueue = require('createQueue');
const Math = require('Math');
const JSON = require('JSON');
const Object = require('Object');
const makeString = require('makeString');
const sha256Sync = require('sha256Sync');
const getTimestampMillis = require('getTimestampMillis');

// Template data access
const pixelId = data.pixelId;
const eventName = data.eventName === 'CustomEvent' ? data.customEventName : data.eventName;
const enableDebugMode = data.enableDebugMode;

// Debug logging function
const debugLog = (message, obj) => {
  if (enableDebugMode) {
    if (obj) {
      log('[Just Meta Debug]', message, obj);
    } else {
      log('[Just Meta Debug]', message);
    }
  }
};

// Consent mode check
const checkConsent = () => {
  if (!data.enableConsentMode) {
    debugLog('Consent mode disabled, proceeding with full tracking');
    return 'granted';
  }

  const adStorageConsent = data.requireAdStorageConsent ?
    isConsentGranted('ad_storage') : true;

  if (!adStorageConsent) {
    debugLog('Consent denied for ad_storage');
    return data.consentBehavior === 'minimal_tracking' ? 'minimal' : 'denied';
  }

  debugLog('Consent granted for tracking');
  return 'granted';
};

// SHA-256 hashing function for PII
const hashPII = (value) => {
  if (!value || value === '') return null;
  const stringValue = makeString(value).toLowerCase().trim();
  if (stringValue === '') return null;
  return sha256Sync(stringValue, {outputEncoding: 'hex'});
};

// Build user data object for advanced matching
const buildUserData = () => {
  if (!data.enableAdvancedMatching) {
    debugLog('Advanced matching disabled');
    return {};
  }

  const userData = {};

  // Hash PII fields
  if (data.email) userData.em = hashPII(data.email);
  if (data.phone) userData.ph = hashPII(data.phone);
  if (data.firstName) userData.fn = hashPII(data.firstName);
  if (data.lastName) userData.ln = hashPII(data.lastName);
  if (data.city) userData.ct = hashPII(data.city);
  if (data.state) userData.st = hashPII(data.state);
  if (data.zipCode) userData.zp = hashPII(data.zipCode);
  if (data.country) userData.country = hashPII(data.country);
  if (data.externalId) userData.external_id = hashPII(data.externalId);

  // Add client user agent
  userData.client_user_agent = copyFromWindow('navigator.userAgent') || '';

  debugLog('Built user data object', userData);
  return userData;
};

// Get FBP cookie value
const getFbpValue = () => {
  if (data.customFbp) {
    debugLog('Using custom FBP value');
    return data.customFbp;
  }

  if (data.autoFbp) {
    const fbpCookies = getCookieValues('_fbp');
    const fbpValue = fbpCookies && fbpCookies.length > 0 ? fbpCookies[0] : null;
    debugLog('Retrieved FBP from cookie', fbpValue);
    return fbpValue;
  }

  return null;
};

// Get or generate FBC value
const getFbcValue = () => {
  if (data.customFbc) {
    debugLog('Using custom FBC value');
    return data.customFbc;
  }

  if (data.autoFbc) {
    // First check if _fbc cookie already exists
    const fbcCookies = getCookieValues('_fbc');
    if (fbcCookies && fbcCookies.length > 0) {
      debugLog('Retrieved FBC from cookie', fbcCookies[0]);
      return fbcCookies[0];
    }

    // Try to build FBC from fbclid URL parameter
    const urlParams = parseUrl(getUrl()).searchParams;
    const fbclid = urlParams.fbclid;

    if (fbclid) {
      const timestamp = Math.floor(getTimestampMillis() / 1000);
      const fbcValue = 'fb.1.' + timestamp + '.' + fbclid;
      debugLog('Generated FBC from fbclid', fbcValue);
      return fbcValue;
    }
  }

  debugLog('No FBC value available');
  return null;
};

// Build event parameters
const buildEventParameters = () => {
  const params = {};

  // Basic event parameters
  if (data.eventId) params.event_id = data.eventId;
  if (data.value) params.value = data.value;
  if (data.currency) params.currency = data.currency;
  if (data.contentIds) {
    try {
      params.content_ids = JSON.parse(data.contentIds);
    } catch (e) {
      debugLog('Error parsing content_ids JSON, using as string');
      params.content_ids = [data.contentIds];
    }
  }
  if (data.contentType) params.content_type = data.contentType;
  if (data.numItems) params.num_items = data.numItems;
  if (data.searchString) params.search_string = data.searchString;
  if (data.status) params.status = data.status;

  // Attribution parameters
  const fbpValue = getFbpValue();
  const fbcValue = getFbcValue();

  if (fbpValue) params.fbp = fbpValue;
  if (fbcValue) params.fbc = fbcValue;

  // CAPI parameters
  if (data.enableCapi) {
    params.event_source_url = getUrl();
    params.action_source = data.actionSource || 'website';
  }

  debugLog('Built event parameters', params);
  return params;
};

// Initialize Meta Pixel
const initializePixel = () => {
  const fbq = copyFromWindow('fbq');
  if (fbq) {
    debugLog('Meta Pixel already loaded');
    return;
  }

  debugLog('Initializing Meta Pixel script');

  // Create fbq function
  const fbqQueue = createQueue('fbq');
  setInWindow('fbq', fbqQueue);

  // Set script version
  callInWindow('fbq.push', ['set', 'version', '2.0']);

  // Inject Meta Pixel script
  const scriptUrl = 'https://connect.facebook.net/en_US/fbevents.js';

  injectScript(scriptUrl, () => {
    debugLog('Meta Pixel script loaded successfully');
  }, () => {
    debugLog('Error loading Meta Pixel script');
  });
};

// Send Meta Pixel event
const sendMetaEvent = (consentStatus) => {
  const fbq = copyFromWindow('fbq');
  if (!fbq) {
    debugLog('Meta Pixel not available');
    return;
  }

  // Initialize pixel with user data
  const userData = buildUserData();
  debugLog('Initializing pixel with user data');

  callInWindow('fbq', 'init', pixelId, userData);

  // Set test event code if provided
  if (data.testEventCode) {
    debugLog('Setting test event code', data.testEventCode);
    callInWindow('fbq', 'set', 'test_event_code', data.testEventCode);
  }

  // Track event based on consent status
  if (consentStatus === 'granted' || consentStatus === 'minimal') {
    const eventParams = buildEventParameters();

    // For minimal consent, remove some parameters
    if (consentStatus === 'minimal') {
      delete eventParams.fbp;
      delete eventParams.fbc;
      debugLog('Minimal tracking mode - removed attribution parameters');
    }

    debugLog('Tracking event', {eventName, eventParams});
    callInWindow('fbq', 'track', eventName, eventParams);
  }
};

// Main execution
const main = () => {
  debugLog('Just Meta template starting', {
    pixelId: pixelId,
    eventName: eventName,
    consentModeEnabled: data.enableConsentMode
  });

  // Check consent status
  const consentStatus = checkConsent();

  if (consentStatus === 'denied') {
    debugLog('Tracking blocked due to consent denial');
    data.gtmOnSuccess();
    return;
  }

  // Initialize pixel
  initializePixel();

  // Send event
  if (data.enableConsentMode) {
    // Set up consent listener for dynamic consent changes
    addConsentListener(['ad_storage'], (consentData) => {
      debugLog('Consent status changed', consentData);
      if (consentData.ad_storage === 'granted') {
        sendMetaEvent('granted');
      }
    });
  }

  // Send current event
  sendMetaEvent(consentStatus);

  debugLog('Just Meta template completed successfully');
  data.gtmOnSuccess();
};

// Execute main function
main();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_pixel",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.facebook.com/*"
              },
              {
                "type": 1,
                "string": "https://connect.facebook.net/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://connect.facebook.net/en_US/fbevents.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "_fbp"
              },
              {
                "type": 1,
                "string": "_fbc"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "fbq"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "navigator.userAgent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

[]


___NOTES___

Created on 2025-01-01 12:00:00
This template provides comprehensive Meta Pixel tracking with:
- All standard Meta events support
- Advanced matching with SHA-256 hashing
- GTM consent mode integration
- CAPI coordination readiness
- Automatic cookie handling (_fbp, _fbc)
- Test event code support
- Debug logging capabilities
- 2025 compliance features