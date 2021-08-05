
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget{
  static String id='LoginScreen';
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey=GlobalKey<FormState>();
  final _form=GlobalKey<FormState>();
  final _social=GlobalKey<FormState>();


  bool passwordVisible= true;
         String? first_name ;
         String? last_name ;
         String? job_title ;
         String? company ;
         String? email ;
         String? cell_number ;
         String? landline ;
         String? address ;
         String? company_website ;
         String? facebook ;
         String? twitter ;
         String? linkedin ;
         String? other ;

  var myController = TextEditingController();


  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.chevron_left),onPressed: (){},color: Colors.black,),
         title:new Text('Create Your Business Card', textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 15),) ,
          toolbarHeight: 100,
        ),

      body: Center(
        child: Container(
          color: Color(0xf7efefef),
          height: double.infinity,
          ///////////
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(

              children: [
                SizedBox(height: 10,),
                Container(
                  child: Center(
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Icon(Icons.person_outline),
                              Text('Your photo'),
                            ],
                          ),
                          style: TextButton.styleFrom(
                            shape: new RoundedRectangleBorder(side: BorderSide(color: Colors.red,width: 1),borderRadius: BorderRadius.circular(5),),
                            minimumSize: Size(150, 150),
                            primary: Color(0xf5e02323),
                            backgroundColor: Color(0xf5eecccc),
                          ),
                        ),
                        Container(height: 150, child: VerticalDivider(color: Color(0xffcdcdcd),width: 40,)),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Icon(Icons.apartment),
                              Text('Company logo'),
                            ],
                          ),
                          style: TextButton.styleFrom(
                            shape: new RoundedRectangleBorder(side: BorderSide(color: Color(
                                0xf5e0a123),width: 1),borderRadius: BorderRadius.circular(5),),
                            minimumSize: Size(150, 150),
                            primary: Color(0xf5e0a123),
                            backgroundColor: Color(0xf5fdf7e5),
                          ),
                        ),

                      ],
                    ),
                  )
                ),
                SizedBox(height: 30,),
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf7ffffff),
                  ),
                  child: Form(
                    key: _formKey ,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Column(

                        children: [

                          TextFormField(
                            key: ValueKey('first_name'),
                            validator: (val){

                            },
                            onChanged: (value) => first_name = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "First Name*",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your first name",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('last_name'),
                            validator: (val){

                            },
                            onChanged: (value) => last_name = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Last Name*",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your Last name",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('job_title'),
                            validator: (val){

                            },
                            onChanged: (value) => job_title = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Job Tiltle",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your role",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('company'),
                            validator: (val){

                            },
                            onChanged: (value) => company = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Company",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your role",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),










                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf7ffffff),
                  ),
                  child: Form(
                    key: _form ,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Column(

                        children: [

                          TextFormField(
                            key: ValueKey('email'),
                            validator: (val){

                            },
                            onChanged: (value) => email = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Email*",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your email",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('cell_number'),
                            validator: (val){

                            },
                            onChanged: (value) => cell_number = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Cell number",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your phone number",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('landline'),
                            validator: (val){

                            },
                            onChanged: (value) => landline = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Landline number ",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your last name",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('address'),
                            validator: (val){

                            },
                            onChanged: (value) => address = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Address",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your role",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextFormField(
                            key: ValueKey('company_website'),
                            validator: (val){

                            },
                            onChanged: (value) => company_website = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Company website",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Please enter your role",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),










                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xf7ffffff),
                  ),
                  child: Form(
                    key: _social ,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Column(

                        children: [

                          TextFormField(
                            key: ValueKey('facebook'),
                            validator: (val){

                            },
                            onChanged: (value) => facebook = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Facebook*",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "facebook.com/username",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('twitter'),
                            validator: (val){

                            },
                            onChanged: (value) => twitter = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Twitter",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "twitter.com/username",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('linkedin'),
                            validator: (val){

                            },
                            onChanged: (value) => linkedin = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Linkedin number ",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "linkedin.com/username",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            key: ValueKey('other'),
                            validator: (val){

                            },
                            onChanged: (value) => other = value ,
                            decoration: new InputDecoration(
                              focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(
                                    0xffcdcdcd)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Color(0xffcdcdcd)),
                              ),
                              labelText: "Company website",
                              labelStyle: TextStyle(height:0.5,fontSize: 19,color: Color(0xff000000)),
                              fillColor: Colors.red,

                              hintText: "Other websites",
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xffcdcdcd)),


                            ),
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 20),





                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){

                  },
                  child: Text( 'Next'  ,style: TextStyle(fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    primary: Color(0xff928d8d),
                    onPrimary: Color(0xffffffff),
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),

                  ),


                ),
                SizedBox(height: 40,),

              ],
            ),

          ),

        ),
      )

    );
  }



}


