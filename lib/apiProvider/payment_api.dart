// import 'package:flutter/material.dart';


// class Payments{
// _pay(BuildContext context){
//   final snackBar_onFailure = SnackBar(content: Text('Transaction Failed :('));
//   final snackBar_onClosed = SnackBar(content: Text('Transaction Closed !'));
//   final _rave = RaveCardPayment(
//     isDemo: true,
//     encKey:"FLWSECK_TEST1e7c4b1a45a8",
//     publicKey: "FLWPUBK_TEST-c766039caa205c08f89f7fc98122344e-X",
//     transactionRef: "hvHPvKYaRuJLlJWSPWGGKUyaAfWeZKnm",
//     amount: 300000,
//     email: 'jdoe@gmail.com',
//     onSuccess: (response){
//       print('$response');
//       print('Transaction Successful');
//       if (mounted){
//         Scaffold.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Transaction Successful'),
//             backgroundColor: Colors.green,
//             duration: Duration(seconds: 5),
//           ),
//         );
//       }
//     },
//     onFailure: (err){
//       print('$err');
//       print('Transaction Failed');
//       Scaffold.of(context).showSnackBar(snackBar_onFailure);
//     },
//     onClosed: (){
//       print('Transaction Closed!');
//       Scaffold.of(context).showSnackBar(snackBar_onClosed);
//     },
//     context: context,
//   );
//   _rave.process();
// }
// }