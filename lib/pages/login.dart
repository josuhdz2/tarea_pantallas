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
          Inputs(),
          Buttons()
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
          decoration: const InputDecoration
          (
            border:OutlineInputBorder(),
            hintStyle: TextStyle
            (
              color: Colors.white
            ),
            hintText: "Email",
            prefixIcon: Icon
            (
              Icons.person,
              color: Colors.white,
              opticalSize: 15
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
        SizedBox
        (
          height: 20
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
            child: Text
            (
              "Acceder con Google"
            ),
          ),
        )
      ],
    );
  }
}