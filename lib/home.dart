import 'package:flutter/material.dart';
import 'package:instagram_application/post.dart';
import 'package:instagram_application/user.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: PostList()
      )
    );
  }
}

// class StoryList extends StatelessWidget{
//   List<User> userList = List<User>();
//   @override
//   Widget build(BuildContext context) {
//     userList.add(User(username:"rndysteven", image:'assets/images/logo.jpg'));
//     userList.add(User(username:"rndysteven", image:'assets/images/logo.jpg'));
//     userList.add(User(username:"rndysteven", image:'assets/images/logo.jpg'));

//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       // scrollDirection: Axis.horizontal,
//       itemCount: userList.length,
//       itemBuilder: (context, index){
//         User user = userList[index];
//         return Material(
//           child :ListTile(
//             leading: Image(image: AssetImage(user.image),),
//           )
//         );
//       },
//     );
//   }
// }
// Post post = new Post();
class PostList extends StatelessWidget{
  @override
  List<Post> postList = List<Post>();
  Widget build(BuildContext context) {
    postList.add(Post(user:'rndysteven', image: 'assets/images/logo.jpg', desc:'Ohayo sekai good morning lord'));
    postList.add(Post(user:'rndysteven', image: 'assets/images/logo.jpg', desc:'Ohayo sekai good morning lord'));
    postList.add(Post(user:'rndysteven', image: 'assets/images/logo.jpg', desc:'Ohayo sekai good morning lord'));


    return ListView.builder(
      itemCount: postList.length,
      itemBuilder: (context, index){
        Post post = postList[index];
        return Material(
          child: ListTile(
            leading: Image(image: AssetImage(post.image),),
            title: Text(post.user),
            subtitle: Text(post.desc),
          )
        );
      }
    );
  }
}