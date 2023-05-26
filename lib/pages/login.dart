import 'package:flutter/material.dart';
import 'package:tarea1/widgets/background.dart';
class LoginPage extends StatefulWidget
{
  const LoginPage({ Key? key }) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        leading: IconButton
        (
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios)
        ),
        backgroundColor: const Color.fromRGBO(97, 54, 213, 1),
      ),
      body: Stack
      (
        children:
        const [
          Background(),
          LoginContent()
        ],
      ),
    );
  }
}
class LoginContent extends StatefulWidget
{
  const LoginContent({ Key? key }) : super(key: key);
  @override
  State<LoginContent> createState() => _LoginContentState();
}
class _LoginContentState extends State<LoginContent>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric
      (
        horizontal: 20
      ),
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        const [
          Texts(),
          SizedBox
          (
            height: 20
          ),
          Inputs(),
          SizedBox
          (
            height: 20
          ),
          Buttons(),
          SizedBox
          (
            height: 30
          ),
          Footer()
          //
        ],
      ),
    );
  }
}
class Texts extends StatelessWidget
{
  const Texts({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Column
    (
      children:
      const [
        Text
        (
          "Ingresa a tu cuenta para continuar",
          style: TextStyle
          (
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center
        ),
        SizedBox
        (
          height: 20
        ),
        Text
        (
          "Ingresa tu email y password para acceder a tu cuenta y poder conectar con los demas usuarios.",
          style: TextStyle
          (
            color: Colors.white,
            fontSize: 18
          ),
          textAlign: TextAlign.center
        )
      ],
    );
  }
}
class Inputs extends StatefulWidget
{
  const Inputs({ Key? key }) : super(key: key);
  @override
  State<Inputs> createState() => _InputsState();
}
class _InputsState extends State<Inputs>
{
  bool visible=true;
  @override
  Widget build(BuildContext context)
  {
    return Column
    (
      children:
      [
        TextFormField
        (
          cursorColor: Colors.white,
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle
          (
            color:Colors.white
          ),
          decoration: const InputDecoration
          (
            focusedBorder: OutlineInputBorder
            (
              borderSide: BorderSide
              (
                color: Colors.white,
                width: 2
              )
            ),
            enabledBorder: OutlineInputBorder
            (
              borderSide: BorderSide
              (
                width: 2,
                color: Color.fromRGBO(87, 0, 159, 1)
              )
            ),
            hintText: "Email",
            hintStyle: TextStyle
            (
              color: Colors.white
            ),
            prefixIcon: Icon
            (
              Icons.person,
              color: Colors.white,
              opticalSize: 15
            )
          )
        ),
        const SizedBox
        (
          height: 15
        ),
        TextFormField
        (
          obscureText: visible,//controla la visivilidad del 
          cursorColor: Colors.white,
          style: const TextStyle
          (
            color:Colors.white
          ),
          decoration: InputDecoration
          (
            focusedBorder: const OutlineInputBorder
            (
              borderSide: BorderSide
              (
                color: Colors.white,
                width: 2
              )
            ),
            enabledBorder: const OutlineInputBorder
            (
              borderSide: BorderSide
              (
                width: 2,
                color: Color.fromRGBO(87, 0, 159, 1)
              )
            ),
            hintText: "Password",
            hintStyle: const TextStyle
            (
              color:Colors.white
            ),
            prefixIcon: const Icon
            (
              Icons.key,
              color: Colors.white,
              opticalSize: 15,
            ),
            suffixIcon: IconButton
            (
              icon: Icon
              (
                visible ? Icons.visibility_off : Icons.visibility,
                color: Colors.white,
              ),
              onPressed: ()
              {
                setState(()
                {
                  visible=visible==true?false:true;
                });
              }
            )
          )
        )
      ],
    );
  }
}
class Buttons extends StatelessWidget
{
  const Buttons({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Column
    (
      children:
      [
        SizedBox
        (
          width: double.infinity,
          height: 50,
          child: ElevatedButton
          (
            onPressed: (){},
            style: const ButtonStyle
            (
              backgroundColor: MaterialStatePropertyAll<Color>( Color.fromRGBO(87, 0, 159, 1))
            ),
            child: const Text
            (
              "Ingresar"
            )
          ),
        ),
        const SizedBox
        (
          height: 15
        ),
        SizedBox
        (
          width: double.infinity,
          height: 50,
          child: ElevatedButton
          (
            onPressed: (){},
            style: const ButtonStyle
            (
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(198, 34, 239, 1))
            ),
            child: const Text
            (
              "Acceder con Google"
            ),
          ),
        )
      ],
    );
  }
}
class Footer extends StatelessWidget
{
  const Footer({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        SizedBox
        (
          height: 40,
          child: Image.asset('assets/logo.png')
        ),
        const SizedBox
        (
          width: 10,
        ),
        const Text
        (
          "LET'S PLAY!",
          style: TextStyle
          (
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black
          ),
        )
      ],
    );
  }
}