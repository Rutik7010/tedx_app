import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tedx_app/models/User.dart';

class AuthMethods{

  // Firebase auth, will use to get user info and registration and signing 
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference _userCollection = _firestore.collection("Users");

    // current user getter
  User getCurrentUser() {
    User currentUser;
    currentUser = _auth.currentUser!;
    return currentUser;
  }

  // gets auth state of user through out the life cycle of the app
  Stream<User?> get onAuthStateChanged {
    return _auth.idTokenChanges();
  }

  //sign in current user with email and password
  Future<User> handleSignInEmail(String email, String password) async {
    final UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);

    assert(userCredential != null);
    assert(await userCredential.user!.getIdToken() != null);
    final User currentUser = userCredential.user!;

    print('signInEmail succeeded: $currentUser');

    return currentUser;
  }

  // register new user with phone email password details
  Future<User> handleSignUp(name, email, password) async {
    final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    assert (userCredential != null);
    assert (await userCredential.user!.getIdToken() != null);
    await addDataToDb(userCredential.user!, name);
    return userCredential.user!;
  }

  // after sign up, add user data to firebase realtime database
  Future<void> addDataToDb(User currentUser, String username) async {
    
    UserM user = UserM(
        uId: currentUser.uid,
        email: currentUser.email!,
        name: username,
        profilePicLink: "sample", 
        phoneNo: 67867867678
    );

    _userCollection
        .doc(currentUser.uid)
        .set(user.toMap(user));
  }

  // Logs out current user from the application
  Future<void> logout() async {
    await _auth.signOut();
  }

}