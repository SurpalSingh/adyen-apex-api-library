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
 * SepaDirectDebitDetails
 */
public class DefaultPaymentMethodDetails implements PaymentMethodDetails {
    /**
     * @return type
     */
    public String type { get; set; }

    public DefaultPaymentMethodDetails() {
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public static DefaultPaymentMethodDetails getExample() {
        DefaultPaymentMethodDetails defaultPaymentMethodDetails = new DefaultPaymentMethodDetails();
        defaultPaymentMethodDetails.type = '';
        return defaultPaymentMethodDetails;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof DefaultPaymentMethodDetails) {
            DefaultPaymentMethodDetails defaultPaymentMethodDetails = (DefaultPaymentMethodDetails) obj;
            return this.type == defaultPaymentMethodDetails.type;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (type == null ? 0 : System.hashCode(type));
        return hashCode;
    }
}
