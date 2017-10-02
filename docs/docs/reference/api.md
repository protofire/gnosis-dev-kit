DApp Signup
===========

| HTTP VERB | ROUTE          |HEADERS    | QUERY PARAMS   |
|-----------|----------------|-----------|----------------|
|POST       | /alert/signup/ |None       | None           |


  * Request

     * callback: `String` | Optional
     > A valid callback url containing `{% auth-code %}` placeholder. This will be used in the confirmation
       email sent to the user. If no callback is provided, user will have to copy and paste the authentication code
       emailed.

     * email: `string`
     > User email address.

     * name: `object`
     > The DApp name.
 
     * Example
     > <pre><code>
	{
	   "callback":"https://alerts.gnosis.pm/signup/?auth-code={%auth-code%}",
	   "email":"noreply@gnosis.pm",
	   "name":"Multisig"
	}
     </code></pre>

   * Response
      * HTTP Status: `201 CREATED`


New alert creation
===========

| HTTP VERB | ROUTE          | HEADERS                   | QUERY PARAMS   |
|-----------|----------------|---------------------------|----------------|
|POST       | /alert/        |String: authentication code| None           |


  * Request

     * contract: `String`
     > A valid contract address.

     * abi: `Array`
     > A valid ABI array.

     * events: `Object` `Nullable`
     > A JSON object containing the events the alert will subscribe to. This must be compliant with the following structure:
       <pre><code>
       {
         "eventName": {
            "eventPropertyName": "eventPropertyValue"
         },
         ...
       }
       </code></pre>

     * Example
     > <pre><code>
	{
	   "contract":"0x45c9dcf4e0ecfbcf7930dcdd8ffd6995c80968f1",
	   "abi":[ .. a valid abi ..],
	   "events":{
	      "DailyLimitChange":null,
	      "Confirmation":null,
	      "Revocation":null,
	      "Submission":null,
	      "Deposit":null
	   }
	}
     </code></pre>

   * Response
      * HTTP Status: `201 CREATED`



Get Alert
===========

| HTTP VERB | ROUTE          | HEADERS                   | QUERY PARAMS    |
|-----------|----------------|---------------------------|-----------------|
| GET       | /alert/        |String: authentication code| String: contract|


   * Response
      * HTTP Status: `200 OK`
      * Data
      > <pre><code>
        {
           "eventName": {},
           ...
        }
        </code></pre>

     * Example
     > <pre><code>
	{
	   "DailyLimitChange":{ },
	   "Confirmation":{ },
	   "Revocation":{ },
	   "Submission":{ },
	   "Deposit":{ }
	}
     </code></pre>


Delete DApp and Alerts
===========

Deletes the DApp data along with its alerts.

| HTTP VERB | ROUTE          | HEADERS                   | QUERY PARAMS    |
|-----------|----------------|---------------------------|-----------------|
| DELETE    | /alert/        |String: authentication code|String: contract |


   * Response
      * HTTP Status: `200 OK`


