import 'package:flutter/material.dart';
import 'package:tarea1/pages/login.dart';
import 'package:tarea1/widgets/background.dart';
class InitialPage extends StatelessWidget
{
  const InitialPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Stack
      (
        children:
        const [
          Background(),
          Content()
        ],
      )
    );
  }
}
class Content extends StatelessWidget
{
  const Content({ Key? key }) : super(key: key);
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          SizedBox
          (
            height: 100,
            child: Image.asset('assets/logo.png')
          ),
          const SizedBox
          (
            height: 20
          ),
          const Text
          (
            "Bienvenido a GameZone",
            style: TextStyle
            (
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            textAlign: TextAlign.center
          ),
          const SizedBox
          (
            height: 20
          ),
          const Text
          (
            "Un lugar para que compartas tus experiencias con otros juego y jugadores. Solo divercion y tecnologia.",
            style: TextStyle
            (
              fontSize: 18,
              color: Colors.white
            ),
            textAlign: TextAlign.center
          ),
          const SizedBox
          (
            height: 20
          ),
          SizedBox
          (
            width: double.infinity,
            height: 50,
            child: ElevatedButton
            (
              onPressed: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const LoginPage()));
              },
              style: const ButtonStyle
              (
                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(87, 0, 159, 1))
              ),
              child: const Text
              (
                "Iniciar",
                style: TextStyle
                (
                  color: Colors.white
                ),
              )
            ),
          )
        ]
      )
    );
  }
}