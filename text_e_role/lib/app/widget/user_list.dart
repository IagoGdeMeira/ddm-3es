import 'package:flutter/material.dart';
import 'package:text_e_role/app/application/user_application.dart';
import 'package:text_e_role/app/domain/dto/dto_user.dart';


class UserList extends StatelessWidget {
  const UserList({ super.key });

  CircleAvatar circleAvatar(String? url) {
    var avatar = const CircleAvatar(child: Icon(Icons.person));
    
    if(url != null) {
      var uri = Uri.tryParse(url);
      if(uri != null && uri.isAbsolute) avatar = CircleAvatar(backgroundImage: NetworkImage(url));
    }

    return avatar;
  }

  @override
  Widget build(BuildContext context) {
    var userApplication = UserApplication();
    var userList = userApplication.search();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Users'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {}
          )
        ],
      ),
        body: FutureBuilder(
          future: userList,
          builder: (BuildContext context, AsyncSnapshot<List<DTOUser>> futureUserList) {
            if (!futureUserList.hasData || futureUserList.data == null) {
              return const CircularProgressIndicator();
            } else {
              List<DTOUser> userList = futureUserList.data!;

              return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, i) {
                  var user = userList[i];
                  return ListTile(
                    leading: circleAvatar(user.avatarURL),
                    title: Text(user.displayName ?? user.username),
                    onTap: (){
                      //_back.goToDetails(context, contato);
                    },
                    subtitle: Text(user.biography??''),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          iconEditButton((){
                            // _back.goToForm(context, contato);
                          }),
                          iconRemoveButton(context, (){
                            // _back.remove(contato.id, context);
                          })
                        ],
                      ),
                    ),
                  );
                },
              );
            }
    }));
  }

  Widget iconEditButton(VoidCallback onPressed) {
    return IconButton(
      icon: const Icon(Icons.edit),
      color: const Color.fromARGB(255, 3, 5, 27),
      onPressed: onPressed
    );
  }

  Widget iconRemoveButton(BuildContext context, VoidCallback remove) {
    return IconButton(
      icon: const Icon(Icons.delete), 
      color: const Color.fromARGB(255, 190, 3, 3), 
      onPressed: () {
        showDialog(
          context: context, 
          builder:  (context) => AlertDialog(
            title: const Text('Delete'),
            content: const Text('Do you wish to delete this user?'),
            actions: [
              TextButton(
                child: const Text('NO'), 
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                onPressed: remove,
                child: const Text('YES'),
              ),
            ],
          )
        );
      }
    );
  }
}