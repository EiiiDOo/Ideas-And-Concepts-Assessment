abstract class AuthRepository {
  Future<void> signInWithEmailAndPass(String email,String pass);
  Future<void> signOut();
}