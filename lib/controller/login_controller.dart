import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../view/util.dart';

class LoginController {
  //
  // CRIAR CONTA
  // Adiciona a conta de um novo usuário no serviço
  // Firebase Authentication
  //
  criarConta(context, nome, email, senha) {

  }

  //
  // LOGIN
  //
   login(context, email, senha) {

    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email, password: senha,
    ).then((resultado){

      sucesso(context,'Usuário autenticado com sucesso!');
    
    }).catchError((e){

      switch(e.code){
        case 'Invalid-credencial':
        erro(context, 'Email e/ou senha Incorreta');
        break;
        default:
          erro(context, 'ERRO: ${e.codde.toString()}');
      }
    
      erro(context,'ERRO: ${e.code.toString()}');

    });

  }

  //
  // ESQUECEU A SENHA
  //
  esqueceuSenha(context, String email) {

      if (email.isNotEmpty){

        FirebaseAuth.instance.sendPasswordResetEmail(
          email:email,
        );

      }else{
        erro(context, 'Favor Preencher o campo');
      }
  }

  //
  // LOGOUT
  //
  logout() {
  }

  //
  // ID do Usuário Logado
  //
  idUsuario() {
  }


}
