Map<String, String> code_string = {
  "aboutDialog": """void showAboutDialog({
        required BuildContext context,
        String? applicationName,
        String? applicationVersion,
        Widget? applicationIcon,
        String? applicationLegalese,
        List<Widget>? children,
        bool useRootNavigator = true,
        RouteSettings? routeSettings,
      }) {
        assert(context != null);
        assert(useRootNavigator != null);
        showDialog<void>(
          context: context,
          useRootNavigator: useRootNavigator,
          builder: (BuildContext context) {
        return AboutDialog(
          applicationName: applicationName,
          applicationVersion: applicationVersion,
          applicationIcon: applicationIcon,
          applicationLegalese: applicationLegalese,
          children: children,
        );
          },
          routeSettings: routeSettings,
        );
      }""",
  "absorbPointer": """ AbsorbPointer(
              absorbing: _absorbingOfIncrement,
              child: ElevatedButton(
                  onPressed: () {
                    _incrementCounter();
                    final snackbar = SnackBar(
                      content: Text(
                        'Button is Pressed.'
                      ),
                      duration: Duration(seconds: 1),
                      action: SnackBarAction(
                        label: "Close",
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), padding: EdgeInsets.all(16)),
                  child: Icon(
                    Icons.plus_one,
                    size: 30,
                  )),
            ),""",
  "animatedBuilder": """AnimatedBuilder(
            animation: rotateAnimation,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 20.0),
              child: Container(
                color: Theme.of(context).primaryColor,
                width: 125,
                height: 125,
                alignment: Alignment.center,
              ),
            ),
            builder: (context, child) => Transform.rotate(
              angle: rotateAnimation.value,
              child: child,
            ),
          ),""",
  "animatedIcon": """Widget _mountAnimatedIcon(AnimatedIconData icon) {
    AnimationController controller = AnimationController(
      vsync: this, 
      duration: Duration(seconds: 1)
    );
    return GestureDetector(
      onTap: () {
        if (controller.status == AnimationStatus.completed) {
          controller.reverse();
        } else {
          controller.forward();
        }
      },
      child: AnimatedIcon(
        icon: icon,
        size: 75.0,
        progress: controller,
      ),
    );
  }
}""",
  "animatedList": """AnimatedList(
                        key: ans == true ? key1 : key2,
                        initialItemCount: items.length,
                        itemBuilder: (context, index, animation) => ans == true
                            ? buildSizeItemWidget(
                                items[index], index, animation)
                            : buildScaleItemWidget(
                                items[index], index, animation),
                      ),""",
  "appBar": """AppBar(
        leading: Icon(Icons.info_sharp),
        title: Text("AppBar Widget Demo"),
        actions: [
          Icon(Icons.edit),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8),
            child: Icon(Icons.delete),
          )
        ],
      ),""",
  "card": """Widget buildRoundedCard() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rounded card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'This card is rounded',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      );""",
  "checkBoxListTile": """ CheckboxListTile(
          activeColor: Colors.blue,
          checkColor: Colors.white,
          tileColor: Colors.grey[700],
          title: const Text(
            'Flutter Awesome',
            style: TextStyle(color: Colors.white),
          ),
          onChanged: (bool? newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
          secondary: const FlutterLogo(),
          value: _isSelected,
          subtitle: Text(
            "I Love Flutter",
            style: TextStyle(color: Colors.white),
          ),
        ),""",
  "circularIndicator": """CircularProgressIndicator(
                color: Colors.red,
                value: _value / 100,
              ),""",
  "clipOval": """ClipOval(
                clipper: MyClipper(),
                child: ElevatedButton(
                  child: Text("Clipped Button "),
                  onPressed: () {},
                ),""",
  "clipRect": """ClipRect(
                  child: Align(
                alignment: Alignment.center,
                heightFactor: 0.6,
                widthFactor: 0.8,
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2020/09/26/14/27/sparrow-5604220_960_720.jpg"),
              )),""",
  "colourFiltered": """ColorFiltered(
          colorFilter: ColorFilter.mode(primaryColor, mode),
          child: Container(
            child: Transform.translate(
              offset: Offset(35, -25),
              child: Transform.rotate(
                angle: -pi / 0.55,
                child: Image.asset(
                  "assets/images/_product.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),""",
  "column": """Column(
                  mainAxisAlignment: _mainAxisAlignment!,
                  crossAxisAlignment: _crossAxisAlignment!,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Container(
                      color: Colors.red,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),""",
  "container": """Container(
                width: 100.0,
                height: 100.0,
                color: Theme.of(context).primaryColor,
              ),""",
  "cupertinoActionSheet": """showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      actions: [
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text1')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text2')),
                        CupertinoActionSheetAction(
                             onPressed: () {
                            Navigator.pop(context);
                          }, child: Text('Text3'))
                      ],

                    ));
              },""",
  "dataTable": """DataTable(
      onSelectAll: (b) {},
      sortColumnIndex: 1,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(
          label: Text(
            "First Name",
            style:
                new TextStyle(fontSize: 14.0, height: 1.2),
          ),
          numeric: false,
          onSort: (i, b) {
            print("\$i \$b");
            setState(() {
              names.sort((a, b) => a.firstName.compareTo(b.firstName));
            });
          },
          tooltip: "To display first name of the Name",
        ),
        DataColumn(
          label: Text(
            "Last Name",
            style:
                new TextStyle(fontSize: 14.0, height: 1.2),
          ),
          numeric: false,
          onSort: (i, b) {
            print("\$i \$b");
            setState(() {
              names.sort((a, b) => a.lastName.compareTo(b.lastName));
            });
          },
          tooltip: "To display last name of the Name",
        ),
      ],
      rows: names
          .map(
            (name) => DataRow(
              cells: [
                DataCell(
                  Text(
                    name.firstName,
                    style: new TextStyle(
                        fontSize: 14.0, height: 1.2),
                  ),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(
                    name.lastName,
                    style: new TextStyle(
                        fontSize: 14.0, height: 1.2),
                  ),
                  showEditIcon: false,
                  placeholder: false,
                )
              ],
            ),
          )
          .toList());""",
  "dialogBox": """AlertDialog(
      title: const Text('This is title'),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.arrow_back),
        ),
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Icon(
            Icons.done,
            color: Colors.green,
          ),
        ),
      ],
    );""",
  "dismissible": """Dismissible(
            key: UniqueKey(),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Swipe left or right to delete!",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  leading: Icon(Icons.keyboard_arrow_left),
                  subtitle: Text("Dismiss without background color"),
                ),
              ],
            ),
          ),""",
  "draggableScrollSheet": """DraggableScrollableSheet(
              maxChildSize: 0.7,
              minChildSize: 0.3,
              initialChildSize: 0.3,
              builder: (context, controller) {
                return _houseListView(controller);
              })""",
  "dropDownButton": """DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        hint: Text("Select any Item"),
                        value: valueChoose,
                        iconSize: 36,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        isExpanded: true,
                        onChanged: (newValue) {
                          if (newValue == 'Unselect') {
                            newValue = null;
                          }
                          setState(() {
                            valueChoose = newValue;
                          });
                        },
                        items: listItem.map(buildMenuItem).toList()),
                  ),""",
  "elevatedButton": """ElevatedButton(
                  onPressed: () => _message(context),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                  ),
                  child: Text("Elevated Button")),""",
  "expanded": """ Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expanded widget in Column',
                    ),
                    Container(
                      color: Colors.blue,
                      height: 80,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                        width: 100,
                        child: Center(
                          child: Text("Expanded"),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 80,
                      width: 100,
                    ),
                  ],
                ),""",
  "floatingActionButton": """FloatingActionButton(
                onPressed: () => _message(context),
                backgroundColor: Theme.of(context).primaryColor,
                tooltip: ("Hold to show tooltip"),
                child: Icon(
                  Icons.add,
                  size: 40.0,
                ),
              ),""",
  "formField": """Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field cannot be empty';
                            }
                            return null;
                          },
                          controller: userText,
                          decoration: InputDecoration(
                            labelText: 'Enter Username',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0, right: 22),
                        child: TextFormField(
                          controller: passText,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field cannot be empty';
                            }
                            if (value.length < 8) {
                              return 'Password length must be 8 or more';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Enter Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 38.0, right: 18, left: 18),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                loginval = true;
                              });
                            } else {
                              setState(() {
                                loginval = false;
                              });
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 38, right: 38),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      (loginval == true)
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Login Successful'),
                            )
                          : Text(''),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: [
                      Text(
                        'Input Instructions :-',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Username cannot be empty.\nPassword length must be 8 or more.',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),""",
  "FutureBuilder": """FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '\${snapshot.error} occured',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(url),
                        // child: Text(
                        //   '\$data',
                        //   style: TextStyle(
                        //     fontSize: 28,
                        //   ),
                        // ),
                      ),
                    );
                  }
                }
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              },
              future: callApi(),
            ),""",
  "gestureDetector": """GestureDetector(
              onTapUp: (details) => setState(() {
                _point = details.localPosition;
              }),
              onHorizontalDragUpdate: (details) => setState(() {
                if (details.delta.dx < 0) _size -= 5;
                if (details.delta.dx > 0) _size += 5;
                if (_size < 30) _size = 30;
                if (_size > 200) _size = 50;
              }),
              onVerticalDragUpdate: (details) => setState(() {
                if (details.delta.dy > 0.5) {
                  _colorShade += 100;
                }
                if (details.delta.dy < -0.5) {
                  _colorShade -= 100;
                }
                if (_colorShade <= 0) {
                  _colorShade = 900;
                  _colorIndex -= 1;
                  if (_colorIndex == -1) _colorIndex = widget.colors.length - 1;
                }

                if (_colorShade > 900) {
                  _colorShade = 100;
                  _colorIndex += 1;
                  _colorIndex %= widget.colors.length;
                }
                print("\$_colorShade || \$_colorIndex");
              }),
              onDoubleTap: () => setState(() {
                _turns += 1;
              }),
              child: Stack(
                children: [
                  Container(
                    height: 400,
                    color: widget.colors[_colorIndex][_colorShade],
                  ),
                  Positioned(
                    child: RotatedBox(
                      quarterTurns: _turns,
                      child: FlutterLogo(
                        size: _size,
                      ),
                    ),
                    left: _point.dx,
                    top: _point.dy,
                  )
                ],
              ),
            ),""",
  "gridList": """GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2.3,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
            ),
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
              Container(
                color: Colors.green,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
              Container(
                color: Colors.blue,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
              Container(
                color: Colors.yellow,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
            ],
          ),""",
  "hero": """Hero(
              tag: hashCode,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),""",
  "icon": """Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            Icons.ac_unit,
            color: Colors.blue[100],
            size: 50.0,
          ),
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
            size: 100.0,
          ),
          Icon(
            Icons.cloud,
            color: Colors.blue[500],
            size: 75.0,
          )
        ]),""",
  "ignorePointer": """IgnorePointer(
                    ignoring: (ignore == false) ? false : true,
                    child: Container(
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Red Box Tapped',
                                  style: TextStyle(fontSize: 20)),
                            ));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.width * 0.8,
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                      color: Colors.red,
                    ),
                  ),""",
  "image": """Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Image from assets:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset("assets/images/meme.png"),
              SizedBox(height: 15.0),
              Text(
                "Image from internet:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                image: NetworkImage(
                    "https://uploads-ssl.webflow.com/5ee12d8e99cde2e20255c16c/5ef24ca36ab1f5eda546e719_flutter-meme-guarantee-it.jpg"),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Image from file",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () async {
                  try {
                    final result = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['jpg', 'png'],
                    );

                    if (result != null) {
                      setState(() {
                        fileImageSelected = File(result.paths.first!);
                        isFileImageSelected = true;
                      });
                    }
                  } catch (e) {
                    throw "Platform Exception";
                  }
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red.withOpacity(0.3),
                  ),
                  child: isFileImageSelected
                      ? Image.file(
                          fileImageSelected!,
                          fit: BoxFit.cover,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Click here to pick a image",
                              style: const TextStyle(
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.upload,
                              color: Colors.white,
                            )
                          ],
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Usually we prefer to use memory image when we are working with web
              Text(
                "Image from memory",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red.withOpacity(0.3),
                ),
                child: memoryImage != null
                    ? Image.memory(
                        memoryImage,
                        fit: BoxFit.cover,
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
            ],
          ),""",
  "indexedStack": """IndexedStack(
        alignment: Alignment.center,
        index: index,
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Index:0',
                  style: TextStyle(fontSize: 16),
                ),
              )),
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.amber,
              child: Center(
                child: Text(
                  'Index:1',
                  style: TextStyle(fontSize: 16),
                ),
              )),
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Index:2',
                  style: TextStyle(fontSize: 16),
                ),
              )),
        ],
      ),""",
  "linearIndicator": """LinearProgressIndicator(
            color: Colors.red,
            //backgroundColor: Colors.white,
            value: _value / 100,
          ),""",
  "listTile": """ListTile(
                enabled: true,
                onTap: () {
                  showAlertDialog(context, "You have tapped the list Tile");
                },
                onLongPress: () {
                  showAlertDialog(
                      context, "You have Long Pressed the list Tile");
                },
                trailing: Icon(Icons.drag_indicator_sharp),
                subtitle: Text("this is the subtitle"),
                title: Text("This is the title"),
                // focusColor: Colors.white,
                // tileColor: Colors.white,
                leading: Icon(Icons.supervised_user_circle),
              ),""",
  "listWheelScrollView": """ListWheelScrollView(
        offAxisFraction: -0.4,
        useMagnifier: true,
        magnification: 1,
        diameterRatio: 2,
        itemExtent: 150,
        children: List<Widget>.generate(
          10,
          (index) => Container(
            height: 100,
            decoration: BoxDecoration(
              color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "Item \$index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ).toList(),
      ),""",
  "nestedScrollView": """NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Here goes your top header"),
                      ),
                      Placeholder(
                        fallbackHeight: 200,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TabBar(
                        tabs: _tabs
                            .map((String name) => Tab(text: name))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: _tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: SliverFixedExtentList(
                            itemExtent: 48.0,
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return ListTile(
                                  title: Text('Item \$index'),
                                );
                              },
                              childCount: 30,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),""",
  "opacity": """ Opacity(
                      opacity: 0.5,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://www.cnet.com/a/img/-qQkzFVyOPEoBRS7K5kKS0GFDvk=/940x0/2020/04/16/7d6d8ed2-e10c-4f91-b2dd-74fae951c6d8/bazaart-edit-app.jpg'),
                            fit: BoxFit.fill,
                          ),
                          // shape: BoxShape.circle,
                        ),
                        child: Text(""),
                        height: 200,
                        width: 200,
                        // color: Colors.red,
                      ),
                    ),""",
  "outlinedButton": """OutlinedButton(
                    onPressed: () => _message(context),
                    style: OutlinedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      side: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    child: Text("Outlined Button"))""",
  "pageView": """ PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: <Widget>[
          Center(
            child: Text(
                "This is the First Page. Please Swipe UP to see more pages",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center),
          ),
          Center(
            child: Text(
                "This is the Second Page. Please Swipe UP to see more pages",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center),
          ),
          Center(
            child: Text("This is the Third Page",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center),
          ),
        ],
      ),""",
  "refreshIndicator": """RefreshIndicator(
                child: ListView.builder(
                    itemCount: _data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          child: ListTile(
                            title: Text(
                              _data[index],
                              style: TextStyle(
                                fontWeight : FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                onRefresh: _refresh,
              ),""",
  "reOrderableListView": """ReorderableListView(
      children: <Widget>[
        for (int i = 0; i < _items.length; i++)
          ListTile(
            key: Key('\$i'),
            tileColor: _items[i].isOdd ? oddItemColor : evenItemColor,
            title: Text('Item \${_items[i]}'),
          )
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(
          () {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          },
        );
      },
    );""",
  "richText": """RichText(
                                textAlign: TextAlign.center,
                                softWrap: true,
                                textScaleFactor: 2,
                                textDirection: TextDirection.ltr,
                                text: TextSpan(

                                    text: 'Rich Text is a ',
                                    style: TextStyle(

                                        color: Colors.amber, fontSize: 28
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'lovely ',

                                          style: TextStyle(
                                              color: Colors.pinkAccent, fontSize: 30),

                                      ),
                                      TextSpan(text: 'sample ',
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                            color: Colors.redAccent, fontSize: 25),

                                      ),
                                      TextSpan(text: 'Widget ',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                            color: Colors.purpleAccent, fontSize: 35),

                                      )
                                    ]
                                ),
                              ),""",
  "row": """Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 85.0,
                ),
              ),
              Container(
                color: Colors.green,
                child: FlutterLogo(
                  size: 85.0,
                ),
              ),
              Container(
                color: Colors.blue,
                child: FlutterLogo(
                  size: 85.0,
                ),
              ),
              Container(
                color: Colors.yellow,
                child: FlutterLogo(
                  size: 85.0,
                ),
              ),
            ],
          ),""",
  "scrollbar": """Scrollbar(
                  thickness: 6,
                  radius: Radius.circular(10),
                  controller: list2,
                  isAlwaysShown: true,
                  child: ListView(
                    controller: list2,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      10,
                      (index) => Container(
                        height: 30,
                        width: 50,
                        color: Theme.of(context).colorScheme.primary,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      ),
                    ),
                  ),
                ),""",
  "sizedBox": """SizedBox(
                        height: (x == 0)
                            ? 400
                            : (x == 1)
                                ? 300
                                : 200,
                        width: (x == 0)
                            ? 400
                            : (x == 1)
                                ? 300
                                : 200,
                        child: Image.asset('assets/images/halloween.png')),""",
  "slider": """Slider(
                value: _sliderValue,
                min: SLIDER_MIN,
                max: SLIDER_MAX,
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),""",
  "sliverGrid": """CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Text(
              "Sliver Grid",
              style: TextStyle(fontSize: 100),
            )
          ])),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, ind) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (ind % 9)],
                  child: Text('grid item \$ind'),
                );
              }),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ))
        ],
      ),""",
  "sliverAppBar": """CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColor,
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.grey[600] : Colors.grey[500],
                  height: 70.0,
                  child: Center(
                    child: Text(
                      '\$index',
                      textScaleFactor: 3,
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),""",
  "sliverList": """CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Sliver Appbar"),
            flexibleSpace: FlutterLogo(
              size: 500,
            ),
            expandedHeight: 300,
            backgroundColor: Theme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  child: Container(
                    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Sliver List Item \$index",
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                );
              },
              childCount: 10, // 1000 list items
            ),
          ),
        ],
      ),""",
  "snackBar": """ElevatedButton(
                  child: Text("Open Snackbar"),
                  onPressed:(){
                    final snackBarDemo = SnackBar(
                        content:  Text("This is a SnackBar Demo !"),
                        duration: Duration(seconds:3),
                        action: SnackBarAction(label:"CLOSE",onPressed:(){})
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
                  }
              ),""",
  "spacer": """Row(
        children: [
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
          Spacer(),
          Container(
            width: 50,
            height: 30,
            color: Colors.red,
          ),
        ],
      ),""",
  "stack": """Stack(
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 400.0,
                ),
              ),
              Container(
                color: Colors.green,
                child: FlutterLogo(
                  size: 300.0,
                ),
              ),
              Container(
                color: Colors.blue,
                child: FlutterLogo(
                  size: 200.0,
                ),
              ),
              Container(
                color: Colors.yellow,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
            ],
          ),""",
  "streamBuilder":
      """StreamBuilder<double> buildSecondBuilder() => StreamBuilder<double>(
        initialData: amountOfMoney,
        stream: _controller.stream,
        builder: (context, snapshot) {
          final money = snapshot.data!.toStringAsFixed(2);
          return Padding(
            padding: EdgeInsets.all(16),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: Transform.translate(
                        offset: Offset(-20, 5),
                        child: Text(
                          "Changing the data using StreamCotroller.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 50,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          '\$' + money,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        amountOfMoney = amountOfMoney + 50;
                        _controller.sink.add(amountOfMoney);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        primary: Theme.of(context).primaryColor,
                      ),
                      child: Text('Increment Money',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
  Stream<double> getAmountOfMoney() => Stream<double>.periodic(
        Duration(seconds: 1),
        (count) => (amountOfMoney + count * 5),
      );
}""",
  "switch": """Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tap on the switch to toggle"
            ),
            Switch(value: _isOn, onChanged: _toggleSwitch),
          ],
        ),""",
  "table": """Table(
      columnWidths: <int, TableColumnWidth>{
        0: FlexColumnWidth(flex[0]),
        1: FlexColumnWidth(flex[1]),
        2: FlexColumnWidth(flex[2]),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(
        color: borderColor,
        width: borderWidth,
      ),
      children: [
        TableRow(children: [
          Text(
            "A",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "B",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "C",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
        ]),
        TableRow(children: [
          Text(
            "D",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "E",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "F",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
        ]),
        TableRow(children: [
          Text(
            "G",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "H",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "I",
            textAlign: textAlignment,
            style: TextStyle(fontSize: 22),
          ),
        ])
      ],
    );""",
  "text": """Center(
        heightFactor: 15,
        child: Text(
          "This is sample text.",
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),""",
  "textButton": """TextButton(
                onPressed: () => _message(context),
                style: TextButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  backgroundColor: Colors.white54
                ),
                child: Text("Text Button"),
              ),""",
  "textField": """TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(30.0))),
                prefixIcon: Icon(Icons.input),
                hintText: 'Input Here',
              ),
            )""",
  "toggleButton": """ToggleButtons(
           children: <Widget>[
            Icon(Icons.bluetooth),
            Icon(Icons.wifi),
            Icon(Icons.flash_on),
    ],
    isSelected: _isSelected,
    onPressed: (int index) {
            setState(() {
              _isSelected[index] = !_isSelected[index];
            });
    },
    color: Colors.grey,
                  selectedColor: Colors.red,
                  fillColor: Colors.lightBlueAccent,
                  borderColor: Colors.lightBlueAccent,
                  selectedBorderColor: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
  )""",
  "wrap": """ Wrap(
              direction: Axis.vertical,
              children: [
                buildButton(context, '1'),
                buildButton(context, '2'),
                buildButton(context, '3'),
                buildButton(context, '4'),
                buildButton(context, '5'),
              ],
            ),""",
  "transform": """Transform.rotate(
        angle: sliderVal / pi,
        origin: const Offset(0, 0),
        child: Container(
          height: 75,
          width: 75,
          color: Colors.red,
          child: Center(
            child: Text("Rotate"),
          ),
        ),
      ),""",
  "flexible": """ Row(
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.yellow,
                      height: 80,
                      width: 80,
                    )),
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          color: Colors.blueAccent,
                          height: 80,
                          width: 80,
                        )),
                    Flexible(
                      child: Container(
                        color: Colors.green,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ],
                ),""",
  "draggable": """Padding(
                      padding: const EdgeInsets.all(10),
                      child: Draggable<Color>(
                        child: Container(
                            width: 50,
                            height: 50,
                            color: DraggableSample._pallette[value]),
                        feedback: Container(
                            width: 100,
                            height: 100,
                            color: DraggableSample._pallette[value]),
                        childWhenDragging: Container(
                            width: 50, height: 50, color: Colors.grey),
                        data: DraggableSample._pallette[value],
                      ),
                    );
                  },
                  itemCount: DraggableSample._pallette.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: DragTarget<Color>(
                builder: (context, candidateData, rejectedData) => Container(
                  color: _currentColor,
                  child: Center(
                    child: Text(
                      "Drop Colors Here!!!",
                    ),
                  ),
                ),
                onAccept: (data) => setState(() {
                  _currentColor = data;
                }),
              ),
            )""",
  "cupertinoWidgets": """""",
  "autoComplete": """Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return _kOptions.where((String option) {
                return option.contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String selection) {
              print('You just selected \$selection');
            },
          ),""",
  "decoratedBox": """DecoratedBox(
                      position: DecorationPosition.background,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(
                          color: const Color(0xFF04D719),
                          style: BorderStyle.solid,
                          width: 50.0
                        )
                      ),
                    child: FlutterLogo()
                  )""",
  "clipPath": """ClipPath(
                  clipper: ClipPathClass(),
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    color: Theme.of(context).primaryColor,
                  ),
                ),""",
  "singleChildScrollView": """SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("With SingleChildScrollView"),
                SizedBox(height: 10),
                Container(
                    color: const Color(0xffeeee00),
                    width: 150.0,
                    height: 300.0,
                    child: Center(child: Text('Item 1'))),
                SizedBox(height: 10.0),
                Container(
                    color: const Color(0xffee0000),
                    width: 200.0,
                    height: 300.0,
                    child: Center(child: Text('Item 2'))),
                SizedBox(height: 10.0),
                Container(
                    color: const Color(0xff3fee00),
                    width: 100.0,
                    height: 400.0,
                    child: Center(child: Text('Item 3'))),
              ]),
        ),
      ),""",
  "error": """void Error() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(() { inDebug = true; return true; }());
    // In debug mode, use the normal error widget which shows
    // the error message:
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    // In release builds, show a yellow-on-blue message instead:
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Error!',
        style: const TextStyle(color: Colors.yellow),
        textDirection: TextDirection.ltr,
      ),
    );
  };
  // Here we would normally runApp() the root widget, but to demonstrate
  // the error handling we artificially fail:
  return runApp(ErrorWidgetImplementation());
}""",
  "coloredBox": """ ColoredBox(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Green Colored Box with Text"),
              )
          )""",
  "cupertinoActivityIndicator": """CupertinoActivityIndicator(
                radius: _radius,
                animating: _animating,
              ),""",
  "datePickerDialog": """selectDate(BuildContext context) async {
    DateTime? datePicker = await showDatePicker(
        context: context,
        initialDate: (datee==null) ? DateTime.now() : datee!,
        firstDate: DateTime(2001),
        lastDate: DateTime(2050)
        builder: (BuildContext context, Widget? child)
        {
            return Theme(data: ThemeData(
              primaryColor: Theme.of(context).primaryColor,
              primarySwatch: Colors.blueGrey,
            ), child: child!)
        }
        );   

         if (datePicker != null && datePicker != datee) {
      setState(() {
        datee = datePicker;
        ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Date Picked',
                                  style: TextStyle(fontSize: 20)),
                            ));
      });

    } 
  }""",
};
