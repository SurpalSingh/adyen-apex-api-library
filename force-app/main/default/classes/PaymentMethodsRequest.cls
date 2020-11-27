/*
 * Adyen Checkout API
 * Adyen Checkout API provides a simple and flexible way to initiate and authorise online payments. You can use the same integration for payments made with cards (including 3D Secure), mobile wallets, and local payment methods (for example, iDEAL and Sofort).\n\nThis API reference provides information on available endpoints and how to interact with them. To learn more about the API, visit [Checkout documentation](https://docs.adyen.com/checkout).\n\n## Authentication\nEach request to the Checkout API must be signed with an API key. For this, obtain an API Key from your Customer Area, as described in [How to get the API key](https://docs.adyen.com/user-management/how-to-get-the-api-key). Then set this key to the `X-API-Key` header value, for example:\n\n```\ncurl\n-H "Content-Type: application/json" \\n-H "X-API-Key: Your_Checkout_API_key" \\n...\n```\nNote that when going live, you need to generate a new API Key to access the [live endpoints](https://docs.adyen.com/development-resources/live-endpoints).\n\n## Versioning\nCheckout API supports versioning of its endpoints through a version suffix in the endpoint URL. This suffix has the following format: "vXX", where XX is the version number.\n\nFor example:\n```\nhttps://checkout-test.adyen.com/v64/payments\n```
 *
 * The version of the OpenAPI document: 64
 * Contact: support@adyen.com
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * PaymentMethodsRequest
 */
public class PaymentMethodsRequest {

   /**
     * List of payments methods to be presented to the shopper. To refer to payment methods, use their `paymentMethod.type` from [Payment methods overview](https://docs.adyen.com/payment-methods).\n\nExample: `"allowedPaymentMethods":["ideal","giropay"]`
     * @return allowedPaymentMethods
     */
    public List<String> allowedPaymentMethods { get; set; }

    /**
     * Get amount
     * @return amount
     */
    public OASAmount amount { get; set; }

    /**
     * The shopper\'s country code.
     * @return countryCode
     */
    public String countryCode { get; set; }

    /**
     * The merchant account identifier, with which you want to process the transaction.
     * @return merchantAccount
     */
    public String merchantAccount { get; set; }

    /**
     * The combination of a language code and a country code to specify the language to be used in the payment.
     * @return shopperLocale
     */
    public String shopperLocale { get; set; }

    /**
     * The shopper\'s reference to uniquely identify this shopper (e.g. user ID or account ID).\n> This field is required for recurring payments.
     * @return shopperReference
     */
    public String shopperReference { get; set; }

    public PaymentMethodsRequest() {
        allowedPaymentMethods = new List<String>();
    }

    public static PaymentMethodsRequest getExample() {
        PaymentMethodsRequest paymentMethodsRequest = new PaymentMethodsRequest();
          paymentMethodsRequest.allowedPaymentMethods = new List<String>{''};
          paymentMethodsRequest.amount = OASAmount.getExample();
          paymentMethodsRequest.countryCode = '';
          paymentMethodsRequest.merchantAccount = '';
          paymentMethodsRequest.shopperLocale = '';
          paymentMethodsRequest.shopperReference = '';
        return paymentMethodsRequest;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof PaymentMethodsRequest) {
            PaymentMethodsRequest paymentMethodsRequest = (PaymentMethodsRequest) obj;
            return this.allowedPaymentMethods == paymentMethodsRequest.allowedPaymentMethods
                && this.amount == paymentMethodsRequest.amount
                && this.countryCode == paymentMethodsRequest.countryCode
                && this.merchantAccount == paymentMethodsRequest.merchantAccount
                && this.shopperLocale == paymentMethodsRequest.shopperLocale
                && this.shopperReference == paymentMethodsRequest.shopperReference;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (allowedPaymentMethods == null ? 0 : System.hashCode(allowedPaymentMethods));
        hashCode = (17 * hashCode) + (amount == null ? 0 : System.hashCode(amount));
        hashCode = (17 * hashCode) + (countryCode == null ? 0 : System.hashCode(countryCode));
        hashCode = (17 * hashCode) + (merchantAccount == null ? 0 : System.hashCode(merchantAccount));
        hashCode = (17 * hashCode) + (shopperLocale == null ? 0 : System.hashCode(shopperLocale));
        hashCode = (17 * hashCode) + (shopperReference == null ? 0 : System.hashCode(shopperReference));
        return hashCode;
    }
}
