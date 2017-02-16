function payWithPaystack(){
    var handler = PaystackPop.setup({
      key: ENV["PAYSTACK_PUBLIC_KEY"],
      email: 'Testing@email.com',
      amount: 1000,
      ref: "TEST TRANSACTION REFERENCE HERE",
      metadata: {
         custom_fields: [
            {
                display_name: "Mobile Number",
                variable_name: "mobile_number",
                value: "+2348012345678"
            }
         ]
      },
      callback: function(response){
          alert('success. transaction ref is ' + response.reference);
      },
      onClose: function(){
          alert('window closed');
      }
    });
    handler.openIframe();
  }
