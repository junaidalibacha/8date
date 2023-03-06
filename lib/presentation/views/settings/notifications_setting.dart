import '../../../app/index.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kText20('Notifications'),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          buildVerticleSpace(100),
          ListTile(
            leading: kText24('Enable all notification'),
            trailing: Switch(
                // thumb color (round icon)
                activeColor: Colors.grey,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.blueGrey.shade600,
                inactiveTrackColor: Colors.grey.shade400,
                splashRadius: 50.0,
                // boolean variable value
                value: true,
                // changes the state of the switch
                onChanged: (value) {}),
          ),
          ListTile(
            leading: kText24('Daily Match Reminder'),
            trailing: Switch(
                // thumb color (round icon)
                activeColor: Colors.grey,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.blueGrey.shade600,
                inactiveTrackColor: Colors.grey.shade400,
                splashRadius: 50.0,
                // boolean variable value
                value: true,
                // changes the state of the switch
                onChanged: (value) {}),
          ),
          ListTile(
            leading: kText24('New Messages'),
            trailing: Switch(
                // thumb color (round icon)
                activeColor: Colors.grey,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.blueGrey.shade600,
                inactiveTrackColor: Colors.grey.shade400,
                splashRadius: 50.0,
                // boolean variable value
                value: true,
                // changes the state of the switch
                onChanged: (value) {}),
          ),
        ],
      ),
    );
  }
}
